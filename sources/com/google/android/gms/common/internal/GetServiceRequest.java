package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.Objects;

public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new a0();
    private final int b;
    private final int c;
    private int d;
    String e;
    IBinder f;
    Scope[] g;
    Bundle h;
    Account i;
    Feature[] j;
    Feature[] k;
    private boolean l;
    private int m;

    public GetServiceRequest(int i2) {
        this.b = 4;
        this.d = d.a;
        this.c = i2;
        this.l = true;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int a = b.a(parcel);
        b.k(parcel, 1, this.b);
        b.k(parcel, 2, this.c);
        b.k(parcel, 3, this.d);
        b.r(parcel, 4, this.e, false);
        b.j(parcel, 5, this.f, false);
        b.u(parcel, 6, this.g, i2, false);
        b.e(parcel, 7, this.h, false);
        b.q(parcel, 8, this.i, i2, false);
        b.u(parcel, 10, this.j, i2, false);
        b.u(parcel, 11, this.k, i2, false);
        b.c(parcel, 12, this.l);
        b.k(parcel, 13, this.m);
        b.b(parcel, a);
    }

    GetServiceRequest(int i2, int i3, int i4, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i5) {
        this.b = i2;
        this.c = i3;
        this.d = i4;
        if ("com.google.android.gms".equals(str)) {
            this.e = "com.google.android.gms";
        } else {
            this.e = str;
        }
        if (i2 < 2) {
            Account account2 = null;
            if (iBinder != null) {
                h O = h.a.O(iBinder);
                int i6 = a.b;
                if (O != null) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        account2 = O.zza();
                    } catch (RemoteException unused) {
                        Log.w("AccountAccessor", "Remote account accessor probably died");
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
                Objects.requireNonNull(account2, "null reference");
            }
            this.i = account2;
        } else {
            this.f = iBinder;
            this.i = account;
        }
        this.g = scopeArr;
        this.h = bundle;
        this.j = featureArr;
        this.k = featureArr2;
        this.l = z;
        this.m = i5;
    }
}
