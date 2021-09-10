package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdcc implements zzdfi<zzdfj<Bundle>> {
    private final zzdjx zzhbj;

    zzdcc(zzdjx zzdjx) {
        this.zzhbj = zzdjx;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        zzdjx zzdjx = this.zzhbj;
        return zzdzk.zzag((zzdjx == null || zzdjx.zzaur() == null || this.zzhbj.zzaur().isEmpty()) ? null : new zzdcf(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(Bundle bundle) {
        bundle.putString("key_schema", this.zzhbj.zzaur());
    }
}
