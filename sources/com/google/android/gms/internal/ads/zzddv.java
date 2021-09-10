package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;

public final class zzddv implements zzeqb<zzddo> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<PackageInfo> zzfyt;

    public zzddv(zzeqo<zzdzv> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<PackageInfo> zzeqo3, zzeqo<zzf> zzeqo4) {
        this.zzewf = zzeqo;
        this.zzfvf = zzeqo2;
        this.zzfyt = zzeqo3;
        this.zzfag = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzddo(this.zzewf.get(), this.zzfvf.get(), this.zzfyt.get(), this.zzfag.get());
    }
}
