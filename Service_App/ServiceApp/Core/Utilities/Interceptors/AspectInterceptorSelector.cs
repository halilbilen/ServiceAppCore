﻿using Castle.DynamicProxy;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;
using System.Linq;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Log4Net.Loggers;
using Core.Aspects.Autofac.Validation;
using Core.Aspects.Autofac.Security;

namespace Core.Utilities.Interceptors
{
    public class AspectInterceptorSelector : IInterceptorSelector
    {
        public IInterceptor[] SelectInterceptors(Type type, MethodInfo method, IInterceptor[] interceptors)
        {
            var classAttributes = type.GetCustomAttributes<MethodInterceptionBaseAttiribute>(inherit: true).ToList();
            var methodAttributes = type.GetMethod(method.Name).GetCustomAttributes<MethodInterceptionBaseAttiribute>(inherit: true).ToList();
            classAttributes.AddRange(methodAttributes);
            //classAttributes.Add(new LogAspect(typeof(JsonFileLogger)));
            classAttributes.Add(new LogAspect());
            return classAttributes.OrderBy(x => x.Priority).ToArray();
        }
    }
}
