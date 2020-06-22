using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration.Json;
namespace Entities.Concrete
{
    public partial class ServiceAppContext
    {
        public virtual DbSet<Map.Category> Categories { get; set; }
        public virtual DbSet<Map.City> Cities { get; set; }
        public virtual DbSet<Map.Country> Countries { get; set; }
        public virtual DbSet<Map.Company> Companies { get; set; }
        public virtual DbSet<Map.Service> Services { get; set; }
        public virtual DbSet<Map.CompanyComment> CompanyComments { get; set; }
        public virtual DbSet<Map.CompanyCommentByUserId> CompanyCommentByUserId { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json");
                IConfiguration configuration = builder.Build();
                optionsBuilder.UseMySql(configuration.GetConnectionString("DefaultConnection"));
            }
        }
    }
}
