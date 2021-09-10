package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import defpackage.l1;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: y4  reason: default package */
public class y4 extends x4 {
    static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
    private h c;
    private PorterDuffColorFilter d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private final float[] h;
    private final Matrix i;
    private final Rect j;

    /* access modifiers changed from: private */
    /* renamed from: y4$b */
    public static class b extends f {
        b() {
        }

        @Override // defpackage.y4.f
        public boolean c() {
            return true;
        }

        b(b bVar) {
            super(bVar);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$e */
    public static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }

        e(a aVar) {
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$h */
    public static class h extends Drawable.ConstantState {
        int a;
        g b;
        ColorStateList c;
        PorterDuff.Mode d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public h(h hVar) {
            this.c = null;
            this.d = y4.k;
            if (hVar != null) {
                this.a = hVar.a;
                g gVar = new g(hVar.b);
                this.b = gVar;
                if (hVar.b.e != null) {
                    gVar.e = new Paint(hVar.b.e);
                }
                if (hVar.b.d != null) {
                    this.b.d = new Paint(hVar.b.d);
                }
                this.c = hVar.c;
                this.d = hVar.d;
                this.e = hVar.e;
            }
        }

        public boolean a() {
            g gVar = this.b;
            if (gVar.o == null) {
                gVar.o = Boolean.valueOf(gVar.h.a());
            }
            return gVar.o.booleanValue();
        }

        public int getChangingConfigurations() {
            return this.a;
        }

        public Drawable newDrawable() {
            return new y4(this);
        }

        public Drawable newDrawable(Resources resources) {
            return new y4(this);
        }

        public h() {
            this.c = null;
            this.d = y4.k;
            this.b = new g();
        }
    }

    y4() {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.c = new h();
    }

    public static y4 a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        y4 y4Var = new y4();
        y4Var.inflate(resources, xmlPullParser, attributeSet, theme);
        return y4Var;
    }

    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.b;
        if (drawable != null && Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* access modifiers changed from: package-private */
    public Object b(String str) {
        return this.c.b.p.getOrDefault(str, null);
    }

    /* access modifiers changed from: package-private */
    public void c(boolean z) {
        this.g = z;
    }

    public boolean canApplyTheme() {
        Drawable drawable = this.b;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    /* access modifiers changed from: package-private */
    public PorterDuffColorFilter d(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(super.getState(), 0), mode);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00d3, code lost:
        if ((r1 == r7.getWidth() && r3 == r6.f.getHeight()) == false) goto L_0x00d5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r11) {
        /*
        // Method dump skipped, instructions count: 392
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y4.draw(android.graphics.Canvas):void");
    }

    public int getAlpha() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getAlpha();
        }
        return this.c.b.getRootAlpha();
    }

    public int getChangingConfigurations() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.c.getChangingConfigurations();
    }

    public ColorFilter getColorFilter() {
        Drawable drawable = this.b;
        if (drawable == null) {
            return this.e;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    public Drawable.ConstantState getConstantState() {
        if (this.b != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.b.getConstantState());
        }
        this.c.a = getChangingConfigurations();
        return this.c;
    }

    public int getIntrinsicHeight() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.c.b.j;
    }

    public int getIntrinsicWidth() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.c.b.i;
    }

    public int getOpacity() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    public void invalidateSelf() {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    public boolean isAutoMirrored() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.isAutoMirrored();
        }
        return this.c.e;
    }

    public boolean isStateful() {
        h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((hVar = this.c) != null && (hVar.a() || ((colorStateList = this.c.c) != null && colorStateList.isStateful())));
    }

    public Drawable mutate() {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f && super.mutate() == this) {
            this.c = new h(this.c);
            this.f = true;
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        h hVar = this.c;
        ColorStateList colorStateList = hVar.c;
        if (!(colorStateList == null || (mode = hVar.d) == null)) {
            this.d = d(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (hVar.a()) {
            boolean b2 = hVar.b.h.b(iArr);
            hVar.k |= b2;
            if (b2) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    public void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.c.b.getRootAlpha() != i2) {
            this.c.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.c.e = z;
        }
    }

    public void setFilterBitmap(boolean z) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.c(drawable, f2, f3);
        }
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.d(drawable, i2, i3, i4, i5);
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTint(int i2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.f(drawable, i2);
        } else {
            setTintList(ColorStateList.valueOf(i2));
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.g(drawable, colorStateList);
            return;
        }
        h hVar = this.c;
        if (hVar.c != colorStateList) {
            hVar.c = colorStateList;
            this.d = d(colorStateList, hVar.d);
            invalidateSelf();
        }
    }

    @Override // androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.b;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.h(drawable, mode);
            return;
        }
        h hVar = this.c;
        if (hVar.d != mode) {
            hVar.d = mode;
            this.d = d(hVar.c, mode);
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$i */
    public static class i extends Drawable.ConstantState {
        private final Drawable.ConstantState a;

        public i(Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        public Drawable newDrawable() {
            y4 y4Var = new y4();
            y4Var.b = (VectorDrawable) this.a.newDrawable();
            return y4Var;
        }

        public Drawable newDrawable(Resources resources) {
            y4 y4Var = new y4();
            y4Var.b = (VectorDrawable) this.a.newDrawable(resources);
            return y4Var;
        }

        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            y4 y4Var = new y4();
            y4Var.b = (VectorDrawable) this.a.newDrawable(resources, theme);
            return y4Var;
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.e = colorFilter;
        invalidateSelf();
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$f */
    public static abstract class f extends e {
        protected l1.a[] a = null;
        String b;
        int c = 0;
        int d;

        public f() {
            super(null);
        }

        public boolean c() {
            return false;
        }

        public l1.a[] getPathData() {
            return this.a;
        }

        public String getPathName() {
            return this.b;
        }

        public void setPathData(l1.a[] aVarArr) {
            if (!l1.a(this.a, aVarArr)) {
                this.a = l1.g(aVarArr);
                return;
            }
            l1.a[] aVarArr2 = this.a;
            for (int i = 0; i < aVarArr.length; i++) {
                aVarArr2[i].a = aVarArr[i].a;
                for (int i2 = 0; i2 < aVarArr[i].b.length; i2++) {
                    aVarArr2[i].b[i2] = aVarArr[i].b[i2];
                }
            }
        }

        public f(f fVar) {
            super(null);
            this.b = fVar.b;
            this.d = fVar.d;
            this.a = l1.g(fVar.a);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:119:0x02c3  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00c0  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00ff  */
    @Override // android.graphics.drawable.Drawable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void inflate(android.content.res.Resources r19, org.xmlpull.v1.XmlPullParser r20, android.util.AttributeSet r21, android.content.res.Resources.Theme r22) {
        /*
        // Method dump skipped, instructions count: 746
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.y4.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    y4(h hVar) {
        this.g = true;
        this.h = new float[9];
        this.i = new Matrix();
        this.j = new Rect();
        this.c = hVar;
        this.d = d(hVar.c, hVar.d);
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$c */
    public static class c extends f {
        private int[] e;
        d1 f;
        float g = 0.0f;
        d1 h;
        float i = 1.0f;
        float j = 1.0f;
        float k = 0.0f;
        float l = 1.0f;
        float m = 0.0f;
        Paint.Cap n = Paint.Cap.BUTT;
        Paint.Join o = Paint.Join.MITER;
        float p = 4.0f;

        c() {
        }

        @Override // defpackage.y4.e
        public boolean a() {
            return this.h.g() || this.f.g();
        }

        @Override // defpackage.y4.e
        public boolean b(int[] iArr) {
            return this.f.h(iArr) | this.h.h(iArr);
        }

        public void d(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            int i2;
            TypedArray n2 = c1.n(resources, theme, attributeSet, r4.c);
            this.e = null;
            if (c1.l(xmlPullParser, "pathData")) {
                String string = n2.getString(0);
                if (string != null) {
                    this.b = string;
                }
                String string2 = n2.getString(2);
                if (string2 != null) {
                    this.a = l1.e(string2);
                }
                this.h = c1.g(n2, xmlPullParser, theme, "fillColor", 1, 0);
                float f2 = this.j;
                if (c1.l(xmlPullParser, "fillAlpha")) {
                    f2 = n2.getFloat(12, f2);
                }
                this.j = f2;
                int i3 = -1;
                if (!c1.l(xmlPullParser, "strokeLineCap")) {
                    i2 = -1;
                } else {
                    i2 = n2.getInt(8, -1);
                }
                Paint.Cap cap = this.n;
                if (i2 == 0) {
                    cap = Paint.Cap.BUTT;
                } else if (i2 == 1) {
                    cap = Paint.Cap.ROUND;
                } else if (i2 == 2) {
                    cap = Paint.Cap.SQUARE;
                }
                this.n = cap;
                if (c1.l(xmlPullParser, "strokeLineJoin")) {
                    i3 = n2.getInt(9, -1);
                }
                Paint.Join join = this.o;
                if (i3 == 0) {
                    join = Paint.Join.MITER;
                } else if (i3 == 1) {
                    join = Paint.Join.ROUND;
                } else if (i3 == 2) {
                    join = Paint.Join.BEVEL;
                }
                this.o = join;
                float f3 = this.p;
                if (c1.l(xmlPullParser, "strokeMiterLimit")) {
                    f3 = n2.getFloat(10, f3);
                }
                this.p = f3;
                this.f = c1.g(n2, xmlPullParser, theme, "strokeColor", 3, 0);
                float f4 = this.i;
                if (c1.l(xmlPullParser, "strokeAlpha")) {
                    f4 = n2.getFloat(11, f4);
                }
                this.i = f4;
                float f5 = this.g;
                if (c1.l(xmlPullParser, "strokeWidth")) {
                    f5 = n2.getFloat(4, f5);
                }
                this.g = f5;
                float f6 = this.l;
                if (c1.l(xmlPullParser, "trimPathEnd")) {
                    f6 = n2.getFloat(6, f6);
                }
                this.l = f6;
                float f7 = this.m;
                if (c1.l(xmlPullParser, "trimPathOffset")) {
                    f7 = n2.getFloat(7, f7);
                }
                this.m = f7;
                float f8 = this.k;
                if (c1.l(xmlPullParser, "trimPathStart")) {
                    f8 = n2.getFloat(5, f8);
                }
                this.k = f8;
                int i4 = this.c;
                if (c1.l(xmlPullParser, "fillType")) {
                    i4 = n2.getInt(13, i4);
                }
                this.c = i4;
            }
            n2.recycle();
        }

        /* access modifiers changed from: package-private */
        public float getFillAlpha() {
            return this.j;
        }

        /* access modifiers changed from: package-private */
        public int getFillColor() {
            return this.h.c();
        }

        /* access modifiers changed from: package-private */
        public float getStrokeAlpha() {
            return this.i;
        }

        /* access modifiers changed from: package-private */
        public int getStrokeColor() {
            return this.f.c();
        }

        /* access modifiers changed from: package-private */
        public float getStrokeWidth() {
            return this.g;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathEnd() {
            return this.l;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathOffset() {
            return this.m;
        }

        /* access modifiers changed from: package-private */
        public float getTrimPathStart() {
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public void setFillAlpha(float f2) {
            this.j = f2;
        }

        /* access modifiers changed from: package-private */
        public void setFillColor(int i2) {
            this.h.i(i2);
        }

        /* access modifiers changed from: package-private */
        public void setStrokeAlpha(float f2) {
            this.i = f2;
        }

        /* access modifiers changed from: package-private */
        public void setStrokeColor(int i2) {
            this.f.i(i2);
        }

        /* access modifiers changed from: package-private */
        public void setStrokeWidth(float f2) {
            this.g = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathEnd(float f2) {
            this.l = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        /* access modifiers changed from: package-private */
        public void setTrimPathStart(float f2) {
            this.k = f2;
        }

        c(c cVar) {
            super(cVar);
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.i = cVar.i;
            this.h = cVar.h;
            this.c = cVar.c;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$g */
    public static class g {
        private static final Matrix q = new Matrix();
        private final Path a;
        private final Path b;
        private final Matrix c;
        Paint d;
        Paint e;
        private PathMeasure f;
        private int g;
        final d h;
        float i;
        float j;
        float k;
        float l;
        int m;
        String n;
        Boolean o;
        final x<String, Object> p;

        public g() {
            this.c = new Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new x<>();
            this.h = new d();
            this.a = new Path();
            this.b = new Path();
        }

        /* JADX DEBUG: Multi-variable search result rejected for r13v11, resolved type: android.graphics.PathMeasure */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void b(defpackage.y4.d r18, android.graphics.Matrix r19, android.graphics.Canvas r20, int r21, int r22, android.graphics.ColorFilter r23) {
            /*
            // Method dump skipped, instructions count: 594
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.y4.g.b(y4$d, android.graphics.Matrix, android.graphics.Canvas, int, int, android.graphics.ColorFilter):void");
        }

        public void a(Canvas canvas, int i2, int i3, ColorFilter colorFilter) {
            b(this.h, q, canvas, i2, i3, null);
        }

        public float getAlpha() {
            return ((float) getRootAlpha()) / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i2) {
            this.m = i2;
        }

        public g(g gVar) {
            this.c = new Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            x<String, Object> xVar = new x<>();
            this.p = xVar;
            this.h = new d(gVar.h, xVar);
            this.a = new Path(gVar.a);
            this.b = new Path(gVar.b);
            this.i = gVar.i;
            this.j = gVar.j;
            this.k = gVar.k;
            this.l = gVar.l;
            this.g = gVar.g;
            this.m = gVar.m;
            this.n = gVar.n;
            String str = gVar.n;
            if (str != null) {
                xVar.put(str, this);
            }
            this.o = gVar.o;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: y4$d */
    public static class d extends e {
        final Matrix a;
        final ArrayList<e> b;
        float c;
        private float d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        final Matrix j;
        int k;
        private int[] l;
        private String m;

        public d(d dVar, x<String, Object> xVar) {
            super(null);
            f fVar;
            this.a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.m = null;
            this.c = dVar.c;
            this.d = dVar.d;
            this.e = dVar.e;
            this.f = dVar.f;
            this.g = dVar.g;
            this.h = dVar.h;
            this.i = dVar.i;
            this.l = dVar.l;
            String str = dVar.m;
            this.m = str;
            this.k = dVar.k;
            if (str != null) {
                xVar.put(str, this);
            }
            matrix.set(dVar.j);
            ArrayList<e> arrayList = dVar.b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                e eVar = arrayList.get(i2);
                if (eVar instanceof d) {
                    this.b.add(new d((d) eVar, xVar));
                } else {
                    if (eVar instanceof c) {
                        fVar = new c((c) eVar);
                    } else if (eVar instanceof b) {
                        fVar = new b((b) eVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.b.add(fVar);
                    String str2 = fVar.b;
                    if (str2 != null) {
                        xVar.put(str2, fVar);
                    }
                }
            }
        }

        private void d() {
            this.j.reset();
            this.j.postTranslate(-this.d, -this.e);
            this.j.postScale(this.f, this.g);
            this.j.postRotate(this.c, 0.0f, 0.0f);
            this.j.postTranslate(this.h + this.d, this.i + this.e);
        }

        @Override // defpackage.y4.e
        public boolean a() {
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                if (this.b.get(i2).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // defpackage.y4.e
        public boolean b(int[] iArr) {
            boolean z = false;
            for (int i2 = 0; i2 < this.b.size(); i2++) {
                z |= this.b.get(i2).b(iArr);
            }
            return z;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray n = c1.n(resources, theme, attributeSet, r4.b);
            this.l = null;
            float f2 = this.c;
            if (c1.l(xmlPullParser, "rotation")) {
                f2 = n.getFloat(5, f2);
            }
            this.c = f2;
            this.d = n.getFloat(1, this.d);
            this.e = n.getFloat(2, this.e);
            float f3 = this.f;
            if (c1.l(xmlPullParser, "scaleX")) {
                f3 = n.getFloat(3, f3);
            }
            this.f = f3;
            float f4 = this.g;
            if (c1.l(xmlPullParser, "scaleY")) {
                f4 = n.getFloat(4, f4);
            }
            this.g = f4;
            float f5 = this.h;
            if (c1.l(xmlPullParser, "translateX")) {
                f5 = n.getFloat(6, f5);
            }
            this.h = f5;
            float f6 = this.i;
            if (c1.l(xmlPullParser, "translateY")) {
                f6 = n.getFloat(7, f6);
            }
            this.i = f6;
            String string = n.getString(0);
            if (string != null) {
                this.m = string;
            }
            d();
            n.recycle();
        }

        public String getGroupName() {
            return this.m;
        }

        public Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.d;
        }

        public float getPivotY() {
            return this.e;
        }

        public float getRotation() {
            return this.c;
        }

        public float getScaleX() {
            return this.f;
        }

        public float getScaleY() {
            return this.g;
        }

        public float getTranslateX() {
            return this.h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.d) {
                this.d = f2;
                d();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.e) {
                this.e = f2;
                d();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.c) {
                this.c = f2;
                d();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f) {
                this.f = f2;
                d();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.g) {
                this.g = f2;
                d();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.h) {
                this.h = f2;
                d();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.i) {
                this.i = f2;
                d();
            }
        }

        public d() {
            super(null);
            this.a = new Matrix();
            this.b = new ArrayList<>();
            this.c = 0.0f;
            this.d = 0.0f;
            this.e = 0.0f;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new Matrix();
            this.m = null;
        }
    }
}
