package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class zzatg extends zzgy implements zzath {
    public zzatg() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            zzati zzati = null;
            zzatk zzatk = null;
            zzatk zzatk2 = null;
            zzatk zzatk3 = null;
            zzatk zzatk4 = null;
            if (i == 2) {
                zzatb zzatb = (zzatb) zzgx.zza(parcel, zzatb.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (queryLocalInterface instanceof zzati) {
                        zzati = (zzati) queryLocalInterface;
                    } else {
                        zzati = new zzatl(readStrongBinder);
                    }
                }
                zza(zzatb, zzati);
                parcel2.writeNoException();
            } else if (i == 4) {
                zzatq zzatq = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface2 instanceof zzatk) {
                        zzatk4 = (zzatk) queryLocalInterface2;
                    } else {
                        zzatk4 = new zzatm(readStrongBinder2);
                    }
                }
                zza(zzatq, zzatk4);
                parcel2.writeNoException();
            } else if (i == 5) {
                zzatq zzatq2 = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface3 instanceof zzatk) {
                        zzatk3 = (zzatk) queryLocalInterface3;
                    } else {
                        zzatk3 = new zzatm(readStrongBinder3);
                    }
                }
                zzb(zzatq2, zzatk3);
                parcel2.writeNoException();
            } else if (i == 6) {
                zzatq zzatq3 = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface4 instanceof zzatk) {
                        zzatk2 = (zzatk) queryLocalInterface4;
                    } else {
                        zzatk2 = new zzatm(readStrongBinder4);
                    }
                }
                zzc(zzatq3, zzatk2);
                parcel2.writeNoException();
            } else if (i != 7) {
                return false;
            } else {
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface5 instanceof zzatk) {
                        zzatk = (zzatk) queryLocalInterface5;
                    } else {
                        zzatk = new zzatm(readStrongBinder5);
                    }
                }
                zza(readString, zzatk);
                parcel2.writeNoException();
            }
        } else {
            zzatd zza = zza((zzatb) zzgx.zza(parcel, zzatb.CREATOR));
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zza);
        }
        return true;
    }
}
