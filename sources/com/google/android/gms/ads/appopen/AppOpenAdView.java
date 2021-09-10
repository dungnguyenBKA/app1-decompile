package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzsj;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzxl;

@Deprecated
public final class AppOpenAdView extends ViewGroup {
    private AppOpenAd b;
    private AppOpenAdPresentationCallback c;

    public AppOpenAdView(Context context) {
        super(context);
        n.i(context, "Context cannot be null");
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
                zzxl zzdx = this.b.zzdx();
                if (zzdx != null) {
                    try {
                        zzvs zzkg = zzdx.zzkg();
                        if (zzkg != null) {
                            adSize = zzkg.zzqi();
                        }
                    } catch (RemoteException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
            } catch (NullPointerException e2) {
                zzazk.zzc("Unable to retrieve ad size.", e2);
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

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        zv zzke;
        try {
            zzxl zzdx = appOpenAd.zzdx();
            if (zzdx != null && (zzke = zzdx.zzke()) != null) {
                View view = (View) aw.P(zzke);
                if (view.getParent() == null) {
                    removeAllViews();
                    addView(view);
                    this.b = appOpenAd;
                    if (this.c != null) {
                        appOpenAd.zza(new zzsj(this.c));
                        return;
                    }
                    return;
                }
                zzazk.zzev("Trying to set AppOpenAd which is already in use.");
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.c = appOpenAdPresentationCallback;
        AppOpenAd appOpenAd = this.b;
        if (appOpenAd != null && appOpenAdPresentationCallback != null) {
            appOpenAd.zza(new zzsj(this.c));
        }
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
