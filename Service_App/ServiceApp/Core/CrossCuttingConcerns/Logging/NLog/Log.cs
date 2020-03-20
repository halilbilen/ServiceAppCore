using Core.CrossCuttingConcerns.Logging;
using Core.CrossCuttingConcerns.Logging.NLog;
using NLog;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.CrossCuttingConcerns
{
    public static class Log
    {
        public static readonly NLog.Logger _logger = LogManager.GetCurrentClassLogger();
        public static void NLog(LogType level, string message)
        {
            _logger.Log(LogLevel.FromString(level.ToString()), message);
        }

        public static void NLog(LogType level, System.Exception exception)
        {
            _logger.Log(LogLevel.FromString(level.ToString()), exception);
        }
    }
}
