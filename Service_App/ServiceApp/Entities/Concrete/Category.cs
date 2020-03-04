using Core.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class Category : IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public byte[] Media { get; set; }
        public int CreatedUserId { get; set; }
        public string CreatedDate { get; set; }
        public int ModifiedUserId { get; set; }
        public string ModifiedDate { get; set; }
        public int StatusId { get; set; }
    }
}
