package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.widget.b;
import androidx.core.widget.c;
import androidx.core.widget.g;

public class AppCompatTextView extends TextView implements b3, g, b {
    private final c b;
    private final k c;
    private final j d;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    @Override // androidx.core.widget.g
    public void a(PorterDuff.Mode mode) {
        this.c.s(mode);
        this.c.b();
    }

    @Override // defpackage.b3
    public ColorStateList d() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // defpackage.b3
    public PorterDuff.Mode g() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public int getAutoSizeMaxTextSize() {
        if (b.a) {
            return super.getAutoSizeMaxTextSize();
        }
        k kVar = this.c;
        if (kVar != null) {
            return kVar.e();
        }
        return -1;
    }

    public int getAutoSizeMinTextSize() {
        if (b.a) {
            return super.getAutoSizeMinTextSize();
        }
        k kVar = this.c;
        if (kVar != null) {
            return kVar.f();
        }
        return -1;
    }

    public int getAutoSizeStepGranularity() {
        if (b.a) {
            return super.getAutoSizeStepGranularity();
        }
        k kVar = this.c;
        if (kVar != null) {
            return kVar.g();
        }
        return -1;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        if (b.a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        k kVar = this.c;
        return kVar != null ? kVar.h() : new int[0];
    }

    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (!b.a) {
            k kVar = this.c;
            if (kVar != null) {
                return kVar.i();
            }
            return 0;
        } else if (super.getAutoSizeTextType() == 1) {
            return 1;
        } else {
            return 0;
        }
    }

    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public CharSequence getText() {
        return super.getText();
    }

    public TextClassifier getTextClassifier() {
        j jVar;
        if (Build.VERSION.SDK_INT >= 28 || (jVar = this.d) == null) {
            return super.getTextClassifier();
        }
        return jVar.a();
    }

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // androidx.core.widget.g
    public void i(ColorStateList colorStateList) {
        this.c.r(colorStateList);
        this.c.b();
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l0.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        k kVar = this.c;
        if (kVar != null) {
            kVar.l();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        k kVar = this.c;
        if (kVar != null && !b.a && kVar.j()) {
            this.c.c();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (b.a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.o(i, i2, i3, i4);
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (b.a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.p(iArr, i);
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (b.a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.q(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.b;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        c cVar = this.b;
        if (cVar != null) {
            cVar.f(i);
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(c.j(this, callback));
    }

    public void setFirstBaselineToTopHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i);
        } else {
            c.d(this, i);
        }
    }

    public void setLastBaselineToBottomHeight(int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i);
        } else {
            c.e(this, i);
        }
    }

    public void setLineHeight(int i) {
        c.f(this, i);
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        k kVar = this.c;
        if (kVar != null) {
            kVar.m(context, i);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        j jVar;
        if (Build.VERSION.SDK_INT >= 28 || (jVar = this.d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            jVar.b(textClassifier);
        }
    }

    public void setTextSize(int i, float f) {
        if (b.a) {
            super.setTextSize(i, f);
            return;
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.t(i, f);
        }
    }

    public void setTypeface(Typeface typeface, int i) {
        Typeface a = (typeface == null || i <= 0) ? null : m1.a(getContext(), typeface, i);
        if (a != null) {
            typeface = a;
        }
        super.setTypeface(typeface, i);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        c cVar = new c(this);
        this.b = cVar;
        cVar.d(attributeSet, i);
        k kVar = new k(this);
        this.c = kVar;
        kVar.k(attributeSet, i);
        kVar.b();
        this.d = new j(this);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? d.b(context, i) : null;
        Drawable b3 = i2 != 0 ? d.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? d.b(context, i3) : null;
        if (i4 != 0) {
            drawable = d.b(context, i4);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(b2, b3, b4, drawable);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable b2 = i != 0 ? d.b(context, i) : null;
        Drawable b3 = i2 != 0 ? d.b(context, i2) : null;
        Drawable b4 = i3 != 0 ? d.b(context, i3) : null;
        if (i4 != 0) {
            drawable = d.b(context, i4);
        }
        setCompoundDrawablesWithIntrinsicBounds(b2, b3, b4, drawable);
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }
}
