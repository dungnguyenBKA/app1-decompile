package defpackage;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import cn.dreamtobe.kpswitch.R$styleable;
import cn.dreamtobe.kpswitch.a;

/* renamed from: s6  reason: default package */
public class s6 implements a {
    private final View b;
    private boolean c = false;
    private boolean d = false;
    private final int[] e = new int[2];
    private boolean f = false;

    public s6(View view, AttributeSet attributeSet) {
        this.b = view;
        if (attributeSet != null) {
            TypedArray typedArray = null;
            try {
                typedArray = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.a);
                this.d = typedArray.getBoolean(0, false);
                typedArray.recycle();
            } catch (Throwable th) {
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        }
    }

    public boolean a(int i) {
        if (i == 0) {
            this.c = false;
        }
        if (i == this.b.getVisibility()) {
            return true;
        }
        if (!this.f || i != 0) {
            return false;
        }
        return true;
    }

    @Override // cn.dreamtobe.kpswitch.a
    public boolean b() {
        return this.f;
    }

    @Override // cn.dreamtobe.kpswitch.a
    public void c() {
        this.c = true;
    }

    public int[] d(int i, int i2) {
        if (this.c) {
            this.b.setVisibility(8);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
            i2 = View.MeasureSpec.makeMeasureSpec(0, 1073741824);
            i = makeMeasureSpec;
        }
        int[] iArr = this.e;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    @Override // cn.dreamtobe.kpswitch.a
    public void e() {
        throw new IllegalAccessError("You can't invoke handle show in handler, please instead of handling in the panel layout, maybe just need invoke super.setVisibility(View.VISIBLE)");
    }

    public void f(int i) {
        if (!this.d) {
            u6.f(this.b, i);
        }
    }

    public void g(boolean z) {
        this.f = z;
    }

    @Override // cn.dreamtobe.kpswitch.a
    public boolean isVisible() {
        return !this.c;
    }
}
