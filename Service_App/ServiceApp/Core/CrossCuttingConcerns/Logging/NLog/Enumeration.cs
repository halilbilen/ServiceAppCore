using System;
using System.Collections.Generic;
using System.Text;

namespace Core.CrossCuttingConcerns.Logging.NLog
{
    public enum LogType
    {
        /// <summary>
        /// Turn off logging
        /// </summary>
        Off,

        /// <summary>
        /// Begin method X, end method X etc
        /// </summary>
        Trace,

        /// <summary>
        /// Executed queries, user authenticated, session expired
        /// </summary>
        Debug,

        /// <summary>
        /// Normal behavior like mail sent, user updated profile etc
        /// </summary>
        Info,

        /// <summary>
        /// Incorrect behavior but the application can continue
        /// </summary>
        Warn,

        /// <summary>
        /// For example application crashes / exceptions.
        /// </summary>
        Error,

        /// <summary>
        /// Highest level: important stuff down
        /// </summary>
        Fatal
    }
}
