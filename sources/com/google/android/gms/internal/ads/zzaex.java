package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaex extends zzgw implements zzaev {
    zzaex(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void destroy() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zza(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzb(String str, zv zvVar) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zvVar);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzc(zv zvVar, int i) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeInt(i);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final zv zzco(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        return ic.A(zza(2, zzdo));
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzf(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzg(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzh(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zza(zzaem zzaem) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaem);
        zzb(8, zzdo);
    }
}
