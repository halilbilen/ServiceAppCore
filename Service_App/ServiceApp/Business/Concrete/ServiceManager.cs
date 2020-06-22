using Business.Abstract;
using Core.Aspects.Autofac.Caching;
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

        [CacheAspect(_duration: 30)]
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

        //[CacheAspect(_duration: 30)]
        public Entities.Dto.Response.Service.Get GetServiceByCategoryId(Entities.Dto.Request.Service.Get request)
        {
            if (request.StatusId < 0) { request.StatusId = 1; }
            var services = _serviceDal.GetServiceByCategoryId(request.CategoryId, request.StatusId);
            if (services == null || services.Count <= 0)
            {
                return new Entities.Dto.Response.Service.Get { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }

            var entity = new Entities.Dto.Response.Service.Get()
            {
                Services = services,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return entity;
        }

        [CacheAspect(_duration: 30)]
        public Entities.Dto.Response.Service.Search Search(Entities.Dto.Request.Service.Search request)
        {
            if (string.IsNullOrEmpty(request.Word))
            {
                return new Entities.Dto.Response.Service.Search { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound };
            }
            var service = _serviceDal.GetList(p => p.StatusId == Status.Active.ToInteger() && EF.Functions.Like(p.Name, "%" + request.Word + "%"));
            if (service.Count <= 0 || service == null)
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
