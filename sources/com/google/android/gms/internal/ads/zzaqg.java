package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.c;
import java.util.Set;

public final class zzaqg extends zzaqq {
    private static final Set<String> zzdpi = c.i("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private int height = -1;
    private final Object lock = new Object();
    private int width = -1;
    private zzaqt zzdhy;
    private final zzbeb zzdjd;
    private final Activity zzdoy;
    private String zzdpj = "top-right";
    private boolean zzdpk = true;
    private int zzdpl = 0;
    private int zzdpm = 0;
    private int zzdpn = 0;
    private int zzdpo = 0;
    private zzbft zzdpp;
    private ImageView zzdpq;
    private LinearLayout zzdpr;
    private PopupWindow zzdps;
    private RelativeLayout zzdpt;
    private ViewGroup zzdpu;

    public zzaqg(zzbeb zzbeb, zzaqt zzaqt) {
        super(zzbeb, "resize");
        this.zzdjd = zzbeb;
        this.zzdoy = zzbeb.zzabe();
        this.zzdhy = zzaqt;
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.lock) {
            this.zzdpl = i;
            this.zzdpm = i2;
            PopupWindow popupWindow = this.zzdps;
        }
    }

    public final void zzad(boolean z) {
        synchronized (this.lock) {
            PopupWindow popupWindow = this.zzdps;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.zzdpt.removeView(this.zzdjd.getView());
                ViewGroup viewGroup = this.zzdpu;
                if (viewGroup != null) {
                    viewGroup.removeView(this.zzdpq);
                    this.zzdpu.addView(this.zzdjd.getView());
                    this.zzdjd.zza(this.zzdpp);
                }
                if (z) {
                    zzdu("default");
                    zzaqt zzaqt = this.zzdhy;
                    if (zzaqt != null) {
                        zzaqt.zzvq();
                    }
                }
                this.zzdps = null;
                this.zzdpt = null;
                this.zzdpu = null;
                this.zzdpr = null;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:113:0x0220  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x0231  */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0233  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x028d  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0294  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzg(java.util.Map<java.lang.String, java.lang.String> r17) {
        /*
        // Method dump skipped, instructions count: 1246
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqg.zzg(java.util.Map):void");
    }

    public final void zzi(int i, int i2) {
        this.zzdpl = i;
        this.zzdpm = i2;
    }

    public final boolean zzvp() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdps != null;
        }
        return z;
    }
}
