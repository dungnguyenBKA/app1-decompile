package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzxl;
import com.google.android.gms.internal.ads.zzzm;

@Deprecated
public final class PublisherAdView extends ViewGroup {
    private final zzzm b;

    public PublisherAdView(Context context) {
        super(context);
        this.b = new zzzm(this);
    }

    public final void destroy() {
        this.b.destroy();
    }

    public final AdListener getAdListener() {
        return this.b.getAdListener();
    }

    public final AdSize getAdSize() {
        return this.b.getAdSize();
    }

    public final AdSize[] getAdSizes() {
        return this.b.getAdSizes();
    }

    public final String getAdUnitId() {
        return this.b.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.b.zzrr();
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        return this.b.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.b.getOnCustomRenderedAdLoadedListener();
    }

    public final ResponseInfo getResponseInfo() {
        return this.b.getResponseInfo();
    }

    public final VideoController getVideoController() {
        return this.b.getVideoController();
    }

    public final VideoOptions getVideoOptions() {
        return this.b.getVideoOptions();
    }

    public final boolean isLoading() {
        return this.b.isLoading();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.b.zza(publisherAdRequest.zzds());
    }

    /* access modifiers changed from: protected */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    /* access modifiers changed from: protected */
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzazk.zzc("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
                i4 = widthInPixels;
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public final void pause() {
        this.b.pause();
    }

    public final void recordManualImpression() {
        this.b.recordManualImpression();
    }

    public final void resume() {
        this.b.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.b.setAdListener(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.b.zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.b.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.b.zza(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.b.setManualImpressionsEnabled(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.b.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.b.setVideoOptions(videoOptions);
    }

    public final boolean zza(zzxl zzxl) {
        return this.b.zza(zzxl);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new zzzm(this, attributeSet, true);
        n.i(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new zzzm(this, attributeSet, true);
    }
}
