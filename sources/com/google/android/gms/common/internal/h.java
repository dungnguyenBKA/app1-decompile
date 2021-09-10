package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;

public interface h extends IInterface {

    public static abstract class a extends zza implements h {

        /* renamed from: com.google.android.gms.common.internal.h$a$a  reason: collision with other inner class name */
        public static class C0048a extends zzb implements h {
            C0048a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.h
            public final Account zza() {
                Parcel zza = zza(2, a_());
                Account account = (Account) zzd.zza(zza, Account.CREATOR);
                zza.recycle();
                return account;
            }
        }

        public static h O(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof h) {
                return (h) queryLocalInterface;
            }
            return new C0048a(iBinder);
        }
    }

    Account zza();
}
