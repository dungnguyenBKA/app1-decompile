package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzaq;

public final class zzatm extends zzgw implements zzatk {
    zzatm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zza(zzaq zzaq) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaq);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, parcelFileDescriptor);
        zzb(1, zzdo);
    }
}
