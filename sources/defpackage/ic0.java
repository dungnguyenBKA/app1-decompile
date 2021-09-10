package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import java.io.File;
import java.util.Locale;

/* renamed from: ic0  reason: default package */
public class ic0 {
    private static ic0 a = null;
    private static int b = -1;
    private static int c = -1;
    private static long d = -1;

    private ic0() {
    }

    public static synchronized ic0 c() {
        ic0 ic0;
        synchronized (ic0.class) {
            if (a == null) {
                a = new ic0();
            }
            ic0 = a;
        }
        return ic0;
    }

    /* access modifiers changed from: package-private */
    public long a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * ((long) i);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0042, code lost:
        if (r0 != null) goto L_0x0044;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0055 A[SYNTHETIC, Splitter:B:27:0x0055] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String b(android.content.Context r5, java.io.File r6, java.lang.String r7) {
        /*
            r4 = this;
            boolean r0 = r6.exists()
            r1 = 0
            if (r0 == 0) goto L_0x0062
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch:{ Exception -> 0x0039, all -> 0x0037 }
            java.io.FileReader r2 = new java.io.FileReader     // Catch:{ Exception -> 0x0039, all -> 0x0037 }
            r2.<init>(r6)     // Catch:{ Exception -> 0x0039, all -> 0x0037 }
            r6 = 1024(0x400, float:1.435E-42)
            r0.<init>(r2, r6)     // Catch:{ Exception -> 0x0039, all -> 0x0037 }
        L_0x0013:
            java.lang.String r6 = r0.readLine()     // Catch:{ Exception -> 0x0035 }
            if (r6 == 0) goto L_0x0044
            java.lang.String r2 = "\\s*:\\s*"
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)     // Catch:{ Exception -> 0x0035 }
            r3 = 2
            java.lang.String[] r6 = r2.split(r6, r3)     // Catch:{ Exception -> 0x0035 }
            int r2 = r6.length     // Catch:{ Exception -> 0x0035 }
            r3 = 1
            if (r2 <= r3) goto L_0x0013
            r2 = 0
            r2 = r6[r2]     // Catch:{ Exception -> 0x0035 }
            boolean r2 = r2.equals(r7)     // Catch:{ Exception -> 0x0035 }
            if (r2 == 0) goto L_0x0013
            r6 = r6[r3]     // Catch:{ Exception -> 0x0035 }
            r1 = r6
            goto L_0x0044
        L_0x0035:
            r6 = move-exception
            goto L_0x003b
        L_0x0037:
            r6 = move-exception
            goto L_0x0053
        L_0x0039:
            r6 = move-exception
            r0 = r1
        L_0x003b:
            fc0 r7 = defpackage.fc0.a()     // Catch:{ all -> 0x0051 }
            r7.c(r5, r6)     // Catch:{ all -> 0x0051 }
            if (r0 == 0) goto L_0x0062
        L_0x0044:
            r0.close()     // Catch:{ IOException -> 0x0048 }
            goto L_0x0062
        L_0x0048:
            r6 = move-exception
            fc0 r7 = defpackage.fc0.a()
            r7.c(r5, r6)
            goto L_0x0062
        L_0x0051:
            r6 = move-exception
            r1 = r0
        L_0x0053:
            if (r1 == 0) goto L_0x0061
            r1.close()     // Catch:{ IOException -> 0x0059 }
            goto L_0x0061
        L_0x0059:
            r7 = move-exception
            fc0 r0 = defpackage.fc0.a()
            r0.c(r5, r7)
        L_0x0061:
            throw r6
        L_0x0062:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic0.b(android.content.Context, java.io.File, java.lang.String):java.lang.String");
    }

    public float d(String str) {
        try {
            StatFs statFs = new StatFs(str);
            float freeBlocks = ((float) ((((long) statFs.getFreeBlocks()) * ((long) statFs.getBlockSize())) / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) / 1024.0f;
            if (freeBlocks > 0.0f) {
                return freeBlocks;
            }
            return 100.0f;
        } catch (Exception e) {
            e.printStackTrace();
            return 100.0f;
        } catch (Error e2) {
            e2.printStackTrace();
            return 100.0f;
        }
    }

    public synchronized long e(Context context) {
        if (d == -1) {
            long j = 0;
            String b2 = b(context, new File("/proc/meminfo"), "MemTotal");
            if (!TextUtils.isEmpty(b2)) {
                String upperCase = b2.toUpperCase(Locale.US);
                try {
                    if (upperCase.endsWith("KB")) {
                        j = a(upperCase, "KB", 1024);
                    } else if (upperCase.endsWith("MB")) {
                        j = a(upperCase, "MB", 1048576);
                    } else if (upperCase.endsWith("GB")) {
                        j = a(upperCase, "GB", 1073741824);
                    }
                } catch (NumberFormatException e) {
                    fc0.a().c(context, e);
                }
            }
            d = j;
        }
        return d;
    }

    public boolean f(Context context) {
        try {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            long j = memoryInfo.availMem;
            fc0 a2 = fc0.a();
            a2.b(context, "free memory:" + ((((float) j) / 1024.0f) / 1024.0f));
            if (c == -1) {
                c = cc0.h(context, "low_memory_value", 100);
                fc0 a3 = fc0.a();
                a3.b(context, "low_memory_percent:" + c);
            }
            if (j > ((long) (c * 1024 * 1024))) {
                return false;
            }
            long e = e(context);
            fc0 a4 = fc0.a();
            a4.b(context, "total memory:" + ((((float) e) / 1024.0f) / 1024.0f));
            if (e != 0) {
                double d2 = (double) j;
                double d3 = (double) e;
                Double.isNaN(d2);
                Double.isNaN(d3);
                Double.isNaN(d2);
                Double.isNaN(d3);
                double d4 = (d2 / d3) * 100.0d;
                if (b == -1) {
                    b = cc0.h(context, "low_memory_percent", 5);
                    fc0 a5 = fc0.a();
                    a5.b(context, "low_memory_percent:" + b);
                }
                if (d4 < ((double) b)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
