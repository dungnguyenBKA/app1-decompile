package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.google.android.gms.common.util.c;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
public final class zzcig {
    private Context context;
    private PopupWindow zzgkf;

    private static PopupWindow zzd(Context context2, View view) {
        Window window = context2 instanceof Activity ? ((Activity) context2).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) context2).isDestroyed()) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context2);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(view, -1, -1);
        PopupWindow popupWindow = new PopupWindow((View) frameLayout, 1, 1, false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setClippingEnabled(false);
        zzazk.zzdy("Displaying the 1x1 popup off the screen.");
        try {
            popupWindow.showAtLocation(window.getDecorView(), 0, -1, -1);
            return popupWindow;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void zzapr() {
        Context context2 = this.context;
        if (context2 != null && this.zzgkf != null) {
            if (!(context2 instanceof Activity) || !((Activity) context2).isDestroyed()) {
                if (this.zzgkf.isShowing()) {
                    this.zzgkf.dismiss();
                }
                this.context = null;
                this.zzgkf = null;
                return;
            }
            this.context = null;
            this.zzgkf = null;
        }
    }

    public final void zzc(Context context2, View view) {
        if (!c.b()) {
            PopupWindow zzd = zzd(context2, view);
            this.zzgkf = zzd;
            if (zzd == null) {
                context2 = null;
            }
            this.context = context2;
        }
    }
}
