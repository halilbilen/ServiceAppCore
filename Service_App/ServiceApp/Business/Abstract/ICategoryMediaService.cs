using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICategoryMediaService
    {
        IResult Add(Entities.Dto.Request.CategoryMedia.Create Category);
        IResult Delete(CategoryMedia Category);
        IResult Update(CategoryMedia Category);
    }
}
