package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzvc;
import com.google.android.gms.internal.ads.zzzm;

/* access modifiers changed from: package-private */
public class BaseAdView extends ViewGroup {
    protected final zzzm b;

    public BaseAdView(Context context, int i) {
        super(context);
        this.b = new zzzm(this, i);
    }

    public void destroy() {
        this.b.destroy();
    }

    public AdListener getAdListener() {
        return this.b.getAdListener();
    }

    public AdSize getAdSize() {
        return this.b.getAdSize();
    }

    public String getAdUnitId() {
        return this.b.getAdUnitId();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        return this.b.getMediationAdapterClassName();
    }

    public ResponseInfo getResponseInfo() {
        return this.b.getResponseInfo();
    }

    public boolean isLoading() {
        return this.b.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
        this.b.zza(adRequest.zzds());
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
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

    public void pause() {
        this.b.pause();
    }

    public void resume() {
        this.b.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.b.setAdListener(adListener);
        if (adListener == null) {
            this.b.zza((zzvc) null);
            this.b.zza((AppEventListener) null);
            return;
        }
        if (adListener instanceof zzvc) {
            this.b.zza((zzvc) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.b.zza((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.b.setAdSizes(adSize);
    }

    public void setAdUnitId(String str) {
        this.b.setAdUnitId(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.b.setOnPaidEventListener(onPaidEventListener);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.b = new zzzm(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.b = new zzzm(this, attributeSet, false, i2);
    }
}
