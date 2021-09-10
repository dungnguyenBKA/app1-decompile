package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.ads.zzazk;

@Deprecated
public final class NativeContentAdView extends NativeAdView {
    public NativeContentAdView(Context context) {
        super(context);
    }

    public final View getAdvertiserView() {
        return b(NativeContentAd.ASSET_ADVERTISER);
    }

    public final View getBodyView() {
        return b(NativeContentAd.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return b(NativeContentAd.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return b(NativeContentAd.ASSET_HEADLINE);
    }

    public final View getImageView() {
        return b(NativeContentAd.ASSET_IMAGE);
    }

    public final View getLogoView() {
        return b(NativeContentAd.ASSET_LOGO);
    }

    public final MediaView getMediaView() {
        View b = b(NativeContentAd.ASSET_MEDIA_VIDEO);
        if (b instanceof MediaView) {
            return (MediaView) b;
        }
        if (b == null) {
            return null;
        }
        zzazk.zzdy("View is not an instance of MediaView");
        return null;
    }

    public final void setAdvertiserView(View view) {
        a(NativeContentAd.ASSET_ADVERTISER, view);
    }

    public final void setBodyView(View view) {
        a(NativeContentAd.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        a(NativeContentAd.ASSET_CALL_TO_ACTION, view);
    }

    public final void setHeadlineView(View view) {
        a(NativeContentAd.ASSET_HEADLINE, view);
    }

    public final void setImageView(View view) {
        a(NativeContentAd.ASSET_IMAGE, view);
    }

    public final void setLogoView(View view) {
        a(NativeContentAd.ASSET_LOGO, view);
    }

    public final void setMediaView(MediaView mediaView) {
        a(NativeContentAd.ASSET_MEDIA_VIDEO, mediaView);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeContentAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
