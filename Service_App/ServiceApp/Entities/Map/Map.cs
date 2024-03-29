﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Entities.Map
{
    public class Category
    {
        [Key]
        public int CategoryId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }

    public class City
    {
        [Key]
        public int CityId { get; set; }
        public string Name { get; set; }
    }

    public class Country
    {
        [Key]
        public int CountryId { get; set; }
        public string Name { get; set; }
    }

    public class Company
    {
        [Key]
        public int CompanyId { get; set; }
        public string Name { get; set; }
        public string About { get; set; }
        public string MediaPath { get; set; }
    }

    public class Service
    {
        [Key]
        public int ServiceId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string MediaPath { get; set; }
    }

    public class CompanyComment
    {
        [Key]
        public int CompanyCommentId { get; set; }
        public string AdSoyad { get; set; }
        public string CompanyName { get; set; }
        public string GsmNo { get; set; }
        public string Email { get; set; }
        public string Comment { get; set; }
        public int Vote { get; set; }
    }

    public class CompanyCommentByUserId
    {
        [Key]
        public int CompanyCommentId { get; set; }
        public int CompanyId { get; set; }
        public string Name { get; set; }
        public string MediaPath { get; set; }
        public int Vote { get; set; }
        public string Comment { get; set; }
    }
}
