package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class zzgw implements IInterface {
    private final IBinder zzacj;
    private final String zzack;

    protected zzgw(IBinder iBinder, String str) {
        this.zzacj = iBinder;
        this.zzack = str;
    }

    public IBinder asBinder() {
        return this.zzacj;
    }

    /* access modifiers changed from: protected */
    public final Parcel zza(int i, Parcel parcel) {
        parcel = Parcel.obtain();
        try {
            this.zzacj.transact(i, parcel, parcel, 0);
            parcel.readException();
            return parcel;
        } catch (RuntimeException e) {
            throw e;
        } finally {
            parcel.recycle();
        }
    }

    /* access modifiers changed from: protected */
    public final void zzb(int i, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.zzacj.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* access modifiers changed from: protected */
    public final void zzc(int i, Parcel parcel) {
        try {
            this.zzacj.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* access modifiers changed from: protected */
    public final Parcel zzdo() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzack);
        return obtain;
    }
}
