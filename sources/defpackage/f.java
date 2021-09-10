package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import defpackage.h;

/* access modifiers changed from: package-private */
/* renamed from: f  reason: default package */
public class f extends Drawable implements Drawable.Callback {
    public static final /* synthetic */ int n = 0;
    private c b;
    private Rect c;
    private Drawable d;
    private Drawable e;
    private int f = 255;
    private boolean g;
    private int h = -1;
    private boolean i;
    private Runnable j;
    private long k;
    private long l;
    private b m;

    /* access modifiers changed from: package-private */
    /* renamed from: f$a */
    public class a implements Runnable {
        a() {
        }

        public void run() {
            f.this.a(true);
            f.this.invalidateSelf();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: f$b */
    public static class b implements Drawable.Callback {
        private Drawable.Callback b;

        b() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.b;
            this.b = null;
            return callback;
        }

        public b b(Drawable.Callback callback) {
            this.b = callback;
            return this;
        }

        public void invalidateDrawable(Drawable drawable) {
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            Drawable.Callback callback = this.b;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.b;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: f$c */
    public static abstract class c extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;
        final f a;
        Resources b;
        int c = 160;
        int d;
        int e;
        SparseArray<Drawable.ConstantState> f;
        Drawable[] g;
        int h;
        boolean i;
        boolean j;
        Rect k;
        boolean l;
        boolean m;
        int n;
        int o;
        int p;
        int q;
        boolean r;
        int s;
        boolean t;
        boolean u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        int z;

        c(c cVar, f fVar, Resources resources) {
            Resources resources2;
            int i2 = 160;
            this.i = false;
            this.l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.a = fVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = cVar != null ? cVar.b : null;
            }
            this.b = resources2;
            int i3 = cVar != null ? cVar.c : 0;
            int i4 = f.n;
            i3 = resources != null ? resources.getDisplayMetrics().densityDpi : i3;
            i2 = i3 != 0 ? i3 : i2;
            this.c = i2;
            if (cVar != null) {
                this.d = cVar.d;
                this.e = cVar.e;
                this.v = true;
                this.w = true;
                this.i = cVar.i;
                this.l = cVar.l;
                this.x = cVar.x;
                this.y = cVar.y;
                this.z = cVar.z;
                this.A = cVar.A;
                this.B = cVar.B;
                this.C = cVar.C;
                this.D = cVar.D;
                this.E = cVar.E;
                this.F = cVar.F;
                this.G = cVar.G;
                this.H = cVar.H;
                this.I = cVar.I;
                if (cVar.c == i2) {
                    if (cVar.j) {
                        this.k = new Rect(cVar.k);
                        this.j = true;
                    }
                    if (cVar.m) {
                        this.n = cVar.n;
                        this.o = cVar.o;
                        this.p = cVar.p;
                        this.q = cVar.q;
                        this.m = true;
                    }
                }
                if (cVar.r) {
                    this.s = cVar.s;
                    this.r = true;
                }
                if (cVar.t) {
                    this.u = cVar.u;
                    this.t = true;
                }
                Drawable[] drawableArr = cVar.g;
                this.g = new Drawable[drawableArr.length];
                this.h = cVar.h;
                SparseArray<Drawable.ConstantState> sparseArray = cVar.f;
                if (sparseArray != null) {
                    this.f = sparseArray.clone();
                } else {
                    this.f = new SparseArray<>(this.h);
                }
                int i5 = this.h;
                for (int i6 = 0; i6 < i5; i6++) {
                    if (drawableArr[i6] != null) {
                        Drawable.ConstantState constantState = drawableArr[i6].getConstantState();
                        if (constantState != null) {
                            this.f.put(i6, constantState);
                        } else {
                            this.g[i6] = drawableArr[i6];
                        }
                    }
                }
                return;
            }
            this.g = new Drawable[10];
            this.h = 0;
        }

        private void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    int keyAt = this.f.keyAt(i2);
                    Drawable[] drawableArr = this.g;
                    Drawable newDrawable = this.f.valueAt(i2).newDrawable(this.b);
                    if (Build.VERSION.SDK_INT >= 23) {
                        newDrawable.setLayoutDirection(this.z);
                    }
                    Drawable mutate = newDrawable.mutate();
                    mutate.setCallback(this.a);
                    drawableArr[keyAt] = mutate;
                }
                this.f = null;
            }
        }

        public final int a(Drawable drawable) {
            int i2 = this.h;
            if (i2 >= this.g.length) {
                int i3 = i2 + 10;
                h.a aVar = (h.a) this;
                Drawable[] drawableArr = new Drawable[i3];
                System.arraycopy(aVar.g, 0, drawableArr, 0, i2);
                aVar.g = drawableArr;
                int[][] iArr = new int[i3][];
                System.arraycopy(aVar.J, 0, iArr, 0, i2);
                aVar.J = iArr;
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.a);
            this.g[i2] = drawable;
            this.h++;
            this.e = drawable.getChangingConfigurations() | this.e;
            this.r = false;
            this.t = false;
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i2;
        }

        /* access modifiers changed from: package-private */
        public final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i2 = this.h;
                Drawable[] drawableArr = this.g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        this.e |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                j(theme.getResources());
            }
        }

        public synchronized boolean c() {
            if (this.v) {
                return this.w;
            }
            e();
            this.v = true;
            int i2 = this.h;
            Drawable[] drawableArr = this.g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }

        public boolean canApplyTheme() {
            int i2 = this.h;
            Drawable[] drawableArr = this.g;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: protected */
        public void d() {
            this.m = true;
            e();
            int i2 = this.h;
            Drawable[] drawableArr = this.g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final Drawable f(int i2) {
            int indexOfKey;
            Drawable drawable = this.g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i2)) < 0) {
                return null;
            }
            Drawable newDrawable = this.f.valueAt(indexOfKey).newDrawable(this.b);
            if (Build.VERSION.SDK_INT >= 23) {
                newDrawable.setLayoutDirection(this.z);
            }
            Drawable mutate = newDrawable.mutate();
            mutate.setCallback(this.a);
            this.g[i2] = mutate;
            this.f.removeAt(indexOfKey);
            if (this.f.size() == 0) {
                this.f = null;
            }
            return mutate;
        }

        public final Rect g() {
            Rect rect = null;
            if (this.i) {
                return null;
            }
            Rect rect2 = this.k;
            if (rect2 != null || this.j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i2 = this.h;
            Drawable[] drawableArr = this.g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i4 = rect3.left;
                    if (i4 > rect.left) {
                        rect.left = i4;
                    }
                    int i5 = rect3.top;
                    if (i5 > rect.top) {
                        rect.top = i5;
                    }
                    int i6 = rect3.right;
                    if (i6 > rect.right) {
                        rect.right = i6;
                    }
                    int i7 = rect3.bottom;
                    if (i7 > rect.bottom) {
                        rect.bottom = i7;
                    }
                }
            }
            this.j = true;
            this.k = rect;
            return rect;
        }

        public int getChangingConfigurations() {
            return this.d | this.e;
        }

        public final int h() {
            if (this.r) {
                return this.s;
            }
            e();
            int i2 = this.h;
            Drawable[] drawableArr = this.g;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        /* access modifiers changed from: package-private */
        public abstract void i();

        /* access modifiers changed from: package-private */
        public final void j(Resources resources) {
            if (resources != null) {
                this.b = resources;
                int i2 = f.n;
                int i3 = resources.getDisplayMetrics().densityDpi;
                if (i3 == 0) {
                    i3 = 160;
                }
                int i4 = this.c;
                this.c = i3;
                if (i4 != i3) {
                    this.m = false;
                    this.j = false;
                }
            }
        }
    }

    f() {
    }

    private void d(Drawable drawable) {
        if (this.m == null) {
            this.m = new b();
        }
        b bVar = this.m;
        bVar.b(drawable.getCallback());
        drawable.setCallback(bVar);
        try {
            if (this.b.A <= 0 && this.g) {
                drawable.setAlpha(this.f);
            }
            c cVar = this.b;
            if (cVar.E) {
                drawable.setColorFilter(cVar.D);
            } else {
                if (cVar.H) {
                    androidx.core.graphics.drawable.a.g(drawable, cVar.F);
                }
                c cVar2 = this.b;
                if (cVar2.I) {
                    androidx.core.graphics.drawable.a.h(drawable, cVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.b.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            drawable.setAutoMirrored(this.b.C);
            Rect rect = this.c;
            if (i2 >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006a A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r14) {
        /*
        // Method dump skipped, instructions count: 117
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f.a(boolean):void");
    }

    public void applyTheme(Resources.Theme theme) {
        this.b.b(theme);
    }

    /* access modifiers changed from: package-private */
    public c b() {
        throw null;
    }

    /* access modifiers changed from: package-private */
    public int c() {
        return this.h;
    }

    public boolean canApplyTheme() {
        return this.b.canApplyTheme();
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0073  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean e(int r10) {
        /*
        // Method dump skipped, instructions count: 125
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f.e(int):boolean");
    }

    /* access modifiers changed from: package-private */
    public void f(c cVar) {
        this.b = cVar;
        int i2 = this.h;
        if (i2 >= 0) {
            Drawable f2 = cVar.f(i2);
            this.d = f2;
            if (f2 != null) {
                d(f2);
            }
        }
        this.e = null;
    }

    /* access modifiers changed from: package-private */
    public final void g(Resources resources) {
        this.b.j(resources);
    }

    public int getAlpha() {
        return this.f;
    }

    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.b.getChangingConfigurations();
    }

    public final Drawable.ConstantState getConstantState() {
        if (!this.b.c()) {
            return null;
        }
        this.b.d = getChangingConfigurations();
        return this.b;
    }

    public Drawable getCurrent() {
        return this.d;
    }

    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.c;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    public int getIntrinsicHeight() {
        c cVar = this.b;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.d();
            }
            return cVar.o;
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    public int getIntrinsicWidth() {
        c cVar = this.b;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.d();
            }
            return cVar.n;
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    public int getMinimumHeight() {
        c cVar = this.b;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.d();
            }
            return cVar.q;
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    public int getMinimumWidth() {
        c cVar = this.b;
        if (cVar.l) {
            if (!cVar.m) {
                cVar.d();
            }
            return cVar.p;
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    public int getOpacity() {
        Drawable drawable = this.d;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.b.h();
    }

    public void getOutline(Outline outline) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    public boolean getPadding(Rect rect) {
        boolean z;
        Rect g2 = this.b.g();
        boolean z2 = true;
        if (g2 != null) {
            rect.set(g2);
            z = (g2.right | ((g2.left | g2.top) | g2.bottom)) != 0;
        } else {
            Drawable drawable = this.d;
            if (drawable != null) {
                z = drawable.getPadding(rect);
            } else {
                z = super.getPadding(rect);
            }
        }
        if (!isAutoMirrored() || androidx.core.graphics.drawable.a.b(this) != 1) {
            z2 = false;
        }
        if (z2) {
            int i2 = rect.left;
            rect.left = rect.right;
            rect.right = i2;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.r = false;
            cVar.t = false;
        }
        if (drawable == this.d && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public boolean isAutoMirrored() {
        return this.b.C;
    }

    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.e;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.e = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.g) {
                this.d.setAlpha(this.f);
            }
        }
        if (this.l != 0) {
            this.l = 0;
            z = true;
        }
        if (this.k != 0) {
            this.k = 0;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    public Drawable mutate() {
        if (!this.i && super.mutate() == this) {
            c b2 = b();
            b2.i();
            f(b2);
            this.i = true;
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    public boolean onLayoutDirectionChanged(int i2) {
        c cVar = this.b;
        int i3 = this.h;
        int i4 = cVar.h;
        Drawable[] drawableArr = cVar.g;
        boolean z = false;
        for (int i5 = 0; i5 < i4; i5++) {
            if (drawableArr[i5] != null) {
                boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                if (i5 == i3) {
                    z = layoutDirection;
                }
            }
        }
        cVar.z = i2;
        return z;
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i2) {
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.e;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable == this.d && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        if (!this.g || this.f != i2) {
            this.g = true;
            this.f = i2;
            Drawable drawable = this.d;
            if (drawable == null) {
                return;
            }
            if (this.k == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    public void setAutoMirrored(boolean z) {
        c cVar = this.b;
        if (cVar.C != z) {
            cVar.C = z;
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.b;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public void setDither(boolean z) {
        c cVar = this.b;
        if (cVar.x != z) {
            cVar.x = z;
            Drawable drawable = this.d;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.c(drawable, f2, f3);
        }
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.c;
        if (rect == null) {
            this.c = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.d;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.d(drawable, i2, i3, i4, i5);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.b;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            androidx.core.graphics.drawable.a.g(this.d, colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.b;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            androidx.core.graphics.drawable.a.h(this.d, mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.d && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }
}
