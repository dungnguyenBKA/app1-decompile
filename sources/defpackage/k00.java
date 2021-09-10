package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import defpackage.i20;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* renamed from: k00  reason: default package */
public class k00 {
    private static final Map<String, Integer> e;
    static final String f = String.format(Locale.US, "Crashlytics Android SDK/%s", "17.4.0");
    private final Context a;
    private final t00 b;
    private final mz c;
    private final z30 d;

    static {
        HashMap hashMap = new HashMap();
        e = hashMap;
        hashMap.put("armeabi", 5);
        hashMap.put("armeabi-v7a", 6);
        hashMap.put("arm64-v8a", 9);
        hashMap.put("x86", 0);
        hashMap.put("x86_64", 1);
    }

    public k00(Context context, t00 t00, mz mzVar, z30 z30) {
        this.a = context;
        this.b = t00;
        this.c = mzVar;
        this.d = z30;
    }

    private i20.d.AbstractC0101d.a.b.c c(a40 a40, int i, int i2, int i3) {
        String str = a40.b;
        String str2 = a40.a;
        StackTraceElement[] stackTraceElementArr = a40.c;
        int i4 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        a40 a402 = a40.d;
        if (i3 >= i2) {
            a40 a403 = a402;
            while (a403 != null) {
                a403 = a403.d;
                i4++;
            }
        }
        i20.d.AbstractC0101d.a.b.c.AbstractC0106a a2 = i20.d.AbstractC0101d.a.b.c.a();
        a2.f(str);
        a2.e(str2);
        a2.c(j20.a(d(stackTraceElementArr, i)));
        a2.d(i4);
        if (a402 != null && i4 == 0) {
            a2.b(c(a402, i, i2, i3 + 1));
        }
        return a2.a();
    }

    private j20<i20.d.AbstractC0101d.a.b.e.AbstractC0110b> d(StackTraceElement[] stackTraceElementArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            i20.d.AbstractC0101d.a.b.e.AbstractC0110b.AbstractC0111a a2 = i20.d.AbstractC0101d.a.b.e.AbstractC0110b.a();
            a2.c(i);
            long j = 0;
            long max = stackTraceElement.isNativeMethod() ? Math.max((long) stackTraceElement.getLineNumber(), 0L) : 0;
            String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
                j = (long) stackTraceElement.getLineNumber();
            }
            a2.e(max);
            a2.f(str);
            a2.b(fileName);
            a2.d(j);
            arrayList.add(a2.a());
        }
        return j20.a(arrayList);
    }

    private i20.d.AbstractC0101d.a.b.e e(Thread thread, StackTraceElement[] stackTraceElementArr, int i) {
        i20.d.AbstractC0101d.a.b.e.AbstractC0109a a2 = i20.d.AbstractC0101d.a.b.e.a();
        a2.d(thread.getName());
        a2.c(i);
        a2.b(j20.a(d(stackTraceElementArr, i)));
        return a2.a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00f5  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00fe  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0185  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x018e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.i20.d.AbstractC0101d a(java.lang.Throwable r19, java.lang.Thread r20, java.lang.String r21, long r22, int r24, int r25, boolean r26) {
        /*
        // Method dump skipped, instructions count: 521
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k00.a(java.lang.Throwable, java.lang.Thread, java.lang.String, long, int, int, boolean):i20$d$d");
    }

    public i20 b(String str, long j) {
        Integer num;
        i20.a b2 = i20.b();
        b2.h("17.4.0");
        b2.d(this.c.a);
        b2.e(this.b.c());
        b2.b(this.c.e);
        b2.c(this.c.f);
        b2.g(4);
        i20.d.b a2 = i20.d.a();
        a2.l(j);
        a2.i(str);
        a2.g(f);
        i20.d.a.AbstractC0100a a3 = i20.d.a.a();
        a3.e(this.b.b());
        a3.g(this.c.e);
        a3.d(this.c.f);
        a3.f(this.b.c());
        String a4 = this.c.g.a();
        if (a4 != null) {
            a3.b("Unity");
            a3.c(a4);
        }
        a2.b(a3.a());
        i20.d.e.a a5 = i20.d.e.a();
        a5.d(3);
        a5.e(Build.VERSION.RELEASE);
        a5.b(Build.VERSION.CODENAME);
        a5.c(sz.m(this.a));
        a2.k(a5.a());
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        String str2 = Build.CPU_ABI;
        int i = 7;
        if (!TextUtils.isEmpty(str2) && (num = e.get(str2.toLowerCase(Locale.US))) != null) {
            i = num.intValue();
        }
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long j2 = sz.j();
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean l = sz.l(this.a);
        int f2 = sz.f(this.a);
        String str3 = Build.MANUFACTURER;
        String str4 = Build.PRODUCT;
        i20.d.c.a a6 = i20.d.c.a();
        a6.b(i);
        a6.f(Build.MODEL);
        a6.c(availableProcessors);
        a6.h(j2);
        a6.d(blockCount);
        a6.i(l);
        a6.j(f2);
        a6.e(str3);
        a6.g(str4);
        a2.d(a6.a());
        a2.h(3);
        b2.i(a2.a());
        return b2.a();
    }
}
