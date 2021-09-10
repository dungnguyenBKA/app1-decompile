package com.google.android.material.textfield;

import android.view.View;

/* access modifiers changed from: package-private */
public class j implements View.OnFocusChangeListener {
    final /* synthetic */ h b;

    j(h hVar) {
        this.b = hVar;
    }

    public void onFocusChange(View view, boolean z) {
        this.b.a.y(z);
        if (!z) {
            h.e(this.b, false);
            this.b.g = false;
        }
    }
}
