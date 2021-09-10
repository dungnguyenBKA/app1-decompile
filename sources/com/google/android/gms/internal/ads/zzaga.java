package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzaga extends zzgw implements zzafy {
    zzaga(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza(zzafn zzafn) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafn);
        zzb(1, zzdo);
    }
}
