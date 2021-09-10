package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

public abstract class zzgn implements Callable {
    private final String TAG = getClass().getSimpleName();
    private final String className;
    protected final zzcf.zza.zzb zzabb;
    private final String zzabj;
    protected Method zzabl;
    private final int zzabo;
    private final int zzabp;
    protected final zzfc zzwc;

    public zzgn(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        this.zzwc = zzfc;
        this.className = str;
        this.zzabj = str2;
        this.zzabb = zzb;
        this.zzabo = i;
        this.zzabp = i2;
    }

    /* access modifiers changed from: protected */
    public abstract void zzcw();

    /* renamed from: zzcy */
    public Void call() {
        int i;
        try {
            long nanoTime = System.nanoTime();
            Method zza = this.zzwc.zza(this.className, this.zzabj);
            this.zzabl = zza;
            if (zza == null) {
                return null;
            }
            zzcw();
            zzdw zzcl = this.zzwc.zzcl();
            if (!(zzcl == null || (i = this.zzabo) == Integer.MIN_VALUE)) {
                zzcl.zza(this.zzabp, i, (System.nanoTime() - nanoTime) / 1000);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }
}
