package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzzm;

public final class SearchAdView extends ViewGroup {
    private final zzzm b;

    public SearchAdView(Context context) {
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

    public final String getAdUnitId() {
        return this.b.getAdUnitId();
    }

    public final void loadAd(SearchAdRequest searchAdRequest) {
        this.b.zza(searchAdRequest.a());
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

    public final void resume() {
        this.b.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.b.setAdListener(adListener);
    }

    public final void setAdSize(AdSize adSize) {
        this.b.setAdSizes(adSize);
    }

    public final void setAdUnitId(String str) {
        this.b.setAdUnitId(str);
    }

    public final void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (AdSize.SEARCH.equals(getAdSize())) {
            this.b.zza(dynamicHeightSearchAdRequest.a());
            return;
        }
        throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new zzzm(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new zzzm(this, attributeSet, false);
    }
}
