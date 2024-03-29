﻿using Castle.DynamicProxy;
using Core.CrossCuttingConcerns;
using Core.CrossCuttingConcerns.Logging;
using Core.CrossCuttingConcerns.Logging.Log4Net;
using Core.CrossCuttingConcerns.Logging.NLog;
using Core.Utilities.Interceptors;
using Core.Utilities.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Aspects.Autofac.Logging
{
    public class LogAspect : MethodInterception
    {
        //private LoggerServiceBase loggerServiceBase;

        //public LogAspect(Type loggerService)
        //{
        //    if (loggerService.BaseType != typeof(LoggerServiceBase))
        //    {
        //        throw new Exception(AspectMesseges.WrongLoggerType);
        //    }

        //    loggerServiceBase = (LoggerServiceBase)Activator.CreateInstance(loggerService);
        //}

        protected override void OnBefore(IInvocation invocation)
        {
           // Log.NLog(LogType.Info);
            //loggerServiceBase.Info(GetLogDetail(invocation));
        }

        protected override void OnException(IInvocation invocation, System.Exception e)
        {
            //LogDetail logDetail = GetLogDetail(invocation);
            //logDetail.ExceptionMessage = e.Message;
            //logDetail.LogDate = DateTime.Now;
            Log.NLog(LogType.Error, e);
            //loggerServiceBase.Error(logDetail);
        }

        //private LogDetail GetLogDetail(IInvocation invocation)
        //{
        //    var logParameters = new List<LogParameter>();

        //    for (int i = 0; i < invocation.Arguments.Length; i++)
        //    {
        //        logParameters.Add(new LogParameter
        //        {
        //            Name = invocation.GetConcreteMethod().GetParameters()[i].Name,
        //            Value = invocation.Arguments[i],
        //            Type = invocation.Arguments[i].GetType().Name

        //        });
        //    }

        //    var logDetail = new LogDetail
        //    {
        //        MethodName = invocation.Method.Name,
        //        LogParameters = logParameters
        //    };
        //    return logDetail;
        //}
    }
}
