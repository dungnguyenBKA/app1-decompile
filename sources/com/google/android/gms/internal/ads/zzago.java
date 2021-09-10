package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzago extends zzgw implements zzagm {
    zzago(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzagm
    public final void onUnconfirmedClickCancelled() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzagm
    public final void onUnconfirmedClickReceived(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(1, zzdo);
    }
}
