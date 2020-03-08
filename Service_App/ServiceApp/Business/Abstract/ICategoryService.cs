﻿using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICategoryService
    {
        IDataResult<Category> GetById(int CategoryId);
        IDataResult<List<Category>> GetList();

        IResult Add(Request.Category.Create Category);
        IResult Delete(Category Category);
        IResult Update(Category Category);
    }
}
