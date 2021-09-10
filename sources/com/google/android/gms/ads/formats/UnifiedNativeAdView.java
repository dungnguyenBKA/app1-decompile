package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaem;
import com.google.android.gms.internal.ads.zzaev;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzzw;
import com.vungle.warren.error.VungleException;

@Deprecated
public final class UnifiedNativeAdView extends FrameLayout {
    private final FrameLayout b;
    private final zzaev c = f();

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.b = e(context);
    }

    private final void c(String str, View view) {
        try {
            this.c.zzb(str, aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    private final View d(String str) {
        try {
            zv zzco = this.c.zzco(str);
            if (zzco != null) {
                return (View) aw.P(zzco);
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    private final FrameLayout e(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzaev f() {
        n.i(this.b, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzwr.zzqo().zza(this.b.getContext(), this, this.b);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void a(ImageView.ScaleType scaleType) {
        if (scaleType != null) {
            try {
                this.c.zzh(aw.Q(scaleType));
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.b);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void b(MediaContent mediaContent) {
        try {
            if (mediaContent instanceof zzzw) {
                this.c.zza(((zzzw) mediaContent).zzrt());
            } else if (mediaContent == null) {
                this.c.zza((zzaem) null);
            } else {
                zzazk.zzdy("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setMediaContent on delegate", e);
        }
    }

    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.b;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final void destroy() {
        try {
            this.c.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("Unable to destroy native ad view", e);
        }
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        zzaev zzaev;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcso)).booleanValue() && (zzaev = this.c) != null) {
            try {
                zzaev.zzg(aw.Q(motionEvent));
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final AdChoicesView getAdChoicesView() {
        View d = d("3011");
        if (d instanceof AdChoicesView) {
            return (AdChoicesView) d;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return d("3005");
    }

    public final View getBodyView() {
        return d("3004");
    }

    public final View getCallToActionView() {
        return d("3002");
    }

    public final View getHeadlineView() {
        return d("3001");
    }

    public final View getIconView() {
        return d("3003");
    }

    public final View getImageView() {
        return d("3008");
    }

    public final MediaView getMediaView() {
        View d = d("3010");
        if (d instanceof MediaView) {
            return (MediaView) d;
        }
        if (d == null) {
            return null;
        }
        zzazk.zzdy("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return d("3007");
    }

    public final View getStarRatingView() {
        return d("3009");
    }

    public final View getStoreView() {
        return d("3006");
    }

    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzaev zzaev = this.c;
        if (zzaev != null) {
            try {
                zzaev.zzc(aw.Q(view), i);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.b);
    }

    public final void removeView(View view) {
        if (this.b != view) {
            super.removeView(view);
        }
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        c("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        c("3005", view);
    }

    public final void setBodyView(View view) {
        c("3004", view);
    }

    public final void setCallToActionView(View view) {
        c("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.c.zzf(aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        c("3001", view);
    }

    public final void setIconView(View view) {
        c("3003", view);
    }

    public final void setImageView(View view) {
        c("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        c("3010", mediaView);
        if (mediaView != null) {
            mediaView.a(new d(this));
            mediaView.b(new e(this));
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.c.zza((zv) unifiedNativeAd.zzjs());
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        c("3007", view);
    }

    public final void setStarRatingView(View view) {
        c("3009", view);
    }

    public final void setStoreView(View view) {
        c("3006", view);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = e(context);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = e(context);
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = e(context);
    }
}
