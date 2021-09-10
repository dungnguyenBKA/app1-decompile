package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzgc extends zzgn {
    private static final Object zzaba = new Object();
    private static volatile String zzabe;

    public zzgc(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 1);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzac("E");
        if (zzabe == null) {
            synchronized (zzaba) {
                if (zzabe == null) {
                    zzabe = (String) this.zzabl.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzabb) {
            this.zzabb.zzac(zzabe);
        }
    }
}
