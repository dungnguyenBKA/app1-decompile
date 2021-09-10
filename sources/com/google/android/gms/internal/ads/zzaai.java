package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzaai extends zzavp {
    @Override // com.google.android.gms.internal.ads.zzavm
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final String getMediationAdapterClassName() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavr zzavr) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzavz zzavz) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzawh zzawh) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzvl zzvl, zzavu zzavu) {
        zza(zzavu);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyr zzyr) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zzyw zzyw) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zza(zv zvVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zzb(zzvl zzvl, zzavu zzavu) {
        zza(zzavu);
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final void zze(zv zvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzyx zzki() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzavm
    public final zzavl zzrv() {
        return null;
    }

    private static void zza(zzavu zzavu) {
        zzazk.zzev("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzaza.zzaac.post(new zzaal(zzavu));
    }
}
