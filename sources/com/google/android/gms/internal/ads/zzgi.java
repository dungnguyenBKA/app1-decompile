package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgi extends zzgn {
    public zzgi(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 51);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        synchronized (this.zzabb) {
            zzez zzez = new zzez((String) this.zzabl.invoke(null, new Object[0]));
            this.zzabb.zzbj(zzez.zzyt.longValue());
            this.zzabb.zzbk(zzez.zzyu.longValue());
        }
    }
}
