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
        private readonly ICategoryDal _categoryDal;

        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }

        public Entities.Dto.Response.Category.Create Add(Entities.Dto.Request.Category.Create request)
        {
            if (request.Name == null) { return new Entities.Dto.Response.Category.Create { ReturnCode = Value.CategoryNameNotNull.ToInteger(), ReturnMessage = Messages.CategoryNameNotNull }; }
            if (request.Description == null) { return new Entities.Dto.Response.Category.Create { ReturnCode = Value.CategoryDescriptionNotNull.ToInteger(), ReturnMessage = Messages.CategoryDescriptionNotNull }; }
            var entity = _categoryDal.FirstByAsNoTracking(p => p.Name == request.Name);
            if (entity != null) { return new Entities.Dto.Response.Category.Create { ReturnCode = Value.CategoryExist.ToInteger(), ReturnMessage = Messages.CategoryExists }; }
            var category = new Entities.Concrete.Category()
            {
                Name = request.Name,
                Description = request.Description,
                CreatedUserId = 1,
                CreatedDate = DateTime.Now,
                StatusId = 1
            };
            _categoryDal.Add(category);
            return new Entities.Dto.Response.Category.Create { Name = request.Name, Description = request.Description, ReturnCode = Value.CategoryAdded.ToInteger(), ReturnMessage = Messages.CategoryAdded };
        }

        public Entities.Dto.Response.Category.Get Get(Entities.Dto.Request.Category.Get request)
        {
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

        // [SecuredOperation("Product.List,Admin,User")]
        //[ValidationAspect(typeof(CategoryValidator), Priority = 2)]
        //[CacheRemoveAspect(_pattern: "IProductService.Get")] Add islemine koy
        [CacheAspect(_duration: 10)]
        public Entities.Dto.Response.Category.List GetList(Entities.Dto.Request.Category.List request)
        {
            if (request.StatusId < 0) { request.StatusId = 1; }
            var categories = _categoryDal.GetAllCategory(request.StatusId);
            if (categories == null)
            {
                return new Entities.Dto.Response.Category.List { ReturnCode = 400, ReturnMessage = Messages.CategoryExists };
            }
            var entity = new Entities.Dto.Response.Category.List()
            {
                Categories = categories,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return entity;
        }
    }
}
