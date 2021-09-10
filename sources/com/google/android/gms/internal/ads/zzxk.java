package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

public final class zzxk extends zzgw implements zzxi {
    zzxk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafr zzafr) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafr);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzwx zzwx) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzwx);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final zzxd zzqz() {
        zzxd zzxd;
        Parcel zza = zza(1, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxd = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            if (queryLocalInterface instanceof zzxd) {
                zzxd = (zzxd) queryLocalInterface;
            } else {
                zzxd = new zzxf(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxd;
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafs zzafs) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafs);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzxz zzxz) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxz);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(String str, zzafy zzafy, zzafx zzafx) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzafy);
        zzgx.zza(zzdo, zzafx);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzaeh zzaeh) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaeh);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagf zzagf, zzvs zzvs) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagf);
        zzgx.zza(zzdo, zzvs);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, publisherAdViewOptions);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagg zzagg) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagg);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzajt zzajt) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzajt);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzakb zzakb) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzakb);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(AdManagerAdViewOptions adManagerAdViewOptions) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, adManagerAdViewOptions);
        zzb(15, zzdo);
    }
}
