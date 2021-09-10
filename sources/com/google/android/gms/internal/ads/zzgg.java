package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgg extends zzgn {
    private final boolean zzabh;

    public zzgg(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 61);
        this.zzabh = zzfc.zzcf();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        long longValue = ((Long) this.zzabl.invoke(null, this.zzwc.getContext(), Boolean.valueOf(this.zzabh))).longValue();
        synchronized (this.zzabb) {
            this.zzabb.zzbo(longValue);
        }
    }
}
