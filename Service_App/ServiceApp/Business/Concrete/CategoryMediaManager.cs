using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CategoryMediaManager : ICategoryMediaService
    {
        public IResult Add(Entities.Dto.Request.CategoryMedia.Create Category)
        {
            throw new NotImplementedException();
        }

        public IResult Delete(CategoryMedia Category)
        {
            throw new NotImplementedException();
        }

        public IResult Update(CategoryMedia Category)
        {
            throw new NotImplementedException();
        }
    }
}
