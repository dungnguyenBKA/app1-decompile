package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzaq;

public abstract class zzatn extends zzgy implements zzatk {
    public zzatn() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb((ParcelFileDescriptor) zzgx.zza(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zza((zzaq) zzgx.zza(parcel, zzaq.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
