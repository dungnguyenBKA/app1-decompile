package defpackage;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import defpackage.f;

/* access modifiers changed from: package-private */
@SuppressLint({"RestrictedAPI"})
/* renamed from: h  reason: default package */
public class h extends f {
    private a o;
    private boolean p;

    /* access modifiers changed from: package-private */
    /* renamed from: h$a */
    public static class a extends f.c {
        int[][] J;

        a(a aVar, h hVar, Resources resources) {
            super(aVar, hVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[this.g.length][];
            }
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.f.c
        public void i() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        /* access modifiers changed from: package-private */
        public int k(int[] iArr) {
            int[][] iArr2 = this.J;
            int i = this.h;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        public Drawable newDrawable() {
            return new h(this, null);
        }

        public Drawable newDrawable(Resources resources) {
            return new h(this, resources);
        }
    }

    h(a aVar, Resources resources) {
        f(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // defpackage.f
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.f
    public void f(f.c cVar) {
        super.f(cVar);
        if (cVar instanceof a) {
            this.o = (a) cVar;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: h */
    public a b() {
        return new a(this.o, this, null);
    }

    public boolean isStateful() {
        return true;
    }

    @Override // defpackage.f
    public Drawable mutate() {
        if (!this.p) {
            super.mutate();
            if (this == this) {
                this.o.i();
                this.p = true;
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.f
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int k = this.o.k(iArr);
        if (k < 0) {
            k = this.o.k(StateSet.WILD_CARD);
        }
        return e(k) || onStateChange;
    }

    h(a aVar) {
    }
}
