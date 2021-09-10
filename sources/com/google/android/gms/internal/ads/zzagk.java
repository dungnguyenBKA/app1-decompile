package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.zv;

public abstract class zzagk extends zzgy implements zzagl {
    public zzagk() {
        super("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    public static zzagl zzy(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        if (queryLocalInterface instanceof zzagl) {
            return (zzagl) queryLocalInterface;
        }
        return new zzagn(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        boolean zzm = zzm(zv.a.O(parcel.readStrongBinder()));
        parcel2.writeNoException();
        zzgx.writeBoolean(parcel2, zzm);
        return true;
    }
}
