package com.vungle.warren.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.vungle.warren.VungleApiClient;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

/* access modifiers changed from: package-private */
public class LogSender {
    private static final String HEADER_LOG_BATCH_ID = "batch_id";
    private static final String HEADER_LOG_DEVICE_ID = "device_guid";
    private static final String HEADER_LOG_PAYLOAD = "payload";
    private static final String PREFS_BATCH_ID_KEY = "batch_id";
    private static final String PREFS_DEVICE_ID_KEY = "device_id";
    private static final String TAG = "LogSender";
    private int batchId = getBatchId();
    private Context context;
    private final String deviceId = getDeviceId();
    private VungleApiClient vungleApiClient;

    LogSender(Context context2, VungleApiClient vungleApiClient2) {
        this.context = context2;
        this.vungleApiClient = vungleApiClient2;
    }

    private int getBatchId() {
        return this.context.getSharedPreferences("vungle_logger_prefs", 0).getInt("batch_id", 0);
    }

    private String getDeviceId() {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("vungle_logger_prefs", 0);
        String string = sharedPreferences.getString(PREFS_DEVICE_ID_KEY, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(PREFS_DEVICE_ID_KEY, uuid);
        edit.apply();
        return uuid;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:12|13|14|15) */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        android.util.Log.e(com.vungle.warren.log.LogSender.TAG, "Invalidate log document file.");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0030, code lost:
        com.vungle.warren.utility.FileUtility.closeQuietly(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0033, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0034, code lost:
        r5 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0035, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0029 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.m60 getPayload(java.io.File r5) {
        /*
            r4 = this;
            m60 r0 = new m60
            r0.<init>()
            r1 = 0
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Exception -> 0x0028, all -> 0x0026 }
            java.io.FileReader r3 = new java.io.FileReader     // Catch:{ Exception -> 0x0028, all -> 0x0026 }
            r3.<init>(r5)     // Catch:{ Exception -> 0x0028, all -> 0x0026 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0028, all -> 0x0026 }
        L_0x0010:
            java.lang.String r5 = r2.readLine()     // Catch:{ Exception -> 0x0029 }
            if (r5 == 0) goto L_0x0022
            p60 r5 = androidx.core.app.b.n0(r5)     // Catch:{ Exception -> 0x0029 }
            s60 r5 = r5.e()     // Catch:{ Exception -> 0x0029 }
            r0.i(r5)     // Catch:{ Exception -> 0x0029 }
            goto L_0x0010
        L_0x0022:
            com.vungle.warren.utility.FileUtility.closeQuietly(r2)
            return r0
        L_0x0026:
            r5 = move-exception
            goto L_0x0036
        L_0x0028:
            r2 = r1
        L_0x0029:
            java.lang.String r5 = com.vungle.warren.log.LogSender.TAG     // Catch:{ all -> 0x0034 }
            java.lang.String r0 = "Invalidate log document file."
            android.util.Log.e(r5, r0)     // Catch:{ all -> 0x0034 }
            com.vungle.warren.utility.FileUtility.closeQuietly(r2)
            return r1
        L_0x0034:
            r5 = move-exception
            r1 = r2
        L_0x0036:
            com.vungle.warren.utility.FileUtility.closeQuietly(r1)
            goto L_0x003b
        L_0x003a:
            throw r5
        L_0x003b:
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.log.LogSender.getPayload(java.io.File):m60");
    }

    private void saveBatchId() {
        SharedPreferences.Editor edit = this.context.getSharedPreferences("vungle_logger_prefs", 0).edit();
        edit.putInt("batch_id", this.batchId);
        edit.apply();
    }

    /* access modifiers changed from: package-private */
    public void sendLogs(File[] fileArr) {
        for (File file : fileArr) {
            s60 s60 = new s60();
            s60.k("batch_id", Integer.valueOf(this.batchId));
            s60.l(HEADER_LOG_DEVICE_ID, this.deviceId);
            try {
                m60 payload = getPayload(file);
                if (payload == null) {
                    FileUtility.delete(file);
                } else {
                    s60.i(HEADER_LOG_PAYLOAD, payload);
                    if (this.vungleApiClient.sendLog(s60).execute().isSuccessful()) {
                        FileUtility.delete(file);
                    }
                    if (this.batchId >= Integer.MAX_VALUE) {
                        this.batchId = -1;
                    }
                    this.batchId++;
                }
            } catch (IOException unused) {
                Log.e(TAG, "Failed to generate request payload.");
            }
        }
        saveBatchId();
    }
}
