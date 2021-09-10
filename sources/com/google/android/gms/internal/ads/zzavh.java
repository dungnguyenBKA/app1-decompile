package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzavh extends zzgw implements zzavf {
    zzavh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zza(zv zvVar, zzavj zzavj) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzavj);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaf(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzag(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzah(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzai(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaj(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzak(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzal(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzam(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzd(zv zvVar, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeInt(i);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zze(zv zvVar, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeInt(i);
        zzb(9, zzdo);
    }
}
