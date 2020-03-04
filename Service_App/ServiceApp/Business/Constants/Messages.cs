using Core.Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Constants
{
    public class Messages
    {
        public static string UserNotFound = "Kullanıcı Bulunamadi";
        public static string PasswordError = "Şifre Hatali";
        public static string SuccessLogin = "Giris Basarili";
        public static string UserAlreadyExists = "Kullanci Mevcut";

        public static string NameNotEmpty = "Name bos olamaz";

        public static string UserRegistered = "Kullanici Basarili Kayit";
        public static string AccessTokenCreated = "Access Token Olusturuldu";
        public static string AuthorizationDenied = "Yetki yok";

        public static string CategoryAdded = "Category Eklendi";
        internal static string CategoryDeleted;
        internal static string CategoryUpdated;
    }
}
