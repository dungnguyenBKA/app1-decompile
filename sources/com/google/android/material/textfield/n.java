package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* access modifiers changed from: package-private */
public abstract class n {
    TextInputLayout a;
    Context b;
    CheckableImageButton c;

    n(TextInputLayout textInputLayout) {
        this.a = textInputLayout;
        this.b = textInputLayout.getContext();
        this.c = textInputLayout.p();
    }

    /* access modifiers changed from: package-private */
    public abstract void a();

    /* access modifiers changed from: package-private */
    public boolean b(int i) {
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return false;
    }
}
