using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface IServiceService
    {
        Entities.Dto.Response.Service.List GetList(Entities.Dto.Request.Service.List request);
    }
}
