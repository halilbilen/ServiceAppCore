using Core.Entity;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Dto
{
    public class CategoryDto:IDto
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public IFormFile Media { get; set; }
    }
}
