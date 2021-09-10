package com.google.android.gms.ads.formats;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.ads.zzazk;

@Deprecated
public final class NativeAppInstallAdView extends NativeAdView {
    public NativeAppInstallAdView(Context context) {
        super(context);
    }

    public final View getBodyView() {
        return b(NativeAppInstallAd.ASSET_BODY);
    }

    public final View getCallToActionView() {
        return b(NativeAppInstallAd.ASSET_CALL_TO_ACTION);
    }

    public final View getHeadlineView() {
        return b(NativeAppInstallAd.ASSET_HEADLINE);
    }

    public final View getIconView() {
        return b(NativeAppInstallAd.ASSET_ICON);
    }

    public final View getImageView() {
        return b(NativeAppInstallAd.ASSET_IMAGE);
    }

    public final MediaView getMediaView() {
        View b = b(NativeAppInstallAd.ASSET_MEDIA_VIDEO);
        if (b instanceof MediaView) {
            return (MediaView) b;
        }
        if (b == null) {
            return null;
        }
        zzazk.zzdy("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return b(NativeAppInstallAd.ASSET_PRICE);
    }

    public final View getStarRatingView() {
        return b(NativeAppInstallAd.ASSET_STAR_RATING);
    }

    public final View getStoreView() {
        return b(NativeAppInstallAd.ASSET_STORE);
    }

    public final void setBodyView(View view) {
        a(NativeAppInstallAd.ASSET_BODY, view);
    }

    public final void setCallToActionView(View view) {
        a(NativeAppInstallAd.ASSET_CALL_TO_ACTION, view);
    }

    public final void setHeadlineView(View view) {
        a(NativeAppInstallAd.ASSET_HEADLINE, view);
    }

    public final void setIconView(View view) {
        a(NativeAppInstallAd.ASSET_ICON, view);
    }

    public final void setImageView(View view) {
        a(NativeAppInstallAd.ASSET_IMAGE, view);
    }

    public final void setMediaView(MediaView mediaView) {
        a(NativeAppInstallAd.ASSET_MEDIA_VIDEO, mediaView);
    }

    public final void setPriceView(View view) {
        a(NativeAppInstallAd.ASSET_PRICE, view);
    }

    public final void setStarRatingView(View view) {
        a(NativeAppInstallAd.ASSET_STAR_RATING, view);
    }

    public final void setStoreView(View view) {
        a(NativeAppInstallAd.ASSET_STORE, view);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeAppInstallAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
