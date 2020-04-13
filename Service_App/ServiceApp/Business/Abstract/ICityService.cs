using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICityService
    {
        Entities.Dto.Response.City.List GetByCountryName(Entities.Dto.Request.City.List request);
    }
}
