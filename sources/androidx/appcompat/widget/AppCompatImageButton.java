package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.core.widget.h;
import photoeditor.cutout.backgrounderaser.R;

public class AppCompatImageButton extends ImageButton implements b3, h {
    private final c b;
    private final f c;

    public AppCompatImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.k5);
    }

    @Override // androidx.core.widget.h
    public ColorStateList a() {
        f fVar = this.c;
        if (fVar != null) {
            return fVar.b();
        }
        return null;
    }

    @Override // androidx.core.widget.h
    public PorterDuff.Mode c() {
        f fVar = this.c;
        if (fVar != null) {
            return fVar.c();
        }
        return null;
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
        f fVar = this.c;
        if (fVar != null) {
            fVar.a();
        }
    }

    @Override // androidx.core.widget.h
    public void f(ColorStateList colorStateList) {
        f fVar = this.c;
        if (fVar != null) {
            fVar.g(colorStateList);
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

    public boolean hasOverlappingRendering() {
        return this.c.d() && super.hasOverlappingRendering();
    }

    @Override // androidx.core.widget.h
    public void i(PorterDuff.Mode mode) {
        f fVar = this.c;
        if (fVar != null) {
            fVar.h(mode);
        }
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.i(mode);
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

    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        f fVar = this.c;
        if (fVar != null) {
            fVar.a();
        }
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        f fVar = this.c;
        if (fVar != null) {
            fVar.a();
        }
    }

    public void setImageResource(int i) {
        this.c.f(i);
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        f fVar = this.c;
        if (fVar != null) {
            fVar.a();
        }
    }

    public AppCompatImageButton(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        c cVar = new c(this);
        this.b = cVar;
        cVar.d(attributeSet, i);
        f fVar = new f(this);
        this.c = fVar;
        fVar.e(attributeSet, i);
    }
}
