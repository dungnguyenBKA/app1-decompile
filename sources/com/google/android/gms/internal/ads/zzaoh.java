package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class zzaoh extends zzanq {
    private final NativeAppInstallAdMapper zzdob;

    public zzaoh(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzdob = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getBody() {
        return this.zzdob.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getCallToAction() {
        return this.zzdob.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final Bundle getExtras() {
        return this.zzdob.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getHeadline() {
        return this.zzdob.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final List getImages() {
        List<NativeAd.Image> images = this.zzdob.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new zzaed(image.getDrawable(), image.getUri(), image.getScale(), image.getWidth(), image.getHeight()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideClickHandling() {
        return this.zzdob.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final boolean getOverrideImpressionRecording() {
        return this.zzdob.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getPrice() {
        return this.zzdob.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final double getStarRating() {
        return this.zzdob.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final String getStore() {
        return this.zzdob.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzzc getVideoController() {
        if (this.zzdob.getVideoController() != null) {
            return this.zzdob.getVideoController().zzdw();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void recordImpression() {
        this.zzdob.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzc(zv zvVar, zv zvVar2, zv zvVar3) {
        this.zzdob.trackViews((View) aw.P(zvVar), (HashMap) aw.P(zvVar2), (HashMap) aw.P(zvVar3));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaer zztn() {
        NativeAd.Image icon = this.zzdob.getIcon();
        if (icon != null) {
            return new zzaed(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.getWidth(), icon.getHeight());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zzaej zzto() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zztp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzu(zv zvVar) {
        this.zzdob.handleClick((View) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzv(zv zvVar) {
        this.zzdob.trackView((View) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zzvg() {
        View adChoicesContent = this.zzdob.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return aw.Q(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final zv zzvh() {
        View zzaet = this.zzdob.zzaet();
        if (zzaet == null) {
            return null;
        }
        return aw.Q(zzaet);
    }

    @Override // com.google.android.gms.internal.ads.zzanr
    public final void zzw(zv zvVar) {
        this.zzdob.untrackView((View) aw.P(zvVar));
    }
}
