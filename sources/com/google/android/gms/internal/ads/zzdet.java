package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdet implements zzdfi<zzdeq> {
    private final Context context;
    private final zzaxc zzbqv;
    private final zzdzv zzghl;

    public zzdet(zzaxc zzaxc, zzdzv zzdzv, Context context2) {
        this.zzbqv = zzaxc;
        this.zzghl = zzdzv;
        this.context = context2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdeq> zzasy() {
        return this.zzghl.zze(new zzdes(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdeq zzatn() {
        String str;
        String str2;
        String str3;
        if (!this.zzbqv.zzy(this.context)) {
            return new zzdeq(null, null, null, null, null);
        }
        String zzab = this.zzbqv.zzab(this.context);
        String str4 = zzab == null ? "" : zzab;
        String zzac = this.zzbqv.zzac(this.context);
        if (zzac == null) {
            str = "";
        } else {
            str = zzac;
        }
        String zzad = this.zzbqv.zzad(this.context);
        if (zzad == null) {
            str2 = "";
        } else {
            str2 = zzad;
        }
        String zzae = this.zzbqv.zzae(this.context);
        if (zzae == null) {
            str3 = "";
        } else {
            str3 = zzae;
        }
        return new zzdeq(str4, str, str2, str3, "TIME_OUT".equals(str) ? (Long) zzwr.zzqr().zzd(zzabp.zzcoi) : null);
    }
}
