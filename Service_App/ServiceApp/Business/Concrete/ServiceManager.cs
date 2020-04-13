using Business.Abstract;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using DataAccess.Abstract;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Concrete
{
    public class ServiceManager : IServiceService
    {
        private IServiceDal _serviceDal;

        public ServiceManager(IServiceDal serviceDal)
        {
            _serviceDal = serviceDal;
        }

        public Entities.Dto.Response.Service.Edit Edit(Entities.Dto.Request.Service.Edit request)
        {
            throw new NotImplementedException();
        }

        public async Task<Entities.Dto.Response.Service.List> GetByCategoryId(Entities.Dto.Request.Service.List request)
        {
            int pageSize = 10;
            if (request.CategoryId <= 0)
            {
                return new Entities.Dto.Response.Service.List { ReturnCode = Value.CategoryNotFound.ToInteger(), ReturnMessage = Messages.CategoryNotFound };
            }
            var service = _serviceDal.GetAll(p => p.CategoryId == request.CategoryId && p.StatusId == Status.Active.ToInteger());
            if (service == null)
            {
                return new Entities.Dto.Response.Service.List { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }

            var count = await service.CountAsync();
            var items = await service.Skip((request.Page - 1) * pageSize).Take(pageSize).ToListAsync();
            var list = new Entities.Dto.Response.Service.List
            {
                Services = items,
                CurrentPage = request.Page,
                ItemsPerPage = pageSize,
                TotalItems = count,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return list;
        }

        public Entities.Dto.Response.Service.Search Search(Entities.Dto.Request.Service.Search request)
        {
            if (string.IsNullOrEmpty(request.Word))
            {
                return new Entities.Dto.Response.Service.Search { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }
            var service = _serviceDal.GetAll(p => p.StatusId == Status.Active.ToInteger() && EF.Functions.Like(p.Name, "%" + request.Word + "%"));
            if (service == null)
            {
                return new Entities.Dto.Response.Service.Search { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }
            var search = new Entities.Dto.Response.Service.Search
            {
                Services = service.ToList(),
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success

            };
            return search;
        }
    }
}
