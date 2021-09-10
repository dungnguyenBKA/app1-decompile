package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdbl implements zzdfj<Bundle> {
    private final zzazn zzdtx;
    private final zzvx zzhba;

    public zzdbl(zzvx zzvx, zzazn zzazn) {
        this.zzhba = zzvx;
        this.zzdtx = zzazn;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        int intValue = ((Integer) zzwr.zzqr().zzd(zzabp.zzcvx)).intValue();
        zzazn zzazn = this.zzdtx;
        if (zzazn != null && zzazn.zzehz >= intValue) {
            bundle2.putString("app_open_version", "2");
        }
        zzvx zzvx = this.zzhba;
        if (zzvx != null) {
            int i = zzvx.orientation;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i == 2) {
                bundle2.putString("avo", "l");
            }
        }
    }
}
