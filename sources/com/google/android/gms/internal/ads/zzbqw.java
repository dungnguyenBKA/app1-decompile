package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;

public final class zzbqw implements zzeqb<zzbqu> {
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzdfl<Bundle>> zzfcm;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<ApplicationInfo> zzfyq;
    private final zzeqo<String> zzfyr;
    private final zzeqo<List<String>> zzfys;
    private final zzeqo<PackageInfo> zzfyt;
    private final zzeqo<zzdzw<String>> zzfyu;
    private final zzeqo<String> zzfyv;

    private zzbqw(zzeqo<zzdrj> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<ApplicationInfo> zzeqo3, zzeqo<String> zzeqo4, zzeqo<List<String>> zzeqo5, zzeqo<PackageInfo> zzeqo6, zzeqo<zzdzw<String>> zzeqo7, zzeqo<zzf> zzeqo8, zzeqo<String> zzeqo9, zzeqo<zzdfl<Bundle>> zzeqo10) {
        this.zzfvi = zzeqo;
        this.zzftb = zzeqo2;
        this.zzfyq = zzeqo3;
        this.zzfyr = zzeqo4;
        this.zzfys = zzeqo5;
        this.zzfyt = zzeqo6;
        this.zzfyu = zzeqo7;
        this.zzfag = zzeqo8;
        this.zzfyv = zzeqo9;
        this.zzfcm = zzeqo10;
    }

    public static zzbqw zza(zzeqo<zzdrj> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<ApplicationInfo> zzeqo3, zzeqo<String> zzeqo4, zzeqo<List<String>> zzeqo5, zzeqo<PackageInfo> zzeqo6, zzeqo<zzdzw<String>> zzeqo7, zzeqo<zzf> zzeqo8, zzeqo<String> zzeqo9, zzeqo<zzdfl<Bundle>> zzeqo10) {
        return new zzbqw(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7, zzeqo8, zzeqo9, zzeqo10);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbqu(this.zzfvi.get(), this.zzftb.get(), this.zzfyq.get(), this.zzfyr.get(), this.zzfys.get(), this.zzfyt.get(), zzeqc.zzav(this.zzfyu), this.zzfag.get(), this.zzfyv.get(), this.zzfcm.get());
    }
}
