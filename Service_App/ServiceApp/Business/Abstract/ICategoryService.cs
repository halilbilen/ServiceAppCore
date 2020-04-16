using Business.Concrete;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICategoryService
    {
        IDataResult<Category> GetById(int CategoryId);
        Entities.Dto.Response.Category.List GetList(Entities.Dto.Request.Category.List request);
        Entities.Dto.Response.Category.Get Get(Entities.Dto.Request.Category.Get request);
    }
}
