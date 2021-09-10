package com.google.android.gms.internal.ads;

import android.os.Parcel;

public abstract class zzzg extends zzgy implements zzzd {
    public zzzg() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgy
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            onVideoStart();
        } else if (i == 2) {
            onVideoPlay();
        } else if (i == 3) {
            onVideoPause();
        } else if (i == 4) {
            onVideoEnd();
        } else if (i != 5) {
            return false;
        } else {
            onVideoMute(zzgx.zza(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
