package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.zzbeb;

public final class zzi {
    public final Context context;
    public final int index;
    public final ViewGroup parent;
    public final ViewGroup.LayoutParams zzdsi;

    public zzi(zzbeb zzbeb) {
        this.zzdsi = zzbeb.getLayoutParams();
        ViewParent parent2 = zzbeb.getParent();
        this.context = zzbeb.zzacs();
        if (parent2 == null || !(parent2 instanceof ViewGroup)) {
            throw new c("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent2;
        this.parent = viewGroup;
        this.index = viewGroup.indexOfChild(zzbeb.getView());
        viewGroup.removeView(zzbeb.getView());
        zzbeb.zzay(true);
    }
}
