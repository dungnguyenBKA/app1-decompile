package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class zzaoz extends zzanw {
    private final UnifiedNativeAdMapper zzdol;

    public zzaoz(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zzdol = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getAdvertiser() {
        return this.zzdol.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getBody() {
        return this.zzdol.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getCallToAction() {
        return this.zzdol.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final Bundle getExtras() {
        return this.zzdol.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getHeadline() {
        return this.zzdol.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdol.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzaed(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getMediaContentAspectRatio() {
        return this.zzdol.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final boolean getOverrideClickHandling() {
        return this.zzdol.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final boolean getOverrideImpressionRecording() {
        return this.zzdol.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getPrice() {
        return this.zzdol.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final double getStarRating() {
        if (this.zzdol.getStarRating() != null) {
            return this.zzdol.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final String getStore() {
        return this.zzdol.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzzc getVideoController() {
        if (this.zzdol.getVideoController() != null) {
            return this.zzdol.getVideoController().zzdw();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getVideoCurrentTime() {
        return this.zzdol.getCurrentTime();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final float getVideoDuration() {
        return this.zzdol.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void recordImpression() {
        this.zzdol.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzc(zv zvVar, zv zvVar2, zv zvVar3) {
        this.zzdol.trackViews((View) aw.P(zvVar), (HashMap) aw.P(zvVar2), (HashMap) aw.P(zvVar3));
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzaer zztn() {
        NativeAd.Image icon = this.zzdol.getIcon();
        if (icon != null) {
            return new zzaed(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zzaej zzto() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zztp() {
        Object zzjw = this.zzdol.zzjw();
        if (zzjw == null) {
            return null;
        }
        return aw.Q(zzjw);
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzu(zv zvVar) {
        this.zzdol.handleClick((View) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zzvg() {
        View adChoicesContent = this.zzdol.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return aw.Q(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final zv zzvh() {
        View zzaet = this.zzdol.zzaet();
        if (zzaet == null) {
            return null;
        }
        return aw.Q(zzaet);
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzw(zv zvVar) {
        this.zzdol.untrackView((View) aw.P(zvVar));
    }
}
