package com.google.android.material.internal;

import android.os.Build;
import android.view.View;

/* access modifiers changed from: package-private */
public final class k implements View.OnAttachStateChangeListener {
    k() {
    }

    public void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        int i = c3.g;
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else {
            view.requestFitSystemWindows();
        }
    }

    public void onViewDetachedFromWindow(View view) {
    }
}
