package com.google.android.material.textfield;

import android.widget.AutoCompleteTextView;

/* access modifiers changed from: package-private */
public class k implements AutoCompleteTextView.OnDismissListener {
    final /* synthetic */ h a;

    k(h hVar) {
        this.a = hVar;
    }

    public void onDismiss() {
        this.a.g = true;
        this.a.i = System.currentTimeMillis();
        h.e(this.a, false);
    }
}
