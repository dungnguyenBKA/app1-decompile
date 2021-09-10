package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzfr extends zzgn {
    public zzfr(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 5);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzam(-1);
        this.zzabb.zzan(-1);
        int[] iArr = (int[]) this.zzabl.invoke(null, this.zzwc.getContext());
        synchronized (this.zzabb) {
            this.zzabb.zzam((long) iArr[0]);
            this.zzabb.zzan((long) iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.zzabb.zzbm((long) iArr[2]);
            }
        }
    }
}
