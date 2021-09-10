package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.v;
import photoeditor.cutout.backgrounderaser.R;

public final class e {
    private static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    private static e c;
    public static final /* synthetic */ int d = 0;
    private v a;

    /* access modifiers changed from: package-private */
    public static class a implements v.e {
        private final int[] a = {R.drawable.bp, R.drawable.bn, R.drawable.g};
        private final int[] b = {R.drawable.a4, R.drawable.b8, R.drawable.aa, R.drawable.a6, R.drawable.a7, R.drawable.a_, R.drawable.a9};
        private final int[] c = {R.drawable.bm, R.drawable.bo, R.drawable.x, R.drawable.bf, R.drawable.bg, R.drawable.bi, R.drawable.bk, R.drawable.bh, R.drawable.bj, R.drawable.bl};
        private final int[] d = {R.drawable.ay, R.drawable.v, R.drawable.ax};
        private final int[] e = {R.drawable.bd, R.drawable.bq};
        private final int[] f = {R.drawable.j, R.drawable.p, R.drawable.k, R.drawable.q};

        a() {
        }

        private boolean a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        private ColorStateList b(Context context, int i) {
            int b2 = d0.b(context, R.attr.e2);
            int a2 = d0.a(context, R.attr.e0);
            return new ColorStateList(new int[][]{d0.b, d0.d, d0.c, d0.f}, new int[]{a2, k1.b(b2, i), k1.b(b2, i), i});
        }

        private void d(Drawable drawable, int i, PorterDuff.Mode mode) {
            if (o.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = e.b;
            }
            drawable.setColorFilter(e.e(i, mode));
        }

        public ColorStateList c(Context context, int i) {
            if (i == R.drawable.a0) {
                return d.a(context, R.color.u);
            }
            if (i == R.drawable.bc) {
                return d.a(context, R.color.x);
            }
            if (i == R.drawable.bb) {
                int[][] iArr = new int[3][];
                int[] iArr2 = new int[3];
                ColorStateList c2 = d0.c(context, R.attr.ei);
                if (c2 == null || !c2.isStateful()) {
                    iArr[0] = d0.b;
                    iArr2[0] = d0.a(context, R.attr.ei);
                    iArr[1] = d0.e;
                    iArr2[1] = d0.b(context, R.attr.e1);
                    iArr[2] = d0.f;
                    iArr2[2] = d0.b(context, R.attr.ei);
                } else {
                    iArr[0] = d0.b;
                    iArr2[0] = c2.getColorForState(iArr[0], 0);
                    iArr[1] = d0.e;
                    iArr2[1] = d0.b(context, R.attr.e1);
                    iArr[2] = d0.f;
                    iArr2[2] = c2.getDefaultColor();
                }
                return new ColorStateList(iArr, iArr2);
            } else if (i == R.drawable.o) {
                return b(context, d0.b(context, R.attr.e0));
            } else {
                if (i == R.drawable.i) {
                    return b(context, 0);
                }
                if (i == R.drawable.n) {
                    return b(context, d0.b(context, R.attr.dy));
                }
                if (i == R.drawable.b_ || i == R.drawable.ba) {
                    return d.a(context, R.color.w);
                }
                if (a(this.b, i)) {
                    return d0.c(context, R.attr.e3);
                }
                if (a(this.e, i)) {
                    return d.a(context, R.color.t);
                }
                if (a(this.f, i)) {
                    return d.a(context, R.color.s);
                }
                if (i == R.drawable.b7) {
                    return d.a(context, R.color.v);
                }
                return null;
            }
        }

        public boolean e(Context context, int i, Drawable drawable) {
            if (i == R.drawable.b9) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                d(layerDrawable.findDrawableByLayerId(16908288), d0.b(context, R.attr.e3), e.b);
                d(layerDrawable.findDrawableByLayerId(16908303), d0.b(context, R.attr.e3), e.b);
                d(layerDrawable.findDrawableByLayerId(16908301), d0.b(context, R.attr.e1), e.b);
                return true;
            } else if (i != R.drawable.b0 && i != R.drawable.az && i != R.drawable.b1) {
                return false;
            } else {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                d(layerDrawable2.findDrawableByLayerId(16908288), d0.a(context, R.attr.e3), e.b);
                d(layerDrawable2.findDrawableByLayerId(16908303), d0.b(context, R.attr.e1), e.b);
                d(layerDrawable2.findDrawableByLayerId(16908301), d0.b(context, R.attr.e1), e.b);
                return true;
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x004a  */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x0065 A[RETURN] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean f(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
            /*
            // Method dump skipped, instructions count: 102
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.e.a.f(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }
    }

    public static synchronized e b() {
        e eVar;
        synchronized (e.class) {
            if (c == null) {
                h();
            }
            eVar = c;
        }
        return eVar;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter h;
        synchronized (e.class) {
            h = v.h(i, mode);
        }
        return h;
    }

    public static synchronized void h() {
        synchronized (e.class) {
            if (c == null) {
                e eVar = new e();
                c = eVar;
                eVar.a = v.d();
                c.a.m(new a());
            }
        }
    }

    public synchronized Drawable c(Context context, int i) {
        return this.a.f(context, i);
    }

    /* access modifiers changed from: package-private */
    public synchronized Drawable d(Context context, int i, boolean z) {
        return this.a.g(context, i, z);
    }

    /* access modifiers changed from: package-private */
    public synchronized ColorStateList f(Context context, int i) {
        return this.a.i(context, i);
    }

    public synchronized void g(Context context) {
        this.a.k(context);
    }
}
