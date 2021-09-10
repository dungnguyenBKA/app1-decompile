package com.google.android.material.textfield;

import android.view.MotionEvent;
import android.view.View;
import android.widget.AutoCompleteTextView;

/* access modifiers changed from: package-private */
public class i implements View.OnTouchListener {
    final /* synthetic */ AutoCompleteTextView b;
    final /* synthetic */ h c;

    i(h hVar, AutoCompleteTextView autoCompleteTextView) {
        this.c = hVar;
        this.b = autoCompleteTextView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.c.s()) {
                this.c.g = false;
            }
            h.l(this.c, this.b);
            view.performClick();
        }
        return false;
    }
}
