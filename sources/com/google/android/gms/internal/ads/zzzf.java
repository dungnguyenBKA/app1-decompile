package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

public final class zzzf extends zzgw implements zzzd {
    zzzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoEnd() {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoMute(boolean z) {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPause() {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoPlay() {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void onVideoStart() {
        zzb(1, zzdo());
    }
}
