package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzwz extends zzgw implements zzwx {
    zzwz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdClicked() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdClosed() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdFailedToLoad(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdImpression() {
        zzb(7, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdLeftApplication() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdLoaded() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void onAdOpened() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzwx
    public final void zzd(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(8, zzdo);
    }
}
