using Business.Abstract;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Security;
using Core.Aspects.Autofac.Validation;
using Core.Extensions;
using Core.Utilities.AllCode;
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
        //[ValidationAspect(typeof(CategoryValidator), Priority = 2)]
        //[CacheRemoveAspect(_pattern: "IProductService.Get")]  Add islemine koy
        public IDataResult<Category> GetById(int categoryId)
        {
            return new SuccessDataResult<Category>(_categoryDal.Get(filter: p => p.CategoryId == categoryId && p.StatusId == Status.Active.ToInteger()));
        }

        // [SecuredOperation("Product.List,Admin,User")]
        //[CacheAspect(_duration: 10)]
        public IDataResult<List<Category>> GetList()
        {
            return new SuccessDataResult<List<Category>>(_categoryDal.GetAll(p => p.StatusId == Status.Active.ToInteger()).ToList());
        }
    }
}
