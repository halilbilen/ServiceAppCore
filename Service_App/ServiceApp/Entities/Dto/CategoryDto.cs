using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Dto
{
    public class CategoryDto
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public IFormFile Media { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
