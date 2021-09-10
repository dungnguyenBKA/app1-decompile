package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

public final class zzarq extends zzgw implements zzaro {
    zzarq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i, int i2, Intent intent) {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzdo.writeInt(i2);
        zzgx.zza(zzdo, intent);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onCreate(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(6, zzdo);
        if (zza.readInt() != 0) {
            bundle.readFromParcel(zza);
        }
        zza.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() {
        zzb(7, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() {
        zzb(14, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() {
        zzb(9, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() {
        Parcel zza = zza(11, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }
}
