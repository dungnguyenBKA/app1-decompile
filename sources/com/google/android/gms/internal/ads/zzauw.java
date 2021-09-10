package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzauw extends zzgw implements zzauu {
    zzauw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoAdClosed() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoAdFailedToLoad(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoAdLeftApplication() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoAdLoaded() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoAdOpened() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoCompleted() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void onRewardedVideoStarted() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzauu
    public final void zza(zzauk zzauk) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzauk);
        zzb(5, zzdo);
    }
}
