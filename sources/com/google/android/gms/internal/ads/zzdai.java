package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;

final /* synthetic */ class zzdai implements zzdyu {
    private final zzatq zzfzs;

    zzdai(zzatq zzatq) {
        this.zzfzs = zzatq;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return zzdzk.zzag(new zzdak(new JsonReader(new InputStreamReader((InputStream) obj))).zzn(this.zzfzs.zzdxi));
    }
}
