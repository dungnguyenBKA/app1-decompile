package com.vungle.warren.log;

import android.util.Log;
import com.vungle.warren.log.LogManager;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

/* access modifiers changed from: package-private */
public class LogPersister {
    private static final String SDK_CRASH_LOG_FILE_PATTERN = "crash_";
    private static final String SDK_LOGS_DIR = "sdk_logs";
    private static final String SDK_LOG_FILE_CRASH = "_crash";
    private static final String SDK_LOG_FILE_PATTERN = "log_";
    private static final String SDK_LOG_FILE_PENDING = "_pending";
    private static final String TAG = "LogPersister";
    private int entryCount;
    private LogManager.SdkLoggingEventListener listener;
    private File logDir;
    private File logFile;
    private int maximumEntries = 100;

    LogPersister(File file) {
        if (file != null) {
            File orCreateLogDir = getOrCreateLogDir(file);
            this.logDir = orCreateLogDir;
            if (orCreateLogDir != null) {
                this.logFile = getOrCreateLogFile(orCreateLogDir);
            }
        }
    }

    private File createFileOrDirectory(File file, String str, boolean z) {
        boolean z2;
        File file2 = new File(file, str);
        if (file2.exists()) {
            z2 = true;
        } else if (!z) {
            try {
                z2 = file2.createNewFile();
            } catch (IOException e) {
                Log.e(TAG, "", e);
                z2 = false;
            }
        } else {
            z2 = file2.mkdir();
        }
        if (z2) {
            return file2;
        }
        return null;
    }

    private static String getDateText(long j) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date(j));
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0022 A[SYNTHETIC, Splitter:B:16:0x0022] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static int getFileLineCount(java.lang.String r3) {
        /*
            r0 = 0
            java.io.LineNumberReader r1 = new java.io.LineNumberReader     // Catch:{ Exception -> 0x0026, all -> 0x001f }
            java.io.FileReader r2 = new java.io.FileReader     // Catch:{ Exception -> 0x0026, all -> 0x001f }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0026, all -> 0x001f }
            r1.<init>(r2)     // Catch:{ Exception -> 0x0026, all -> 0x001f }
        L_0x000b:
            java.lang.String r3 = r1.readLine()     // Catch:{ Exception -> 0x001d, all -> 0x001a }
            if (r3 == 0) goto L_0x0012
            goto L_0x000b
        L_0x0012:
            int r3 = r1.getLineNumber()     // Catch:{ Exception -> 0x001d, all -> 0x001a }
            r1.close()     // Catch:{ Exception -> 0x002c }
            goto L_0x002c
        L_0x001a:
            r3 = move-exception
            r0 = r1
            goto L_0x0020
        L_0x001d:
            r0 = r1
            goto L_0x0026
        L_0x001f:
            r3 = move-exception
        L_0x0020:
            if (r0 == 0) goto L_0x0025
            r0.close()     // Catch:{ Exception -> 0x0025 }
        L_0x0025:
            throw r3
        L_0x0026:
            r3 = -1
            if (r0 == 0) goto L_0x002c
            r0.close()
        L_0x002c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.log.LogPersister.getFileLineCount(java.lang.String):int");
    }

    private File getOrCreateLogDir(File file) {
        File createFileOrDirectory = createFileOrDirectory(file, SDK_LOGS_DIR, true);
        if (createFileOrDirectory != null && createFileOrDirectory.exists()) {
            return createFileOrDirectory;
        }
        Log.e(TAG, "Failed to create vungle logs dir");
        return null;
    }

    private boolean renameFile(File file, String str) {
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        File file2 = new File(this.logDir, str);
        if (file2.exists()) {
            return false;
        }
        return file.renameTo(file2);
    }

    /* access modifiers changed from: package-private */
    public File[] getCrashReportFiles(int i) {
        File file = this.logDir;
        if (file == null) {
            Log.w(TAG, "No log cache dir found.");
            return null;
        }
        File[] listFiles = file.listFiles(new FilenameFilter() {
            /* class com.vungle.warren.log.LogPersister.AnonymousClass4 */

            public boolean accept(File file, String str) {
                return str.endsWith(LogPersister.SDK_LOG_FILE_CRASH);
            }
        });
        if (listFiles == null || listFiles.length == 0) {
            return null;
        }
        Arrays.sort(listFiles, new Comparator<File>() {
            /* class com.vungle.warren.log.LogPersister.AnonymousClass5 */

            public int compare(File file, File file2) {
                return file2.getName().compareTo(file.getName());
            }
        });
        return (File[]) Arrays.copyOfRange(listFiles, 0, Math.min(listFiles.length, i));
    }

    /* access modifiers changed from: package-private */
    public File getOrCreateLogFile(File file) {
        File[] listFiles = file.listFiles(new FilenameFilter() {
            /* class com.vungle.warren.log.LogPersister.AnonymousClass2 */

            public boolean accept(File file, String str) {
                return !str.endsWith(LogPersister.SDK_LOG_FILE_PENDING);
            }
        });
        if (listFiles == null || listFiles.length == 0) {
            this.entryCount = 0;
            StringBuilder q = ic.q(SDK_LOG_FILE_PATTERN);
            q.append(System.currentTimeMillis());
            q.append(UUID.randomUUID().toString());
            return createFileOrDirectory(file, q.toString(), false);
        }
        Arrays.sort(listFiles, new Comparator<File>() {
            /* class com.vungle.warren.log.LogPersister.AnonymousClass3 */

            public int compare(File file, File file2) {
                return file2.getName().compareTo(file.getName());
            }
        });
        File file2 = listFiles[0];
        int fileLineCount = getFileLineCount(file2.getAbsolutePath());
        if (fileLineCount <= 0 || fileLineCount < this.maximumEntries) {
            this.entryCount = fileLineCount;
            return file2;
        }
        File file3 = null;
        try {
            File file4 = this.logFile;
            if (renameFile(file4, this.logFile.getName() + SDK_LOG_FILE_PENDING)) {
                file3 = getOrCreateLogFile(file);
            }
        } catch (Exception unused) {
        }
        if (file3 != null) {
            return file3;
        }
        this.entryCount = fileLineCount;
        return file2;
    }

    /* access modifiers changed from: package-private */
    public File[] getPendingFiles() {
        File file = this.logDir;
        if (file != null) {
            return file.listFiles(new FilenameFilter() {
                /* class com.vungle.warren.log.LogPersister.AnonymousClass1 */

                public boolean accept(File file, String str) {
                    return str.endsWith(LogPersister.SDK_LOG_FILE_PENDING);
                }
            });
        }
        Log.w(TAG, "No log cache dir found.");
        return null;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x006a */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void saveCrashLogData(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) {
        /*
        // Method dump skipped, instructions count: 149
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.log.LogPersister.saveCrashLogData(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:26:0x007a */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void saveLogData(java.lang.String r15, java.lang.String r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) {
        /*
        // Method dump skipped, instructions count: 201
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.log.LogPersister.saveLogData(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* access modifiers changed from: package-private */
    public void setMaximumEntries(int i) {
        if (i <= 0) {
            i = 100;
        }
        this.maximumEntries = i;
    }

    /* access modifiers changed from: package-private */
    public void setSdkLoggingEventListener(LogManager.SdkLoggingEventListener sdkLoggingEventListener) {
        this.listener = sdkLoggingEventListener;
    }
}
