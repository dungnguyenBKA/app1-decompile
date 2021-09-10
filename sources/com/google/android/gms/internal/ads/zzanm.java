package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzanm extends zzgw implements zzank {
    zzanm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() {
        zzb(11, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() {
        zzb(15, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() {
        zzb(20, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanp) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzanp);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavj) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavj);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzdo.writeString(str);
        zzb(22, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(23, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdb(int i) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(17, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvg);
        zzb(24, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzve() {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzvf() {
        zzb(18, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafn, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafn);
        zzdo.writeString(str);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavl) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavl);
        zzb(16, zzdo);
    }
}
