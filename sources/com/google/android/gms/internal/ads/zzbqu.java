package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;

public final class zzbqu {
    private final String packageName;
    private final zzazn zzboz;
    private final PackageInfo zzdue;
    private final List<String> zzduo;
    private final String zzdxj;
    private final zzdrj zzfwz;
    private final ApplicationInfo zzfyn;
    private final zzepv<zzdzw<String>> zzfyo;
    private final zzdfl<Bundle> zzfyp;

    public zzbqu(zzdrj zzdrj, zzazn zzazn, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, zzepv<zzdzw<String>> zzepv, zzf zzf, String str2, zzdfl<Bundle> zzdfl) {
        this.zzfwz = zzdrj;
        this.zzboz = zzazn;
        this.zzfyn = applicationInfo;
        this.packageName = str;
        this.zzduo = list;
        this.zzdue = packageInfo;
        this.zzfyo = zzepv;
        this.zzdxj = str2;
        this.zzfyp = zzdfl;
    }

    public final zzdzw<Bundle> zzali() {
        return this.zzfwz.zzt(zzdrk.SIGNALS).zze(this.zzfyp.zzs(new Bundle())).zzaxj();
    }

    public final zzdzw<zzatq> zzalj() {
        zzdzw<Bundle> zzali = zzali();
        return this.zzfwz.zza(zzdrk.REQUEST_PARCEL, zzali, this.zzfyo.get()).zzb(new zzbqt(this, zzali)).zzaxj();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzatq zzc(zzdzw zzdzw) {
        return new zzatq((Bundle) zzdzw.get(), this.zzboz, this.zzfyn, this.packageName, this.zzduo, this.zzdue, this.zzfyo.get().get(), this.zzdxj, null, null);
    }
}
