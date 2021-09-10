package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.util.m;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
public class a {
    private static ScheduledExecutorService k;
    private final Object a = this;
    private final PowerManager.WakeLock b;
    private WorkSource c;
    private final int d;
    private final String e;
    private final Context f;
    private boolean g = true;
    private final Map<String, Integer[]> h = new HashMap();
    private int i;
    private AtomicInteger j;

    public a(Context context, int i2, String str) {
        String packageName = context.getPackageName();
        Collections.synchronizedSet(new HashSet());
        this.j = new AtomicInteger(0);
        n.i(context, "WakeLock: context must not be null");
        n.f(str, "WakeLock: wakeLockName must not be empty");
        this.d = i2;
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            this.e = str.length() != 0 ? "*gcore*:".concat(str) : new String("*gcore*:");
        } else {
            this.e = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i2, str);
        this.b = newWakeLock;
        if (com.google.android.gms.common.util.n.c(context)) {
            WorkSource a2 = com.google.android.gms.common.util.n.a(context, m.a(packageName) ? context.getPackageName() : packageName);
            this.c = a2;
            if (a2 != null && com.google.android.gms.common.util.n.c(applicationContext)) {
                WorkSource workSource = this.c;
                if (workSource != null) {
                    workSource.add(a2);
                } else {
                    this.c = a2;
                }
                try {
                    newWakeLock.setWorkSource(this.c);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
                    Log.wtf("WakeLock", e2.toString());
                }
            }
        }
        if (k == null) {
            k = uv.a().a();
        }
    }

    /* access modifiers changed from: private */
    public final void e() {
        if (this.b.isHeld()) {
            try {
                this.b.release();
            } catch (RuntimeException e2) {
                if (e2.getClass().equals(RuntimeException.class)) {
                    Log.e("WakeLock", String.valueOf(this.e).concat(" was already released!"), e2);
                } else {
                    throw e2;
                }
            }
            this.b.isHeld();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r3 == false) goto L_0x0059;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005f, code lost:
        if (r13.i == 0) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0061, code lost:
        com.google.android.gms.common.stats.d.a(r13.f, com.google.android.gms.common.stats.c.a(r13.b, null), 7, r13.e, null, null, r13.d, com.google.android.gms.common.util.n.b(r13.c), r14);
        r13.i++;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(long r14) {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.a.a(long):void");
    }

    public boolean b() {
        return this.b.isHeld();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0051, code lost:
        if (r4 == false) goto L_0x0053;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0059, code lost:
        if (r14.i == 1) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005b, code lost:
        com.google.android.gms.common.stats.d.a(r14.f, com.google.android.gms.common.stats.c.a(r14.b, null), 8, r14.e, null, null, r14.d, com.google.android.gms.common.util.n.b(r14.c), 0);
        r14.i--;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
        // Method dump skipped, instructions count: 131
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.a.c():void");
    }

    public void d(boolean z) {
        this.b.setReferenceCounted(z);
        this.g = z;
    }
}
