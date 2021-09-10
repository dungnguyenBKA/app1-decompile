package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdef implements zzdfi<zzdec> {
    private final Bundle zzfyw;
    private final zzdzv zzghl;

    public zzdef(zzdzv zzdzv, Bundle bundle) {
        this.zzghl = zzdzv;
        this.zzfyw = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdec> zzasy() {
        return this.zzghl.zze(new zzdee(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdec zzatk() {
        return new zzdec(this.zzfyw);
    }
}
