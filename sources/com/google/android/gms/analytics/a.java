package com.google.android.gms.analytics;

import com.google.android.gms.internal.gtm.zzbv;
import com.google.android.gms.internal.gtm.zzft;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class a extends c {
    private static List<Runnable> h = new ArrayList();
    private boolean f;
    private boolean g;

    public a(zzbv zzbv) {
        super(zzbv);
        new HashSet();
    }

    public static void h() {
        synchronized (a.class) {
            List<Runnable> list = h;
            if (list != null) {
                for (Runnable runnable : list) {
                    runnable.run();
                }
                h = null;
            }
        }
    }

    public boolean g() {
        return this.g;
    }

    public final void i() {
        zzft zzq = b().zzq();
        zzq.zzf();
        if (zzq.zze()) {
            this.g = zzq.zzc();
        }
        zzq.zzf();
        this.f = true;
    }

    public final boolean j() {
        return this.f;
    }
}
