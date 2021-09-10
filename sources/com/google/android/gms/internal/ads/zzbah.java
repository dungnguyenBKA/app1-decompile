package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zzbah extends zzbaj implements ViewTreeObserver.OnGlobalLayoutListener {
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> zzeit;

    public zzbah(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.zzeit = new WeakReference<>(onGlobalLayoutListener);
    }

    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzeit.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            detach();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbaj
    public final void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbaj
    public final void zzb(ViewTreeObserver viewTreeObserver) {
        zzr.zzkt();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }
}
