using Business.Abstract;
using Business.Aspects.Autofac;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
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

        public IResult Add(Category Category)
        {
            categoryDal.Add(Category);
            return new SuccessResult(Messages.CategoryAdded);
        }

        public IResult Delete(Category Category)
        {
            categoryDal.Delete(Category);
            return new SuccessResult(Messages.CategoryDeleted);
        }

        public IDataResult<Category> GetById(int CategoryId)
        {
            return new SuccessDataResult<Category>(categoryDal.Get(filter: p => p.Id == CategoryId));
        }

        [SecuredOperation("Product.List,Admin")]
        public IDataResult<List<Category>> GetList()
        {
            return new SuccessDataResult<List<Category>>(categoryDal.GetList().ToList());
        }

        public IResult Update(Category Category)
        {
            categoryDal.Update(Category);
            return new SuccessResult(Messages.CategoryUpdated);
        }
    }
}
