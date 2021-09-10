package com.facebook.ads.internal.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;

@Keep
public abstract class AdComponentFrameLayout extends FrameLayout implements AdComponentView {
    private AdComponentViewApi mAdComponentViewApi;
    private final AdComponentViewParentApi mAdComponentViewParentApi = new a();

    class a implements AdComponentViewParentApi {
        a() {
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            AdComponentFrameLayout.super.addView((AdComponentFrameLayout) view, (View) i, (int) layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void bringChildToFront(View view) {
            AdComponentFrameLayout.super.bringChildToFront(view);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onAttachedToWindow() {
            AdComponentFrameLayout.super.onAttachedToWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onDetachedFromWindow() {
            AdComponentFrameLayout.super.onDetachedFromWindow();
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onMeasure(int i, int i2) {
            AdComponentFrameLayout.super.onMeasure(i, i2);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void onVisibilityChanged(View view, int i) {
            AdComponentFrameLayout.super.onVisibilityChanged(view, i);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void onWindowFocusChanged(boolean z) {
            AdComponentFrameLayout.super.onWindowFocusChanged(z);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            AdComponentFrameLayout.super.setLayoutParams(layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentViewParentApi
        public void setMeasuredDimension(int i, int i2) {
            AdComponentFrameLayout.super.setMeasuredDimension(i, i2);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void addView(View view) {
            AdComponentFrameLayout.super.addView(view);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void addView(View view, int i) {
            AdComponentFrameLayout.super.addView((AdComponentFrameLayout) view, (View) i);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void addView(View view, ViewGroup.LayoutParams layoutParams) {
            AdComponentFrameLayout.super.addView((AdComponentFrameLayout) view, (View) layoutParams);
        }

        @Override // com.facebook.ads.internal.api.AdComponentView
        public void addView(View view, int i, int i2) {
            AdComponentFrameLayout.super.addView((AdComponentFrameLayout) view, (View) i, i2);
        }
    }

    public AdComponentFrameLayout(Context context) {
        super(context);
    }

    @Override // com.facebook.ads.internal.api.AdComponentView
    public void addView(View view) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view);
        } else {
            super.addView(view);
        }
    }

    /* access modifiers changed from: protected */
    public void attachAdComponentViewApi(AdComponentViewApiProvider adComponentViewApiProvider) {
        if (!DynamicLoaderFactory.isFallbackMode()) {
            if (this.mAdComponentViewApi == null) {
                adComponentViewApiProvider.getAdComponentViewApi().onAttachedToView(this, this.mAdComponentViewParentApi);
                this.mAdComponentViewApi = adComponentViewApiProvider.getAdComponentViewApi();
                return;
            }
            throw new IllegalStateException("AdComponentViewApi can't be attached more then once.");
        }
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"MissingSuperCall"})
    public void onAttachedToWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onAttachedToWindow();
        } else {
            super.onAttachedToWindow();
        }
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"MissingSuperCall"})
    public void onDetachedFromWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onDetachedFromWindow();
        } else {
            super.onDetachedFromWindow();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onMeasure(i, i2);
        } else {
            super.onMeasure(i, i2);
        }
    }

    /* access modifiers changed from: protected */
    public void onVisibilityChanged(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onVisibilityChanged(view, i);
        } else {
            super.onVisibilityChanged(view, i);
        }
    }

    @Override // com.facebook.ads.internal.api.AdComponentView
    public void onWindowFocusChanged(boolean z) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onWindowFocusChanged(z);
        } else {
            super.onWindowFocusChanged(z);
        }
    }

    @Override // com.facebook.ads.internal.api.AdComponentView
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.setLayoutParams(layoutParams);
        } else {
            super.setLayoutParams(layoutParams);
        }
    }

    public AdComponentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.facebook.ads.internal.api.AdComponentView, android.view.ViewGroup
    public void addView(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i);
        } else {
            super.addView(view, i);
        }
    }

    public AdComponentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AdComponentFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.facebook.ads.internal.api.AdComponentView, android.view.ViewGroup
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    @Override // com.facebook.ads.internal.api.AdComponentView, android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, i2);
        } else {
            super.addView(view, i, i2);
        }
    }

    @Override // com.facebook.ads.internal.api.AdComponentView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }
}
