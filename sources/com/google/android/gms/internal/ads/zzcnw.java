package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* access modifiers changed from: package-private */
public final class zzcnw implements zzbua {
    private final Context context;
    private final zzaxc zzbqv;

    zzcnw(Context context2, zzaxc zzaxc) {
        this.context = context2;
        this.zzbqv = zzaxc;
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnl) {
        if (!TextUtils.isEmpty(zzdnl.zzhks.zzess.zzdwy)) {
            this.zzbqv.zza(this.context, zzdnl.zzhkr.zzfwy.zzhkw);
            this.zzbqv.zzi(this.context, zzdnl.zzhks.zzess.zzdwy);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatq) {
    }
}
