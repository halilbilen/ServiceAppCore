using Castle.DynamicProxy;
using Core.Utilities.Interceptors;
using Core.Utilities.IoC;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.DependencyInjection;
using Core.Extensions;
using Core.Utilities.Messages;
using Core.CrossCuttingConcerns;
using Core.CrossCuttingConcerns.Logging.NLog;

namespace Core.Aspects.Autofac.Security
{
    public class SecuredOperation : MethodInterception
    {
        private string[] roles;
        private IHttpContextAccessor httpContextAccessor;
        public SecuredOperation(string _roles)
        {
            roles = _roles.Split(',');
            httpContextAccessor = ServiceTool.serviceProvider.GetService<IHttpContextAccessor>();
        }

        protected override void OnBefore(IInvocation invocation)
        {
            var roleClaims = httpContextAccessor.HttpContext.User.ClaimRoles();
            foreach (var role in roles)
            {
                if (roleClaims.Contains(role))
                {
                    return;
                }
            }
            Exception e = new Exception(Messages.AuthorizationDenied);
            Log.NLog(LogType.Error, e.Message);
            throw e;
        }
    }
}
