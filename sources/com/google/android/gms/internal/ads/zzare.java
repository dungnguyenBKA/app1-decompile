package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzare extends zzgy implements zzarf {
    public zzare() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    public static zzarf zzag(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        if (queryLocalInterface instanceof zzarf) {
            return (zzarf) queryLocalInterface;
        }
        return new zzarh(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzc((Intent) zzgx.zza(parcel, Intent.CREATOR));
        } else if (i == 2) {
            zzc(zv.a.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzvt();
        }
        parcel2.writeNoException();
        return true;
    }
}
