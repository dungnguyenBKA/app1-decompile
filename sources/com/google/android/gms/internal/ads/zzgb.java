package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgb extends zzgn {
    public zzgb(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 3);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsd)).booleanValue();
        zzem zzem = new zzem((String) this.zzabl.invoke(null, this.zzwc.getContext(), Boolean.valueOf(booleanValue)));
        synchronized (this.zzabb) {
            this.zzabb.zzal(zzem.zzyg);
            this.zzabb.zzbn(zzem.zzyh);
        }
    }
}
