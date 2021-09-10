package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;

public final class zzcce extends zzzb {
    private final Object lock = new Object();
    @Nullable
    private zzzc zzges;
    @Nullable
    private final zzanx zzget;

    public zzcce(@Nullable zzzc zzzc, @Nullable zzanx zzanx) {
        this.zzges = zzzc;
        this.zzget = zzanx;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() {
        zzanx zzanx = this.zzget;
        if (zzanx != null) {
            return zzanx.getVideoCurrentTime();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() {
        zzanx zzanx = this.zzget;
        if (zzanx != null) {
            return zzanx.getVideoDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzd) {
        synchronized (this.lock) {
            zzzc zzzc = this.zzges;
            if (zzzc != null) {
                zzzc.zza(zzzd);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() {
        synchronized (this.lock) {
            zzzc zzzc = this.zzges;
            if (zzzc == null) {
                return null;
            }
            return zzzc.zzrg();
        }
    }
}
