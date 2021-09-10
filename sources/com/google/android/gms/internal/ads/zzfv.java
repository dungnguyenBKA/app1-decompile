package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.Callable;

public final class zzfv implements Callable {
    private final zzcf.zza.zzb zzabb;
    private final zzfc zzwc;

    public zzfv(zzfc zzfc, zzcf.zza.zzb zzb) {
        this.zzwc = zzfc;
        this.zzabb = zzb;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzcy */
    public final Void call() {
        if (this.zzwc.zzcp() != null) {
            this.zzwc.zzcp().get();
        }
        zzcf.zza zzco = this.zzwc.zzco();
        if (zzco != null) {
            synchronized (this.zzabb) {
                zzcf.zza.zzb zzb = this.zzabb;
                byte[] byteArray = zzco.toByteArray();
                zzb.zza(byteArray, 0, byteArray.length, zzeko.zzbhw());
            }
        }
        return null;
    }
}
