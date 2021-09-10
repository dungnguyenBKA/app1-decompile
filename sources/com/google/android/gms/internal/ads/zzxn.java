package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public final class zzxn extends zzgw implements zzxl {
    zzxn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void destroy() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final Bundle getAdMetadata() {
        Parcel zza = zza(37, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getAdUnitId() {
        Parcel zza = zza(31, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String getMediationAdapterClassName() {
        Parcel zza = zza(18, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzzc getVideoController() {
        zzzc zzzc;
        Parcel zza = zza(26, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzzc = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            if (queryLocalInterface instanceof zzzc) {
                zzzc = (zzzc) queryLocalInterface;
            } else {
                zzzc = new zzze(readStrongBinder);
            }
        }
        zza.recycle();
        return zzzc;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isLoading() {
        Parcel zza = zza(23, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean isReady() {
        Parcel zza = zza(3, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void pause() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void resume() {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setImmersiveMode(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(34, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setManualImpressionsEnabled(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(22, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void setUserId(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(25, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void showInterstitial() {
        zzb(9, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void stopLoading() {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final boolean zza(zzvl zzvl) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        Parcel zza = zza(4, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzbl(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(38, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zze(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(44, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zv zzke() {
        return ic.A(zza(1, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zzkf() {
        zzb(11, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzvs zzkg() {
        Parcel zza = zza(12, zzdo());
        zzvs zzvs = (zzvs) zzgx.zza(zza, zzvs.CREATOR);
        zza.recycle();
        return zzvs;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final String zzkh() {
        Parcel zza = zza(35, zzdo());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzyx zzki() {
        zzyx zzyx;
        Parcel zza = zza(41, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzyx = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            if (queryLocalInterface instanceof zzyx) {
                zzyx = (zzyx) queryLocalInterface;
            } else {
                zzyx = new zzyz(readStrongBinder);
            }
        }
        zza.recycle();
        return zzyx;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxt zzkj() {
        zzxt zzxt;
        Parcel zza = zza(32, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxt = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            if (queryLocalInterface instanceof zzxt) {
                zzxt = (zzxt) queryLocalInterface;
            } else {
                zzxt = new zzxv(readStrongBinder);
            }
        }
        zza.recycle();
        return zzxt;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzwx zzkk() {
        zzwx zzwx;
        Parcel zza = zza(33, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwx = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            if (queryLocalInterface instanceof zzwx) {
                zzwx = (zzwx) queryLocalInterface;
            } else {
                zzwx = new zzwz(readStrongBinder);
            }
        }
        zza.recycle();
        return zzwx;
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzwx zzwx) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzwx);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxt zzxt) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxt);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvs zzvs) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvs);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzary zzary) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzary);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzase zzase, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzase);
        zzdo.writeString(str);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzacl zzacl) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzacl);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzww zzww) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzww);
        zzb(20, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxz zzxz) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxz);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzauu zzauu) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzauu);
        zzb(24, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzaau zzaau) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaau);
        zzb(29, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzzi zzzi) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzzi);
        zzb(30, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzxs zzxs) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxs);
        zzb(36, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvx zzvx) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvx);
        zzb(39, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzsp zzsp) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzsp);
        zzb(40, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyw zzyw) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyw);
        zzb(42, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzvl zzvl, zzxc zzxc) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zzxc);
        zzb(43, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxl
    public final void zza(zzyb zzyb) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzyb);
        zzb(45, zzdo);
    }
}
