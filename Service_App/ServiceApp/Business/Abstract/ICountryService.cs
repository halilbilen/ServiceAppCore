using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICountryService
    {
        Entities.Dto.Response.Country.List GetAll(Entities.Dto.Request.Country.List request);
    }
}
