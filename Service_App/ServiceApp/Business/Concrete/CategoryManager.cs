using Business.Abstract;
using Core.Aspects.Autofac.Caching;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using Core.Utilities.Results;
using DataAccess.Abstract;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class CategoryManager : ICategoryService
    {
        private ICategoryDal _categoryDal;

        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }

        public Entities.Dto.Response.Category.Get Get(Entities.Dto.Request.Category.Get request)
        {
            //var category = _categoryDal.Get(p => p.CategoryId == request.CategoryId && p.StatusId == Status.Active.ToInteger());
            var entity = _categoryDal.GetByCategoryId(request.CategoryId, request.StatusId);
            if (entity == null)
            {
                return new Entities.Dto.Response.Category.Get { ReturnCode = Value.CategoryNotFound.ToInteger(), ReturnMessage = Messages.CategoryNotFound };
            }
            var result = new Entities.Dto.Response.Category.Get()
            {
                Name = entity.Name,
                Description = entity.Description,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return result;
        }

        //[ValidationAspect(typeof(CategoryValidator), Priority = 2)]
        //[CacheRemoveAspect(_pattern: "IProductService.Get")] Add islemine koy
        public IDataResult<Entities.Concrete.Category> GetById(int categoryId)
        {
            return new SuccessDataResult<Entities.Concrete.Category>(_categoryDal.Get(filter: p => p.CategoryId == categoryId && p.StatusId == Status.Active.ToInteger()));
        }

        [CacheAspect(_duration: 10)]
        public Entities.Dto.Response.Category.List GetList(Entities.Dto.Request.Category.List request)
        {
            if (request.StatusId < 0) { request.StatusId = 1; }
            var categories = _categoryDal.GetAll(p => p.StatusId == request.StatusId);
            var entity = new Entities.Dto.Response.Category.List()
            {
                Categories = categories,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return entity;
        }

        // [SecuredOperation("Product.List,Admin,User")]
       // [CacheAspect(_duration: 10)]
    }
}
