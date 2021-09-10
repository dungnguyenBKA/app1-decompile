package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdw implements ViewTreeObserver.OnScrollChangedListener {
    private final String zzdlo;
    private final View zzggv;
    private final zzbeb zzggw;
    private final WindowManager.LayoutParams zzggx;
    private final int zzggy;
    private final WindowManager zzggz;

    zzcdw(View view, zzbeb zzbeb, String str, WindowManager.LayoutParams layoutParams, int i, WindowManager windowManager) {
        this.zzggv = view;
        this.zzggw = zzbeb;
        this.zzdlo = str;
        this.zzggx = layoutParams;
        this.zzggy = i;
        this.zzggz = windowManager;
    }

    public final void onScrollChanged() {
        View view = this.zzggv;
        zzbeb zzbeb = this.zzggw;
        String str = this.zzdlo;
        WindowManager.LayoutParams layoutParams = this.zzggx;
        int i = this.zzggy;
        WindowManager windowManager = this.zzggz;
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect) && zzbeb.getView().getWindowToken() != null) {
            if ("1".equals(str) || "2".equals(str)) {
                layoutParams.y = rect.bottom - i;
            } else {
                layoutParams.y = rect.top - i;
            }
            windowManager.updateViewLayout(zzbeb.getView(), layoutParams);
        }
    }
}
