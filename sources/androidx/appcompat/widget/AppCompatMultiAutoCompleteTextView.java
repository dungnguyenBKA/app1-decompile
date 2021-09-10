package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import photoeditor.cutout.backgrounderaser.R;

public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements b3 {
    private static final int[] d = {16843126};
    private final c b;
    private final k c;

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.am);
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

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
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

    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(d.b(getContext(), i));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        k kVar = this.c;
        if (kVar != null) {
            kVar.m(context, i);
        }
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        i0 u = i0.u(getContext(), attributeSet, d, i, 0);
        if (u.r(0)) {
            setDropDownBackgroundDrawable(u.g(0));
        }
        u.v();
        c cVar = new c(this);
        this.b = cVar;
        cVar.d(attributeSet, i);
        k kVar = new k(this);
        this.c = kVar;
        kVar.k(attributeSet, i);
        kVar.b();
    }
}
