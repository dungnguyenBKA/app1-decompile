package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzapm extends zzgw implements zzapk {
    zzapm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzzc getVideoController() {
        Parcel zza = zza(5, zzdo());
        zzzc zzk = zzzb.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(zv zvVar, String str, Bundle bundle, Bundle bundle2, zzvs zzvs, zzapp zzapp) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, bundle);
        zzgx.zza(zzdo, bundle2);
        zzgx.zza(zzdo, zzvs);
        zzgx.zza(zzdo, zzapp);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzaa(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(17, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzb(String str, String str2, zzvl zzvl, zv zvVar, zzapj zzapj, zzank zzank) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzapj);
        zzgx.zza(zzdo, zzank);
        zzb(20, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzdm(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvc() {
        Parcel zza = zza(2, zzdo());
        zzapy zzapy = (zzapy) zzgx.zza(zza, zzapy.CREATOR);
        zza.recycle();
        return zzapy;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final zzapy zzvd() {
        Parcel zza = zza(3, zzdo());
        zzapy zzapy = (zzapy) zzgx.zza(zza, zzapy.CREATOR);
        zza.recycle();
        return zzapy;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zzy(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final boolean zzz(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        Parcel zza = zza(15, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String[] strArr, Bundle[] bundleArr) {
        Parcel zzdo = zzdo();
        zzdo.writeStringArray(strArr);
        zzdo.writeTypedArray(bundleArr, 0);
        zzb(11, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzaoy zzaoy, zzank zzank, zzvs zzvs) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzaoy);
        zzgx.zza(zzdo, zzank);
        zzgx.zza(zzdo, zzvs);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzapd zzapd, zzank zzank) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzapd);
        zzgx.zza(zzdo, zzank);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzapj zzapj, zzank zzank) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzapj);
        zzgx.zza(zzdo, zzank);
        zzb(16, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzapk
    public final void zza(String str, String str2, zzvl zzvl, zv zvVar, zzape zzape, zzank zzank) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzgx.zza(zzdo, zzvl);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzape);
        zzgx.zza(zzdo, zzank);
        zzb(18, zzdo);
    }
}
