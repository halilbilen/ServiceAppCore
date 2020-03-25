using Business.Abstract;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class ServiceManager : IServiceService
    {
        private IServiceDal _serviceDal;

        public ServiceManager(IServiceDal serviceDal)
        {
            _serviceDal = serviceDal;
        }

        public Entities.Dto.Response.Service.List GetList(Entities.Dto.Request.Service.List request)
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

            int count = service.Count();
            service = service.Skip((request.Page - 1) * pageSize).Take(pageSize);

            var list = new Entities.Dto.Response.Service.List
            {
                Services = service,
                PagingInfo = new Entities.Dto.Response.Paging()
                {
                    CurrentPage = request.Page,
                    ItemsPerPage = pageSize,
                    TotalItems = count
                }
            };
            return list;
        }
    }
}
