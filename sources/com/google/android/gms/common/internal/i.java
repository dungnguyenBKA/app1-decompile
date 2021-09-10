package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzd;

public interface i extends IInterface {

    public static abstract class a extends zza implements i {
        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        /* access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.common.zza
        public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                ((b.j) this).O(parcel.readInt(), parcel.readStrongBinder(), (Bundle) zzd.zza(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                parcel.readInt();
                Bundle bundle = (Bundle) zzd.zza(parcel, Bundle.CREATOR);
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
            } else if (i != 3) {
                return false;
            } else {
                ((b.j) this).P(parcel.readInt(), parcel.readStrongBinder(), (zzc) zzd.zza(parcel, zzc.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }
}
