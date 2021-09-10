package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdey implements zzdfi<zzdfj<Bundle>> {
    private final boolean zzhdd;

    zzdey(zzdkv zzdkv) {
        if (zzdkv != null) {
            this.zzhdd = true;
        } else {
            this.zzhdd = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return zzdzk.zzag(this.zzhdd ? zzdfb.zzhde : null);
    }
}
