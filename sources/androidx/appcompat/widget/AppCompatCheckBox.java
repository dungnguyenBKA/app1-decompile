package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.core.widget.f;
import photoeditor.cutout.backgrounderaser.R;

public class AppCompatCheckBox extends CheckBox implements f, b3 {
    private final d b;
    private final c c;
    private final k d;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.cp);
    }

    @Override // androidx.core.widget.f
    public void b(ColorStateList colorStateList) {
        d dVar = this.b;
        if (dVar != null) {
            dVar.e(colorStateList);
        }
    }

    @Override // androidx.core.widget.f
    public ColorStateList c() {
        d dVar = this.b;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // defpackage.b3
    public ColorStateList d() {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.c;
        if (cVar != null) {
            cVar.a();
        }
        k kVar = this.d;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // androidx.core.widget.f
    public void f(PorterDuff.Mode mode) {
        d dVar = this.b;
        if (dVar != null) {
            dVar.f(mode);
        }
    }

    @Override // defpackage.b3
    public PorterDuff.Mode g() {
        c cVar = this.c;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        d dVar = this.b;
        return compoundPaddingLeft;
    }

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.c;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        c cVar = this.c;
        if (cVar != null) {
            cVar.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        d dVar = this.b;
        if (dVar != null) {
            dVar.d();
        }
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        d dVar = new d(this);
        this.b = dVar;
        dVar.c(attributeSet, i);
        c cVar = new c(this);
        this.c = cVar;
        cVar.d(attributeSet, i);
        k kVar = new k(this);
        this.d = kVar;
        kVar.k(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(d.b(getContext(), i));
    }
}
