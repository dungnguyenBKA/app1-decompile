package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzfu extends zzgn {
    private static volatile Long zzaaz;
    private static final Object zzaba = new Object();

    public zzfu(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 44);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (zzaaz == null) {
            synchronized (zzaba) {
                if (zzaaz == null) {
                    zzaaz = (Long) this.zzabl.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzabb) {
            this.zzabb.zzbh(zzaaz.longValue());
        }
    }
}
