package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdeh implements zzeqb<zzdef> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Bundle> zzhcn;

    private zzdeh(zzeqo<zzdzv> zzeqo, zzeqo<Bundle> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzhcn = zzeqo2;
    }

    public static zzdeh zzay(zzeqo<zzdzv> zzeqo, zzeqo<Bundle> zzeqo2) {
        return new zzdeh(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdef(this.zzewf.get(), this.zzhcn.get());
    }
}
