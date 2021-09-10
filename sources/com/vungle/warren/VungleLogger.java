package com.vungle.warren;

import androidx.annotation.Keep;
import com.vungle.warren.log.LogManager;

public class VungleLogger {
    public static final int LOGGER_MAX_ENTRIES = 100;
    private static final String TAG = "VungleLogger";
    private static final VungleLogger _instance = new VungleLogger();
    private LogManager logManager;
    private LoggerLevel loggingLevel = LoggerLevel.DEBUG;

    @Keep
    public enum LoggerLevel {
        DEBUG(0, "debug"),
        INFO(1, "info"),
        WARNING(2, "warn"),
        ERROR(3, "error"),
        CRASH(4, "crash");
        
        private int level;
        private String levelString;

        private LoggerLevel(int i, String str) {
            this.level = i;
            this.levelString = str;
        }

        public String toString() {
            return this.levelString;
        }
    }

    private VungleLogger() {
    }

    public static void addCustomData(String str, String str2) {
        LogManager logManager2 = _instance.logManager;
        if (logManager2 != null) {
            logManager2.addCustomData(str, str2);
        }
    }

    public static void debug(String str, String str2) {
        log(LoggerLevel.DEBUG, str, str2);
    }

    public static void error(String str, String str2) {
        log(LoggerLevel.ERROR, str, str2);
    }

    public static void info(String str, String str2) {
        log(LoggerLevel.INFO, str, str2);
    }

    private static void log(LoggerLevel loggerLevel, String str, String str2) {
        VungleLogger vungleLogger = _instance;
        LogManager logManager2 = vungleLogger.logManager;
        if (logManager2 != null && logManager2.isLoggingEnabled() && loggerLevel.level >= vungleLogger.loggingLevel.level) {
            vungleLogger.logManager.saveLog(loggerLevel, str, str2, null, null);
        }
    }

    public static void removeCustomData(String str) {
        LogManager logManager2 = _instance.logManager;
        if (logManager2 != null) {
            logManager2.removeCustomData(str);
        }
    }

    static void setupLoggerWithLogLevel(LogManager logManager2, LoggerLevel loggerLevel, int i) {
        VungleLogger vungleLogger = _instance;
        vungleLogger.loggingLevel = loggerLevel;
        vungleLogger.logManager = logManager2;
        logManager2.setMaxEntries(i);
    }

    public static void warn(String str, String str2) {
        log(LoggerLevel.WARNING, str, str2);
    }
}
