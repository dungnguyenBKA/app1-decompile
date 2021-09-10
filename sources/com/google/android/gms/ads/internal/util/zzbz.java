package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbai;

public final class zzbz {
    private final View a;
    private Activity b;
    private boolean c;
    private boolean d;
    private boolean e;
    private ViewTreeObserver.OnGlobalLayoutListener f;

    public zzbz(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.b = activity;
        this.a = view;
        this.f = onGlobalLayoutListener;
    }

    private static ViewTreeObserver a(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void b() {
        ViewTreeObserver a2;
        if (!this.c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            if (onGlobalLayoutListener != null) {
                Activity activity = this.b;
                if (!(activity == null || (a2 = a(activity)) == null)) {
                    a2.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                zzr.zzlo();
                zzbai.zza(this.a, this.f);
            }
            this.c = true;
        }
    }

    private final void c() {
        ViewTreeObserver a2;
        Activity activity = this.b;
        if (activity != null && this.c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            if (!(onGlobalLayoutListener == null || (a2 = a(activity)) == null)) {
                zzr.zzkt();
                a2.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.c = false;
        }
    }

    public final void onAttachedToWindow() {
        this.d = true;
        if (this.e) {
            b();
        }
    }

    public final void onDetachedFromWindow() {
        this.d = false;
        c();
    }

    public final void zzj(Activity activity) {
        this.b = activity;
    }

    public final void zzzs() {
        this.e = true;
        if (this.d) {
            b();
        }
    }

    public final void zzzt() {
        this.e = false;
        c();
    }
}
