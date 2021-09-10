package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcog implements zzdyu {
    private final zzatq zzfzs;

    zzcog(zzatq zzatq) {
        this.zzfzs = zzatq;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        zzatq zzatq = this.zzfzs;
        zzatq.zzdxl = new String(zzdyc.toByteArray((InputStream) obj), zzdvx.UTF_8);
        return zzdzk.zzag(zzatq);
    }
}
