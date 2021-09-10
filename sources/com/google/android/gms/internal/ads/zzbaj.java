package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public abstract class zzbaj {
    private final WeakReference<View> zzeiu;

    public zzbaj(View view) {
        this.zzeiu = new WeakReference<>(view);
    }

    private final ViewTreeObserver getViewTreeObserver() {
        ViewTreeObserver viewTreeObserver;
        View view = this.zzeiu.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void attach() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver != null) {
            zza(viewTreeObserver);
        }
    }

    public final void detach() {
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver != null) {
            zzb(viewTreeObserver);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void zza(ViewTreeObserver viewTreeObserver);

    /* access modifiers changed from: protected */
    public abstract void zzb(ViewTreeObserver viewTreeObserver);
}
