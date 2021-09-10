package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

public final class zzded implements zzeqb<zzdea> {
    private final zzeqo<PackageInfo> zzfyt;
    private final zzeqo<ApplicationInfo> zzgoa;

    private zzded(zzeqo<ApplicationInfo> zzeqo, zzeqo<PackageInfo> zzeqo2) {
        this.zzgoa = zzeqo;
        this.zzfyt = zzeqo2;
    }

    public static zzdea zza(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        return new zzdea(applicationInfo, packageInfo);
    }

    public static zzded zzax(zzeqo<ApplicationInfo> zzeqo, zzeqo<PackageInfo> zzeqo2) {
        return new zzded(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzgoa.get(), this.zzfyt.get());
    }
}
