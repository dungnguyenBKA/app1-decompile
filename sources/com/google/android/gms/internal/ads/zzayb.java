package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzayb extends zzgy implements zzaxy {
    public zzayb() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzaxy zzas(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        if (queryLocalInterface instanceof zzaxy) {
            return (zzaxy) queryLocalInterface;
        }
        return new zzaya(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzaxx zzaxx;
        switch (i) {
            case 1:
                zv O = zv.a.O(parcel.readStrongBinder());
                zzaye zzaye = (zzaye) zzgx.zza(parcel, zzaye.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzaxx = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    if (queryLocalInterface instanceof zzaxx) {
                        zzaxx = (zzaxx) queryLocalInterface;
                    } else {
                        zzaxx = new zzaxz(readStrongBinder);
                    }
                }
                zza(O, zzaye, zzaxx);
                parcel2.writeNoException();
                return true;
            case 2:
                zzan(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                zv zzb = zzb(zv.a.O(parcel.readStrongBinder()), zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzb);
                return true;
            case 4:
                zv zzao = zzao(zv.a.O(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzgx.zza(parcel2, zzao);
                return true;
            case 5:
                zza(parcel.createTypedArrayList(Uri.CREATOR), zv.a.O(parcel.readStrongBinder()), zzasi.zzam(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zzb(parcel.createTypedArrayList(Uri.CREATOR), zv.a.O(parcel.readStrongBinder()), zzasi.zzam(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzasq) zzgx.zza(parcel, zzasq.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
