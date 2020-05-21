using Core.DataAccess;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface ICategoryDal : IEntityRepository<Category>
    {
        Entities.Map.Category GetByCategoryId(int categoryId, int statusId);
        List<Entities.Map.Category> GetAllCategory(int statusId);
    }
}
