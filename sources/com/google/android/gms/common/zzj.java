package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.k0;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import javax.annotation.Nullable;

public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new u();
    private final String b;
    @Nullable
    private final m c;
    private final boolean d;
    private final boolean e;

    zzj(String str, @Nullable IBinder iBinder, boolean z, boolean z2) {
        byte[] bArr;
        this.b = str;
        p pVar = null;
        if (iBinder != null) {
            try {
                zv zzb = k0.O(iBinder).zzb();
                if (zzb == null) {
                    bArr = null;
                } else {
                    bArr = (byte[]) aw.P(zzb);
                }
                if (bArr != null) {
                    pVar = new p(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e2) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e2);
            }
        }
        this.c = pVar;
        this.d = z;
        this.e = z2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        IBinder iBinder;
        int a = b.a(parcel);
        b.r(parcel, 1, this.b, false);
        m mVar = this.c;
        if (mVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            iBinder = null;
        } else {
            iBinder = mVar.asBinder();
        }
        b.j(parcel, 2, iBinder, false);
        b.c(parcel, 3, this.d);
        b.c(parcel, 4, this.e);
        b.b(parcel, a);
    }

    zzj(String str, @Nullable m mVar, boolean z, boolean z2) {
        this.b = str;
        this.c = mVar;
        this.d = z;
        this.e = z2;
    }
}
