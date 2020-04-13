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
        public static string UserRegistered = "Kullanici Basarili Kayit";

        public static string AccessTokenCreated = "Access Token Olusturuldu";
        public static string AuthorizationDenied = "Yetki yok";
        public static string CategoryAdded = "Category Eklendi";
        public static string CategoryDeleted = "Category Silindi";
        public static string CategoryUpdated = "Category Eklendi";
        public static string CategoryNotFound = "Category Bulunamadi";
        public static string ExistsCategory = "Mevcut Category";

        public static string NotMail = "Mail Degil";

        public static string PasswordLenght = "Password 6-100 uzunlugunda olmali";

        public static string ServiceNotFound = "Service Bulunamadi";

        public static string Success = "Success";

        public static string CompanyNotFound = "Sirket Bulunamadi";

        public static string CityNotFound = "Sehir Bulunamadi";

        public static string CountryNotFound = "Ulke Bulunamadi";
    }
}
