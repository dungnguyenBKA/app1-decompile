package com.google.android.material.textfield;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.appcompat.widget.AppCompatEditText;
import photoeditor.cutout.backgrounderaser.R;

public class TextInputEditText extends AppCompatEditText {
    public TextInputEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hb);
    }

    private TextInputLayout a() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public CharSequence getHint() {
        TextInputLayout a = a();
        if (a == null || !a.u()) {
            return super.getHint();
        }
        return a.r();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout a = a();
        if (a != null && a.u() && super.getHint() == null && Build.MANUFACTURER.equalsIgnoreCase("Meizu")) {
            setHint("");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            TextInputLayout a = a();
            editorInfo.hintText = a != null ? a.r() : null;
        }
        return onCreateInputConnection;
    }

    public TextInputEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
