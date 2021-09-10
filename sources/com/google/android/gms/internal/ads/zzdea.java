package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;

public final class zzdea implements zzdfi<zzdfj<Bundle>>, zzdfj<Bundle> {
    private final ApplicationInfo applicationInfo;
    private final PackageInfo zzdue;

    zzdea(ApplicationInfo applicationInfo2, PackageInfo packageInfo) {
        this.applicationInfo = applicationInfo2;
        this.zzdue = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        return zzdzk.zzag(this);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.applicationInfo.packageName;
        PackageInfo packageInfo = this.zzdue;
        String str2 = null;
        Integer valueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxh)).booleanValue()) {
            PackageInfo packageInfo2 = this.zzdue;
            if (packageInfo2 != null) {
                str2 = packageInfo2.versionName;
            }
            if (str2 != null) {
                bundle2.putString("vnm", str2);
            }
        }
    }
}
