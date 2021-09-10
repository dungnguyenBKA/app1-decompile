package com.google.android.gms.internal.ads;

import android.os.RemoteException;

public final class zzany extends zzzb {
    private final Object lock = new Object();
    private volatile zzzd zzdnk;

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() {
        throw new RemoteException();
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
            this.zzdnk = zzzd;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() {
        zzzd zzzd;
        synchronized (this.lock) {
            zzzd = this.zzdnk;
        }
        return zzzd;
    }
}
