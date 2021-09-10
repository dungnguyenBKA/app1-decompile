package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgk extends zzgn {
    private static final Object zzaba = new Object();
    private static volatile Long zzabi;

    public zzgk(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 33);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (zzabi == null) {
            synchronized (zzaba) {
                if (zzabi == null) {
                    zzabi = (Long) this.zzabl.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzabb) {
            this.zzabb.zzaz(zzabi.longValue());
        }
    }
}
