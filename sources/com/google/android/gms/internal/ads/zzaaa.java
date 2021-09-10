package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzaaa extends zzxg {
    final /* synthetic */ zzzy zzclj;

    private zzaaa(zzzy zzzy) {
        this.zzclj = zzzy;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zza(zzvl zzvl, int i) {
        zzazk.zzev("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzaza.zzaac.post(new zzaad(this));
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvl) {
        zza(zzvl, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String zzkh() {
        return null;
    }
}
