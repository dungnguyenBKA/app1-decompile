package dev.in.common.core.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;

public class DownloadService extends Service {
    private Handler b = new a();

    class a extends Handler {
        a() {
        }

        public void handleMessage(Message message) {
            if (message.what == 0) {
                Log.e("checkUpdate", "stop.....");
                DownloadService.this.stopSelf();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00bb A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void b(dev.in.common.core.service.DownloadService r14, android.content.Context r15) {
        /*
        // Method dump skipped, instructions count: 204
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.in.common.core.service.DownloadService.b(dev.in.common.core.service.DownloadService, android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00b9 A[Catch:{ Exception -> 0x00cd }] */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00c5 A[Catch:{ Exception -> 0x00cd }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00de A[Catch:{ Exception -> 0x0167 }] */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x014f A[Catch:{ Exception -> 0x0163 }] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x015b A[Catch:{ Exception -> 0x0163 }] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x016c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void c(dev.in.common.core.service.DownloadService r19, android.content.Context r20) {
        /*
        // Method dump skipped, instructions count: 387
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.in.common.core.service.DownloadService.c(dev.in.common.core.service.DownloadService, android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c7 A[Catch:{ Exception -> 0x00c5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00cc A[Catch:{ Exception -> 0x00c5 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void d(dev.in.common.core.service.DownloadService r17, android.content.Context r18) {
        /*
        // Method dump skipped, instructions count: 258
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.in.common.core.service.DownloadService.d(dev.in.common.core.service.DownloadService, android.content.Context):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00ae, code lost:
        if (r7 != null) goto L_0x00b0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00b0, code lost:
        r7.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x00d6, code lost:
        if (r7 != null) goto L_0x00b0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0095 A[SYNTHETIC, Splitter:B:37:0x0095] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00a3 A[Catch:{ IOException -> 0x0099, all -> 0x00dd }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00ab A[SYNTHETIC, Splitter:B:47:0x00ab] */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00ba A[SYNTHETIC, Splitter:B:54:0x00ba] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00d0  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00e1 A[SYNTHETIC, Splitter:B:70:0x00e1] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00e9 A[Catch:{ IOException -> 0x00e5 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String e(java.lang.String r7, java.io.File r8) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.in.common.core.service.DownloadService.e(java.lang.String, java.io.File):java.lang.String");
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Log.e("checkUpdate", "start.....");
        synchronized (this) {
            new Thread(new a(this, this)).start();
        }
        return super.onStartCommand(intent, i, i2);
    }
}
