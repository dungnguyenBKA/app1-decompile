package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgh extends zzgn {
    private long zzaam;
    private final zzfj zzxj;

    public zzgh(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, zzfj zzfj) {
        super(zzfc, str, str2, zzb, i, 53);
        this.zzxj = zzfj;
        if (zzfj != null) {
            this.zzaam = zzfj.zzcu();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (this.zzxj != null) {
            this.zzabb.zzbl(((Long) this.zzabl.invoke(null, Long.valueOf(this.zzaam))).longValue());
        }
    }
}
