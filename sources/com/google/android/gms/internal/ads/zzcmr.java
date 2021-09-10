package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

public final class zzcmr implements zzeqb<PackageInfo> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<ApplicationInfo> zzgoa;

    private zzcmr(zzeqo<Context> zzeqo, zzeqo<ApplicationInfo> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgoa = zzeqo2;
    }

    public static zzcmr zzak(zzeqo<Context> zzeqo, zzeqo<ApplicationInfo> zzeqo2) {
        return new zzcmr(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzcmh.zza(this.zzewk.get(), this.zzgoa.get());
    }
}
