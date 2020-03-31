using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Abstract
{
    public interface IServiceService
    {
        Task<Entities.Dto.Response.Service.List> GetByCategoryId(Entities.Dto.Request.Service.List request);
        Entities.Dto.Response.Service.Edit Edit(Entities.Dto.Request.Service.Edit request);
        Entities.Dto.Response.Service.Search Search(Entities.Dto.Request.Service.Search request);
    }
}
