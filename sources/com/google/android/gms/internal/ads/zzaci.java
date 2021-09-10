package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaci extends zzgw implements zzacg {
    zzaci(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String getContent() {
        Parcel zza = zza(2, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordClick() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordImpression() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void zzn(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String zzsq() {
        Parcel zza = zza(1, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
