using Business.Abstract;
using Business.Aspects.Autofac;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dto;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class CategoryManager : ICategoryService
    {
        private ICategoryDal categoryDal;

        public CategoryManager(ICategoryDal _categoryDal)
        {
            categoryDal = _categoryDal;
        }

        public IResult Add(Request.Category.Create request)
        {
            var categories = categoryDal.Get(filter: p => p.Name == request.Name);
            if (categories != null) { return new ErrorResult(Messages.ExistsCategory); }
            var c = new Category
            {
                Name = request.Name,
                Description = request.Description,
                CreatedUserId = 1,
                CreatedDate = DateTime.Now,
                ModifiedUserId = 0,
                ModifiedDate = DateTime.Now,
                StatusId = 1
            };
            categoryDal.Add(c);
            return new SuccessResult(Messages.CategoryAdded);
        }

        public IResult Delete(Category category)
        {
            categoryDal.Delete(category);
            return new SuccessResult(Messages.CategoryDeleted);
        }

        public IDataResult<Category> GetById(int categoryId)
        {
            return new SuccessDataResult<Category>(categoryDal.Get(filter: p => p.Id == categoryId));
        }

        [SecuredOperation("Product.List,Admin")]
        [CacheAspect(_duration: 10)]
        public IDataResult<List<Category>> GetList()
        {
            return new SuccessDataResult<List<Category>>(categoryDal.GetList().ToList());
        }

        public IResult Update(Category category)
        {
            categoryDal.Update(category);
            return new SuccessResult(Messages.CategoryUpdated);
        }
    }
}
