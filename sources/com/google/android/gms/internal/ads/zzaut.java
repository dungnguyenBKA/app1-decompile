package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzaut extends zzgw implements zzaur {
    zzaut(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void destroy() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final Bundle getAdMetadata() {
        Parcel zza = zza(15, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(12, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean isLoaded() {
        Parcel zza = zza(5, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void pause() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void resume() {
        zzb(7, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setAppPackageName(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(17, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setCustomData(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setImmersiveMode(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(34, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void setUserId(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void show() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzava zzava) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzava);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzi(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(18, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzj(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzk(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final zzyx zzki() {
        Parcel zza = zza(21, zzdo());
        zzyx zzj = zzza.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zzl(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final boolean zzrw() {
        Parcel zza = zza(20, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzauu zzauu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzauu);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzxs zzxs) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxs);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    public final void zza(zzaup zzaup) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaup);
        zzb(16, zzdo);
    }
}
