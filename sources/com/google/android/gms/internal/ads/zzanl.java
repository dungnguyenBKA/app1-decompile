package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public final class zzanl extends zzgw implements zzanj {
    zzanl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void destroy() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle getInterstitialAdapterInfo() {
        Parcel zza = zza(18, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzzc getVideoController() {
        Parcel zza = zza(26, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean isInitialized() {
        Parcel zza = zza(13, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void pause() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void resume() {
        zzb(9, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void setImmersiveMode(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(25, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showInterstitial() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void showVideo() {
        zzb(12, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzank);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzb(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzank);
        zzb(28, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzc(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzank);
        zzb(32, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzs(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzt(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(30, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zv zzuu() {
        return ic.A(zza(2, zzdo()));
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanr zzuv() {
        zzanr zzanr;
        Parcel zza = zza(15, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzanr = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            if (queryLocalInterface instanceof zzanr) {
                zzanr = (zzanr) queryLocalInterface;
            } else {
                zzanr = new zzant(readStrongBinder);
            }
        }
        zza.recycle();
        return zzanr;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzans zzuw() {
        zzans zzans;
        Parcel zza = zza(16, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzans = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            if (queryLocalInterface instanceof zzans) {
                zzans = (zzans) queryLocalInterface;
            } else {
                zzans = new zzanu(readStrongBinder);
            }
        }
        zza.recycle();
        return zzans;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzux() {
        Parcel zza = zza(17, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final Bundle zzuy() {
        Parcel zza = zza(19, zzdo());
        Bundle bundle = (Bundle) zzgx.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final boolean zzuz() {
        Parcel zza = zza(22, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzafn zzva() {
        Parcel zza = zza(24, zzdo());
        zzafn zzr = zzafm.zzr(zza.readStrongBinder());
        zza.recycle();
        return zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzanx zzvb() {
        zzanx zzanx;
        Parcel zza = zza(27, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzanx = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            if (queryLocalInterface instanceof zzanx) {
                zzanx = (zzanx) queryLocalInterface;
            } else {
                zzanx = new zzanz(readStrongBinder);
            }
        }
        zza.recycle();
        return zzanx;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvc() {
        Parcel zza = zza(33, zzdo());
        zzapy zzapy = (zzapy) zzgx.zza(zza, zzapy.CREATOR);
        zza.recycle();
        return zzapy;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final zzapy zzvd() {
        Parcel zza = zza(34, zzdo());
        zzapy zzapy = (zzapy) zzgx.zza(zza, zzapy.CREATOR);
        zza.recycle();
        return zzapy;
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzank);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvs zzvs, zzvl zzvl, String str, String str2, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvs);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzank);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzank);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, zzavf zzavf, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzavf);
        zzdo.writeString(str2);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzvl zzvl, String str, String str2, zzank zzank, zzaeh zzaeh, List<String> list) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzank);
        zzgx.zza(zzdo, zzaeh);
        zzdo.writeStringList(list);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zzvl zzvl, String str, String str2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvl);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(20, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzavf zzavf, List<String> list) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzavf);
        zzdo.writeStringList(list);
        zzb(23, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zza(zv zvVar, zzajj zzajj, List<zzajr> list) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzajj);
        zzdo.writeTypedList(list);
        zzb(31, zzdo);
    }
}
