using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICompanyService
    {
        Entities.Dto.Response.Company.Get GetByCompanyId(Entities.Dto.Request.Company.Get request);
        Entities.Dto.Response.Company.List GetByServiceId(Entities.Dto.Request.Company.List request);
        Entities.Dto.Response.Company.Edit Edit(Entities.Dto.Request.Company.Edit request);
    }
}
