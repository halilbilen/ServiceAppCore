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

        public async Task<Entities.Dto.Response.Service.List> GetByCategoryId(Entities.Dto.Request.Service.List request)
        {
            int pageSize = 3;
            if (request.CategoryId <= 0)
            {
                return new Entities.Dto.Response.Service.List { ReturnCode = Value.CategoryNotFound.ToInteger(), ReturnMessage = Messages.CategoryNotFound };
            }
            var service = _serviceDal.GetAll(i => i.CategoryId == request.CategoryId);
            if (service == null)
            {
                return new Entities.Dto.Response.Service.List { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }

            var count = await service.CountAsync();
            var items = await service.Skip((request.Page - 1) * pageSize).Take(pageSize).ToListAsync();

            var list = new Entities.Dto.Response.Service.List
            {
                Services = items,
                PagingInfo = new Entities.Dto.Response.Paging()
                {
                    CurrentPage = request.Page,
                    ItemsPerPage = pageSize,
                    TotalItems = count
                },
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return list;
        }
    }
}
