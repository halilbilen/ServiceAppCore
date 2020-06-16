using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace Core.Utilities.Messages
{
    public static class Messages
    {
        public static string WrongValidationType = "Wrong Validation type";
        public static string WrongLoggerType = "Wrong Logger type";

        public static string UserNotFound = "Kullanıcı Bulunamadi";
        public static string PasswordError = "Şifre Hatali";
        public static string SuccessLogin = "Giris Basarili";
        public static string UserAlreadyExists = "Kullanci Mevcut";
        public static string NameNotEmpty = "isim bos olamaz";
        public static string MailNotEmpty = "E-mail bos olamaz";
        public static string UserRegistered = "Kullanici  Kayit Basarili";
        public static string AccessTokenCreated = "Access Token Olusturuldu";
        public static string AuthorizationDenied = "Yetki yok";
        public static string NotMail = "Mail Degil";
        public static string PasswordLenght = "Password 6-100 uzunlugunda olmali";

        public static string ServiceNotFound = "Service Bulunamadi";

        public static string Success = "Success";


        public static string CityNotFound = "Sehir Bulunamadi";
        public static string CountryNotFound = "Ulke Bulunamadi";


        public static string CategoryAdded = "Category Eklendi";
        public static string CategoryDeleted = "Category Silindi";
        public static string CategoryUpdated = "Category Eklendi";
        public static string CategoryNotFound = "Category Bulunamadi";
        public static string CategoryExists = " Category Mevcut";
        public static string CategoryNameNotNull = "Kategori ismi bos olamaz.";
        public static string CategoryDescriptionNotNull = "Kategori aciklamasi bos olamaz.";

        public static string CompanyNotFound = "Sirket Bulunamadi";
        public static string CompanyNameNotNull = "Sirket ismi bos olamaz.";
        public static string CompanyExist = "Sirket Mevcut ";
        public static string CompanyEmailNotNull = "Sirket email bos olamaz.";
        public static string CompanyPhoneNotNull = "Sirket telefonu bos olamaz.";
        public static string CompanyNotUser = "Kullanici degil";
        public static string CompanyAdded = "Sirket eklendi";

        public static string CompanyCommentNotFound = "Ilk yorumu sen yap !";

        public static string CommentNotNull = "Yorum boş olamaz";

        public static string VoteNotNull = "Oy vermediniz.";

        public static string CommentAdded = "Yorum yapıldı";
    }
}

