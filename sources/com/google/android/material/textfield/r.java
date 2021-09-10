package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;

class r implements TextWatcher {
    final /* synthetic */ TextInputLayout b;

    r(TextInputLayout textInputLayout) {
        this.b = textInputLayout;
    }

    public void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.b;
        textInputLayout.S(!textInputLayout.q0);
        TextInputLayout textInputLayout2 = this.b;
        if (textInputLayout2.g) {
            textInputLayout2.N(editable.length());
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
