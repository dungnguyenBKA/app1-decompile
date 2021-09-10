package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* renamed from: cy  reason: default package */
public class cy extends Drawable implements ty, androidx.core.graphics.drawable.b {
    private b b;

    public cy(qy qyVar) {
        this.b = new b(new my(qyVar));
    }

    public void draw(Canvas canvas) {
        b bVar = this.b;
        if (bVar.b) {
            bVar.a.draw(canvas);
        }
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        this.b.a.e(qyVar);
    }

    public Drawable.ConstantState getConstantState() {
        return this.b;
    }

    public int getOpacity() {
        return this.b.a.getOpacity();
    }

    public boolean isStateful() {
        return true;
    }

    public Drawable mutate() {
        this.b = new b(this.b);
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.b.a.setBounds(rect);
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        if (this.b.a.setState(iArr)) {
            onStateChange = true;
        }
        boolean d = dy.d(iArr);
        b bVar = this.b;
        if (bVar.b == d) {
            return onStateChange;
        }
        bVar.b = d;
        return true;
    }

    public void setAlpha(int i) {
        this.b.a.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.a.setColorFilter(colorFilter);
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTint(int i) {
        this.b.a.setTint(i);
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.b.a.setTintList(colorStateList);
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.b.a.setTintMode(mode);
    }

    /* renamed from: cy$b */
    static final class b extends Drawable.ConstantState {
        my a;
        boolean b;

        public b(my myVar) {
            this.a = myVar;
            this.b = false;
        }

        public int getChangingConfigurations() {
            return 0;
        }

        public Drawable newDrawable() {
            return new cy(new b(this), null);
        }

        public b(b bVar) {
            this.a = (my) bVar.a.getConstantState().newDrawable();
            this.b = bVar.b;
        }
    }

    cy(b bVar, a aVar) {
        this.b = bVar;
    }
}
