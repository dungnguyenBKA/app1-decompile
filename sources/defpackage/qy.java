package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;
import java.util.Objects;

/* renamed from: qy  reason: default package */
public class qy {
    public static final iy m = new oy(0.5f);
    jy a;
    jy b;
    jy c;
    jy d;
    iy e;
    iy f;
    iy g;
    iy h;
    ly i;
    ly j;
    ly k;
    ly l;

    qy(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
    }

    public static b a(Context context, int i2, int i3) {
        return b(context, i2, i3, new gy((float) 0));
    }

    private static b b(Context context, int i2, int i3, iy iyVar) {
        if (i3 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
            i2 = i3;
            context = contextThemeWrapper;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R$styleable.D);
        try {
            int i4 = obtainStyledAttributes.getInt(0, 0);
            int i5 = obtainStyledAttributes.getInt(3, i4);
            int i6 = obtainStyledAttributes.getInt(4, i4);
            int i7 = obtainStyledAttributes.getInt(2, i4);
            int i8 = obtainStyledAttributes.getInt(1, i4);
            iy h2 = h(obtainStyledAttributes, 5, iyVar);
            iy h3 = h(obtainStyledAttributes, 8, h2);
            iy h4 = h(obtainStyledAttributes, 9, h2);
            iy h5 = h(obtainStyledAttributes, 7, h2);
            iy h6 = h(obtainStyledAttributes, 6, h2);
            b bVar = new b();
            bVar.w(i5, h3);
            bVar.z(i6, h4);
            bVar.s(i7, h5);
            bVar.p(i8, h6);
            return bVar;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static b c(Context context, AttributeSet attributeSet, int i2, int i3, iy iyVar) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.x, i2, i3);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return b(context, resourceId, resourceId2, iyVar);
    }

    private static iy h(TypedArray typedArray, int i2, iy iyVar) {
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue == null) {
            return iyVar;
        }
        int i3 = peekValue.type;
        if (i3 == 5) {
            return new gy((float) TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i3 == 6 ? new oy(peekValue.getFraction(1.0f, 1.0f)) : iyVar;
    }

    public jy d() {
        return this.d;
    }

    public iy e() {
        return this.h;
    }

    public jy f() {
        return this.c;
    }

    public iy g() {
        return this.g;
    }

    public ly i() {
        return this.i;
    }

    public jy j() {
        return this.a;
    }

    public iy k() {
        return this.e;
    }

    public jy l() {
        return this.b;
    }

    public iy m() {
        return this.f;
    }

    public boolean n(RectF rectF) {
        boolean z = this.l.getClass().equals(ly.class) && this.j.getClass().equals(ly.class) && this.i.getClass().equals(ly.class) && this.k.getClass().equals(ly.class);
        float a2 = this.e.a(rectF);
        boolean z2 = this.f.a(rectF) == a2 && this.h.a(rectF) == a2 && this.g.a(rectF) == a2;
        boolean z3 = (this.b instanceof py) && (this.a instanceof py) && (this.c instanceof py) && (this.d instanceof py);
        if (!z || !z2 || !z3) {
            return false;
        }
        return true;
    }

    public qy o(float f2) {
        b bVar = new b(this);
        bVar.o(f2);
        return bVar.m();
    }

    public qy() {
        this.a = new py();
        this.b = new py();
        this.c = new py();
        this.d = new py();
        this.e = new gy(0.0f);
        this.f = new gy(0.0f);
        this.g = new gy(0.0f);
        this.h = new gy(0.0f);
        this.i = new ly();
        this.j = new ly();
        this.k = new ly();
        this.l = new ly();
    }

    /* renamed from: qy$b */
    public static final class b {
        private jy a = new py();
        private jy b = new py();
        private jy c = new py();
        private jy d = new py();
        private iy e = new gy(0.0f);
        private iy f = new gy(0.0f);
        private iy g = new gy(0.0f);
        private iy h = new gy(0.0f);
        private ly i = new ly();
        private ly j = new ly();
        private ly k = new ly();
        private ly l = new ly();

        public b() {
        }

        private static float n(jy jyVar) {
            if (jyVar instanceof py) {
                Objects.requireNonNull((py) jyVar);
                return -1.0f;
            }
            if (jyVar instanceof ky) {
                Objects.requireNonNull((ky) jyVar);
            }
            return -1.0f;
        }

        public b A(float f2) {
            this.f = new gy(f2);
            return this;
        }

        public b B(iy iyVar) {
            this.f = iyVar;
            return this;
        }

        public qy m() {
            return new qy(this, null);
        }

        public b o(float f2) {
            this.e = new gy(f2);
            this.f = new gy(f2);
            this.g = new gy(f2);
            this.h = new gy(f2);
            return this;
        }

        public b p(int i2, iy iyVar) {
            jy a2 = ny.a(i2);
            this.d = a2;
            n(a2);
            this.h = iyVar;
            return this;
        }

        public b q(float f2) {
            this.h = new gy(f2);
            return this;
        }

        public b r(iy iyVar) {
            this.h = iyVar;
            return this;
        }

        public b s(int i2, iy iyVar) {
            jy a2 = ny.a(i2);
            this.c = a2;
            n(a2);
            this.g = iyVar;
            return this;
        }

        public b t(float f2) {
            this.g = new gy(f2);
            return this;
        }

        public b u(iy iyVar) {
            this.g = iyVar;
            return this;
        }

        public b v(ly lyVar) {
            this.i = lyVar;
            return this;
        }

        public b w(int i2, iy iyVar) {
            jy a2 = ny.a(i2);
            this.a = a2;
            n(a2);
            this.e = iyVar;
            return this;
        }

        public b x(float f2) {
            this.e = new gy(f2);
            return this;
        }

        public b y(iy iyVar) {
            this.e = iyVar;
            return this;
        }

        public b z(int i2, iy iyVar) {
            jy a2 = ny.a(i2);
            this.b = a2;
            n(a2);
            this.f = iyVar;
            return this;
        }

        public b(qy qyVar) {
            this.a = qyVar.a;
            this.b = qyVar.b;
            this.c = qyVar.c;
            this.d = qyVar.d;
            this.e = qyVar.e;
            this.f = qyVar.f;
            this.g = qyVar.g;
            this.h = qyVar.h;
            this.i = qyVar.i;
            this.j = qyVar.j;
            this.k = qyVar.k;
            this.l = qyVar.l;
        }
    }
}
