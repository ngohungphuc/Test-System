﻿using System;
using System.IO;
using System.Runtime.CompilerServices;
using System.Web;

namespace TestSystemManagement.Models
{
    public class Logger
    {
        private string logAccessPath = "~/Log/AccessLog.txt";
        private string exceptionLogPath = "~/Log/ExceptionLog.txt";

        [MethodImpl(MethodImplOptions.Synchronized)]
        public void WriteAuthLog(string userName, string action)
        {
            string path = HttpContext.Current.Server.MapPath(logAccessPath);

            using (StreamWriter log = File.AppendText(path))
            {
                WriteLog(log, userName, action);
            }
        }

        public void WriteLog(StreamWriter log, string userName, string action)
        {
            log.WriteLine("Datetime: {0} - {1}", DateTime.Now.ToShortDateString(), DateTime.Now.ToLongTimeString());
            log.WriteLine("User " + userName + " :" + action);
            log.WriteLine("................................................");
            log.Close();
        }

        public void WriteExceptionLogMessage(StreamWriter log, string exception)
        {
            log.WriteLine("Datetime: {0} - {1}", DateTime.Now.ToShortDateString(), DateTime.Now.ToLongTimeString());
            log.WriteLine("Exception " + exception);
            log.WriteLine("................................................");
            log.Close();
        }

        public void WriteExceptionLog(string exception)
        {
            string path = HttpContext.Current.Server.MapPath(exceptionLogPath);

            using (StreamWriter log = File.AppendText(path))
            {
                WriteExceptionLogMessage(log, exception);
            }
        }
    }
}