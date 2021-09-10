package com.google.android.gms.internal.ads;

import android.net.Uri;

final /* synthetic */ class zzcsv implements zzdyu {
    private final zzdnl zzgtc;
    private final zzcsw zzgtw;
    private final Uri zzgtx;
    private final zzdmw zzgty;

    zzcsv(zzcsw zzcsw, Uri uri, zzdnl zzdnl, zzdmw zzdmw) {
        this.zzgtw = zzcsw;
        this.zzgtx = uri;
        this.zzgtc = zzdnl;
        this.zzgty = zzdmw;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return this.zzgtw.zza(this.zzgtx, this.zzgtc, this.zzgty, obj);
    }
}
