package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzds;

/* access modifiers changed from: package-private */
public final class b implements Runnable {
    private final /* synthetic */ boolean b;
    private final /* synthetic */ zzf c;

    b(zzf zzf, boolean z) {
        this.c = zzf;
        this.b = z;
    }

    public final void run() {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            String str = this.c.m.zzbrp;
            Context context = this.c.k;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            zzds.zza(str, context, this.b).zzbt();
        } catch (NullPointerException e) {
            this.c.i.zza(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }
}
