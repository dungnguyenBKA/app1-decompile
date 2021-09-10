package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.internal.g0;
import com.google.android.gms.internal.common.zzn;
import com.google.android.gms.internal.common.zzo;
import java.util.concurrent.ConcurrentHashMap;

public class a {
    private static final Object b = new Object();
    private static volatile a c;
    private static zzo<Boolean> d = zzn.zza(e.b);
    public static final /* synthetic */ int e = 0;
    private ConcurrentHashMap<ServiceConnection, ServiceConnection> a = new ConcurrentHashMap<>();

    private a() {
    }

    public static a b() {
        if (c == null) {
            synchronized (b) {
                if (c == null) {
                    c = new a();
                }
            }
        }
        return c;
    }

    private static boolean e(ServiceConnection serviceConnection) {
        return d.zza().booleanValue() && !(serviceConnection instanceof g0);
    }

    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return d(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    @SuppressLint({"UntrackedBindService"})
    public void c(Context context, ServiceConnection serviceConnection) {
        if (!e(serviceConnection) || !this.a.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
            } catch (IllegalArgumentException | IllegalStateException e2) {
                Log.w("ConnectionTracker", "Exception thrown while unbinding", e2);
            }
        } else {
            try {
                try {
                    context.unbindService(this.a.get(serviceConnection));
                } catch (IllegalArgumentException | IllegalStateException e3) {
                    Log.w("ConnectionTracker", "Exception thrown while unbinding", e3);
                }
            } finally {
                this.a.remove(serviceConnection);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean d(android.content.Context r5, java.lang.String r6, android.content.Intent r7, android.content.ServiceConnection r8, int r9) {
        /*
        // Method dump skipped, instructions count: 112
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.stats.a.d(android.content.Context, java.lang.String, android.content.Intent, android.content.ServiceConnection, int):boolean");
    }
}
