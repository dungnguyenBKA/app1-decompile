package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.Set;

public final class zzddx implements zzdfi<zzddu> {
    private final Context context;
    private final zzdzv zzhah;
    private final Set<String> zzhav;

    public zzddx(zzdzv zzdzv, Context context2, Set<String> set) {
        this.zzhah = zzdzv;
        this.context = context2;
        this.zzhav = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddu> zzasy() {
        return this.zzhah.zze(new zzddw(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzddu zzatj() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() || !zzddu.zzf(this.zzhav)) {
            return new zzddu(null);
        }
        return new zzddu(zzr.zzlg().getVersion(this.context));
    }
}
