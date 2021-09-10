package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public abstract class zzbav extends TextureView implements zzbbs {
    protected final zzbbf zzeju = new zzbbf();
    protected final zzbbp zzejv;

    public zzbav(Context context) {
        super(context);
        this.zzejv = new zzbbp(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract long getTotalBytes();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzbaw zzbaw);

    public abstract String zzaad();

    public abstract long zzaah();

    public abstract int zzaai();

    @Override // com.google.android.gms.internal.ads.zzbbs
    public abstract void zzaaj();

    public void zzb(String str, String[] strArr) {
        setVideoPath(str);
    }

    public void zzdk(int i) {
    }

    public void zzdl(int i) {
    }

    public void zzdm(int i) {
    }

    public void zzdn(int i) {
    }

    public void zzdo(int i) {
    }

    public abstract long zznb();
}
