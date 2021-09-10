package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzaju extends zzgy implements zzajv {
    public zzaju() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzajw zzajw;
        if (i == 3) {
            zzzc videoController = getVideoController();
            parcel2.writeNoException();
            zzgx.zza(parcel2, videoController);
            return true;
        } else if (i == 4) {
            destroy();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zv O = zv.a.O(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzajw = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                if (queryLocalInterface instanceof zzajw) {
                    zzajw = (zzajw) queryLocalInterface;
                } else {
                    zzajw = new zzajy(readStrongBinder);
                }
            }
            zza(O, zzajw);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzr(zv.a.O(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            zzaem zzty = zzty();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzty);
            return true;
        }
    }
}
