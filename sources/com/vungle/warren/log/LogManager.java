package com.vungle.warren.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.vungle.warren.Vungle;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.persistence.CacheManager;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public class LogManager {
    public static final boolean DEFAULT_CRASH_COLLECT_ENABLED = false;
    public static final int DEFAULT_CRASH_SEND_BATCH_MAX = 5;
    public static final boolean DEFAULT_LOGGING_ENABLED = false;
    static final String LOGGER_PREFS_FILENAME = "vungle_logger_prefs";
    static final String PREFS_CRASH_BATCH_MAX_KEY = "crash_batch_max";
    static final String PREFS_CRASH_COLLECT_FILTER_KEY = "crash_collect_filter";
    static final String PREFS_CRASH_REPORT_ENABLED_KEY = "crash_report_enabled";
    static final String PREFS_LOGGING_ENABLED_KEY = "logging_enabled";
    private static final String TAG = "LogManager";
    public static String sDefaultCollectFilter = "com.vungle";
    private String bundleID;
    private Context context;
    private int crashBatchMax;
    private String crashCollectFilter;
    private AtomicBoolean crashReportEnabled;
    private Map<String, String> customDataMap;
    private Executor ioExecutor;
    private boolean isCrashReportInit;
    private JVMCrashCollector jvmCrashCollector;
    private LogPersister logPersister;
    private LogSender logSender;
    private AtomicBoolean loggingEnabled;
    private SdkLoggingEventListener sdkLoggingEventListener;

    /* access modifiers changed from: package-private */
    public interface SdkLoggingEventListener {
        boolean isCrashReportEnabled();

        void saveLog(VungleLogger.LoggerLevel loggerLevel, String str, String str2, String str3, String str4);

        void sendPendingLogs();
    }

    public LogManager(Context context2, CacheManager cacheManager, VungleApiClient vungleApiClient, Executor executor) {
        this(context2, new LogPersister(cacheManager.getCache()), new LogSender(context2, vungleApiClient), executor);
    }

    private void sendCrashLogs() {
        File[] crashReportFiles;
        if (isCrashReportEnabled() && (crashReportFiles = this.logPersister.getCrashReportFiles(this.crashBatchMax)) != null && crashReportFiles.length != 0) {
            this.logSender.sendLogs(crashReportFiles);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void sendPendingLogs() {
        File[] pendingFiles;
        if (isLoggingEnabled() && (pendingFiles = this.logPersister.getPendingFiles()) != null && pendingFiles.length != 0) {
            this.logSender.sendLogs(pendingFiles);
        }
    }

    public void addCustomData(String str, String str2) {
        this.customDataMap.put(str, str2);
    }

    /* access modifiers changed from: package-private */
    public synchronized void initJvmCollector() {
        if (!this.isCrashReportInit) {
            if (isCrashReportEnabled()) {
                if (this.jvmCrashCollector == null) {
                    this.jvmCrashCollector = new JVMCrashCollector(this.sdkLoggingEventListener);
                }
                this.jvmCrashCollector.updateConfig(this.crashCollectFilter);
                this.isCrashReportInit = true;
            }
        }
    }

    public boolean isCrashReportEnabled() {
        return this.crashReportEnabled.get();
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled.get();
    }

    public void removeCustomData(String str) {
        this.customDataMap.remove(str);
    }

    public void saveLog(final VungleLogger.LoggerLevel loggerLevel, final String str, final String str2, final String str3, final String str4) {
        this.ioExecutor.execute(new Runnable() {
            /* class com.vungle.warren.log.LogManager.AnonymousClass1 */

            public void run() {
                String headerUa = VungleApiClient.getHeaderUa();
                String h = LogManager.this.customDataMap.isEmpty() ? null : new j60().h(LogManager.this.customDataMap);
                if (loggerLevel == VungleLogger.LoggerLevel.CRASH && LogManager.this.isCrashReportEnabled()) {
                    LogManager.this.logPersister.saveCrashLogData(str2, loggerLevel.toString(), str, "", headerUa, LogManager.this.bundleID, h, str3, str4);
                } else if (LogManager.this.isLoggingEnabled()) {
                    LogManager.this.logPersister.saveLogData(str2, loggerLevel.toString(), str, "", headerUa, LogManager.this.bundleID, h, str3, str4);
                }
            }
        });
    }

    public void sendSdkLogs() {
        sendCrashLogs();
        sendPendingLogs();
    }

    public void setLoggingEnabled(boolean z) {
        if (this.loggingEnabled.compareAndSet(!z, z)) {
            SharedPreferences.Editor edit = this.context.getSharedPreferences(LOGGER_PREFS_FILENAME, 0).edit();
            edit.putBoolean(PREFS_LOGGING_ENABLED_KEY, z);
            edit.apply();
        }
    }

    public void setMaxEntries(int i) {
        this.logPersister.setMaximumEntries(i);
    }

    public synchronized void updateCrashReportConfig(boolean z, String str, int i) {
        boolean z2 = true;
        boolean z3 = this.crashReportEnabled.get() != z;
        boolean z4 = !TextUtils.isEmpty(str) && !str.equals(this.crashCollectFilter);
        int max = Math.max(i, 0);
        if (this.crashBatchMax == max) {
            z2 = false;
        }
        if (z3 || z4 || z2) {
            SharedPreferences.Editor edit = this.context.getSharedPreferences(LOGGER_PREFS_FILENAME, 0).edit();
            if (z3) {
                this.crashReportEnabled.set(z);
                edit.putBoolean(PREFS_CRASH_REPORT_ENABLED_KEY, z);
            }
            if (z4) {
                if ("*".equals(str)) {
                    this.crashCollectFilter = "";
                } else {
                    this.crashCollectFilter = str;
                }
                edit.putString(PREFS_CRASH_COLLECT_FILTER_KEY, this.crashCollectFilter);
            }
            if (z2) {
                this.crashBatchMax = max;
                edit.putInt(PREFS_CRASH_BATCH_MAX_KEY, max);
            }
            edit.apply();
            JVMCrashCollector jVMCrashCollector = this.jvmCrashCollector;
            if (jVMCrashCollector != null) {
                jVMCrashCollector.updateConfig(this.crashCollectFilter);
            }
            if (z) {
                initJvmCollector();
            }
        }
    }

    LogManager(Context context2, LogPersister logPersister2, LogSender logSender2, Executor executor) {
        this.loggingEnabled = new AtomicBoolean(false);
        this.crashReportEnabled = new AtomicBoolean(false);
        this.crashCollectFilter = sDefaultCollectFilter;
        this.crashBatchMax = 5;
        this.isCrashReportInit = false;
        this.customDataMap = new ConcurrentHashMap();
        this.sdkLoggingEventListener = new SdkLoggingEventListener() {
            /* class com.vungle.warren.log.LogManager.AnonymousClass2 */

            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public boolean isCrashReportEnabled() {
                return LogManager.this.isCrashReportEnabled();
            }

            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public void saveLog(VungleLogger.LoggerLevel loggerLevel, String str, String str2, String str3, String str4) {
                LogManager.this.saveLog(loggerLevel, str, str2, str3, str4);
            }

            @Override // com.vungle.warren.log.LogManager.SdkLoggingEventListener
            public void sendPendingLogs() {
                LogManager.this.sendPendingLogs();
            }
        };
        this.context = context2;
        this.bundleID = context2.getPackageName();
        this.logSender = logSender2;
        this.logPersister = logPersister2;
        this.ioExecutor = executor;
        logPersister2.setSdkLoggingEventListener(this.sdkLoggingEventListener);
        Package r5 = Vungle.class.getPackage();
        if (r5 != null) {
            sDefaultCollectFilter = r5.getName();
        }
        SharedPreferences sharedPreferences = context2.getSharedPreferences(LOGGER_PREFS_FILENAME, 0);
        if (sharedPreferences != null) {
            this.loggingEnabled.set(sharedPreferences.getBoolean(PREFS_LOGGING_ENABLED_KEY, false));
            this.crashReportEnabled.set(sharedPreferences.getBoolean(PREFS_CRASH_REPORT_ENABLED_KEY, false));
            this.crashCollectFilter = sharedPreferences.getString(PREFS_CRASH_COLLECT_FILTER_KEY, sDefaultCollectFilter);
            this.crashBatchMax = sharedPreferences.getInt(PREFS_CRASH_BATCH_MAX_KEY, 5);
        }
        initJvmCollector();
    }
}
