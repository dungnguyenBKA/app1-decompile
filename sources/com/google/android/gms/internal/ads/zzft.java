package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;

public final class zzft extends zzgn {
    private long startTime;

    public zzft(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, long j, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 25);
        this.startTime = j;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        long longValue = ((Long) this.zzabl.invoke(null, new Object[0])).longValue();
        synchronized (this.zzabb) {
            this.zzabb.zzbr(longValue);
            long j = this.startTime;
            if (j != 0) {
                this.zzabb.zzat(longValue - j);
                this.zzabb.zzaw(this.startTime);
            }
        }
    }
}
