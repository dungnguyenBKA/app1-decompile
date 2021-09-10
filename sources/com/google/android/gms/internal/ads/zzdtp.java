package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdtp implements gw {
    private final zzdto zzhta;

    zzdtp(zzdto zzdto) {
        this.zzhta = zzdto;
    }

    @Override // defpackage.gw
    public final void onFailure(Exception exc) {
        this.zzhta.zzc(exc);
    }
}
