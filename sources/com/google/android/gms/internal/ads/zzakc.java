package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;

public final class zzakc extends InstreamAd {
    private MediaContent zzbnl = zzug();
    private VideoController zzckl = zzuf();
    private final zzajv zzdjb;

    public zzakc(zzajv zzajv) {
        this.zzdjb = zzajv;
    }

    private final VideoController zzuf() {
        VideoController videoController = new VideoController();
        try {
            videoController.zza(this.zzdjb.getVideoController());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return videoController;
    }

    private final MediaContent zzug() {
        try {
            if (this.zzdjb.zzty() != null) {
                return new zzzw(this.zzdjb.zzty());
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void destroy() {
        try {
            this.zzdjb.destroy();
            this.zzckl = null;
            this.zzbnl = null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getAspectRatio() {
        VideoController videoController = this.zzckl;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getAspectRatio();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final MediaContent getMediaContent() {
        return this.zzbnl;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final VideoController getVideoController() {
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoCurrentTime() {
        VideoController videoController = this.zzckl;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoCurrentTime();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoDuration() {
        VideoController videoController = this.zzckl;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoDuration();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void zza(InstreamAdView instreamAdView) {
        if (instreamAdView == null) {
            zzazk.zzev("showInView: parameter view must not be null.");
            return;
        }
        try {
            this.zzdjb.zzr(aw.Q(instreamAdView));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
