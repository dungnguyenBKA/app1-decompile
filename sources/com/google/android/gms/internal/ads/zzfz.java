package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzfz extends zzgn {
    private long zzabd = -1;

    public zzfz(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 12);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzap(-1);
        this.zzabb.zzap(((Long) this.zzabl.invoke(null, this.zzwc.getContext())).longValue());
    }
}
