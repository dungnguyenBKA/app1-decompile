package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzgx;
import com.google.android.gms.internal.ads.zzgy;
import defpackage.zv;

public abstract class zzbf extends zzgy implements zzbg {
    public zzbf() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            boolean zzd = zzd(zv.a.O(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            zzgx.writeBoolean(parcel2, zzd);
        } else if (i != 2) {
            return false;
        } else {
            zzap(zv.a.O(parcel.readStrongBinder()));
            parcel2.writeNoException();
        }
        return true;
    }
}
