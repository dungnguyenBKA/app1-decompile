package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgj extends zzgn {
    public zzgj(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 48);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzf(zzcq.ENUM_FAILURE);
        boolean booleanValue = ((Boolean) this.zzabl.invoke(null, this.zzwc.getContext())).booleanValue();
        synchronized (this.zzabb) {
            if (booleanValue) {
                this.zzabb.zzf(zzcq.ENUM_TRUE);
            } else {
                this.zzabb.zzf(zzcq.ENUM_FALSE);
            }
        }
    }
}
