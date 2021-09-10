package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;

public final class zzcgx extends VideoController.VideoLifecycleCallbacks {
    private final zzccd zzgch;

    public zzcgx(zzccd zzccd) {
        this.zzgch = zzccd;
    }

    private static zzzd zza(zzccd zzccd) {
        zzzc videoController = zzccd.getVideoController();
        if (videoController == null) {
            return null;
        }
        try {
            return videoController.zzrg();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzzd zza = zza(this.zzgch);
        if (zza != null) {
            try {
                zza.onVideoEnd();
            } catch (RemoteException e) {
                zzazk.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzzd zza = zza(this.zzgch);
        if (zza != null) {
            try {
                zza.onVideoPause();
            } catch (RemoteException e) {
                zzazk.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzzd zza = zza(this.zzgch);
        if (zza != null) {
            try {
                zza.onVideoStart();
            } catch (RemoteException e) {
                zzazk.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }
}
