package com.google.android.gms.ads.formats;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaev;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
import com.vungle.warren.error.VungleException;

@Deprecated
public class NativeAdView extends FrameLayout {
    private final FrameLayout b;
    private final zzaev c = d();

    public NativeAdView(Context context) {
        super(context);
        this.b = c(context);
    }

    private final FrameLayout c(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzaev d() {
        n.i(this.b, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return zzwr.zzqo().zza(this.b.getContext(), this, this.b);
    }

    /* access modifiers changed from: protected */
    public final void a(String str, View view) {
        try {
            this.c.zzb(str, aw.Q(view));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.b);
    }

    /* access modifiers changed from: protected */
    public final View b(String str) {
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

    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.b;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        try {
            this.c.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("Unable to destroy native ad view", e);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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

    public AdChoicesView getAdChoicesView() {
        View b2 = b(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (b2 instanceof AdChoicesView) {
            return (AdChoicesView) b2;
        }
        return null;
    }

    public void onVisibilityChanged(View view, int i) {
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

    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.b);
    }

    public void removeView(View view) {
        if (this.b != view) {
            super.removeView(view);
        }
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        a(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.c.zza((zv) nativeAd.zzjs());
        } catch (RemoteException e) {
            zzazk.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = c(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = c(context);
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = c(context);
    }
}
