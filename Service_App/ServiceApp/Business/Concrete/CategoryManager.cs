using Business.Abstract;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Security;
using Core.Aspects.Autofac.Validation;
using Core.Utilities.Messages;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    //[LogAspect()]
    public class CategoryManager : ICategoryService
    {
        private ICategoryDal _categoryDal;

        public CategoryManager(ICategoryDal categoryDal)
        {
            _categoryDal = categoryDal;
        }

        [ValidationAspect(typeof(CategoryValidator), Priority = 2)]
        [CacheRemoveAspect(_pattern: "IProductService.Get")]
        public IResult Add(Entities.Dto.Request.Category.Create request)
        {
            var categories = _categoryDal.Get(filter: p => p.Name == request.Name);
            if (categories != null) { return new ErrorResult(Messages.ExistsCategory); }
            var c = new Category
            {
                Name = request.Name,
                Description = request.Description,
                CreatedUserId = 1
            };
            _categoryDal.Add(c);
            return new SuccessResult(Messages.CategoryAdded);
        }

        public IResult Delete(Category category)
        {
            _categoryDal.Delete(category);
            return new SuccessResult(Messages.CategoryDeleted);
        }

        public IDataResult<Category> GetById(int categoryId)
        {
            return new SuccessDataResult<Category>(_categoryDal.Get(filter: p => p.CategoryId == categoryId));
        }

        // [SecuredOperation("Product.List,Admin,User")]
        [CacheAspect(_duration: 10)]
        public IDataResult<List<Category>> GetList()
        {
            return new SuccessDataResult<List<Category>>(_categoryDal.GetList().ToList());
        }

        public IResult Update(Category category)
        {
            _categoryDal.Update(category);
            return new SuccessResult(Messages.CategoryUpdated);
        }
    }
}
