package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import java.util.List;

public final class zzafo implements NativeCustomTemplateAd {
    private final VideoController zzckl = new VideoController();
    private final zzafn zzdgf;
    private final MediaView zzdgg;
    private NativeCustomTemplateAd.DisplayOpenMeasurement zzdgh;

    public zzafo(zzafn zzafn) {
        Context context;
        this.zzdgf = zzafn;
        MediaView mediaView = null;
        try {
            context = (Context) aw.P(zzafn.zztr());
        } catch (RemoteException | NullPointerException e) {
            zzazk.zzc("", e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (this.zzdgf.zzp(aw.Q(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                zzazk.zzc("", e2);
            }
        }
        this.zzdgg = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.zzdgf.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.zzdgf.getAvailableAssetNames();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.zzdgf.getCustomTemplateId();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeCustomTemplateAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.zzdgh == null && this.zzdgf.zzts()) {
                this.zzdgh = new zzaen(this.zzdgf);
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
        return this.zzdgh;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            zzaer zzcu = this.zzdgf.zzcu(str);
            if (zzcu != null) {
                return new zzaes(zzcu);
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.zzdgf.zzct(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            zzzc videoController = this.zzdgf.getVideoController();
            if (videoController != null) {
                this.zzckl.zza(videoController);
            }
        } catch (RemoteException e) {
            zzazk.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.zzdgg;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.zzdgf.performClick(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.zzdgf.recordImpression();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    public final zzafn zztv() {
        return this.zzdgf;
    }
}
