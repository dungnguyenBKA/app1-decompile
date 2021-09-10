package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.R$styleable;
import com.google.android.gms.common.internal.SignInButtonImpl;
import com.google.android.gms.common.internal.o;
import defpackage.bw;

public final class SignInButton extends FrameLayout implements View.OnClickListener {
    private int b;
    private int c;
    private View d;
    private View.OnClickListener e;

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.e;
        if (onClickListener != null && view == this.d) {
            onClickListener.onClick(this);
        }
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.d.setEnabled(z);
    }

    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.e = onClickListener;
        View view = this.d;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    /* JADX INFO: finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.a, 0, 0);
        try {
            this.b = obtainStyledAttributes.getInt(0, 0);
            this.c = obtainStyledAttributes.getInt(1, 2);
            obtainStyledAttributes.recycle();
            int i2 = this.b;
            int i3 = this.c;
            this.b = i2;
            this.c = i3;
            Context context2 = getContext();
            View view = this.d;
            if (view != null) {
                removeView(view);
            }
            try {
                this.d = o.a(context2, this.b, this.c);
            } catch (bw.a unused) {
                Log.w("SignInButton", "Sign in button not found, using placeholder instead");
                int i4 = this.b;
                int i5 = this.c;
                SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context2, null);
                signInButtonImpl.a(context2.getResources(), i4, i5);
                this.d = signInButtonImpl;
            }
            addView(this.d);
            this.d.setEnabled(isEnabled());
            this.d.setOnClickListener(this);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
