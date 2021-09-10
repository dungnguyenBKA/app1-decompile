package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.a;
import androidx.core.widget.c;

/* access modifiers changed from: package-private */
public class d {
    private final CompoundButton a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    d(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        Drawable a2 = c.a(this.a);
        if (a2 == null) {
            return;
        }
        if (this.d || this.e) {
            Drawable mutate = a.j(a2).mutate();
            if (this.d) {
                a.g(mutate, this.b);
            }
            if (this.e) {
                a.h(mutate, this.c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.a.getDrawableState());
            }
            this.a.setButtonDrawable(mutate);
        }
    }

    /* access modifiers changed from: package-private */
    public ColorStateList b() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(android.util.AttributeSet r5, int r6) {
        /*
        // Method dump skipped, instructions count: 131
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.d.c(android.util.AttributeSet, int):void");
    }

    /* access modifiers changed from: package-private */
    public void d() {
        if (this.f) {
            this.f = false;
            return;
        }
        this.f = true;
        a();
    }

    /* access modifiers changed from: package-private */
    public void e(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        a();
    }

    /* access modifiers changed from: package-private */
    public void f(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        a();
    }
}
