package defpackage;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;

/* renamed from: r70  reason: default package */
public final class r70 implements a70, Cloneable {
    public static final r70 d = new r70();
    private List<a60> b = Collections.emptyList();
    private List<a60> c = Collections.emptyList();

    /* renamed from: r70$a */
    class a extends z60<T> {
        private z60<T> a;
        final /* synthetic */ boolean b;
        final /* synthetic */ boolean c;
        final /* synthetic */ j60 d;
        final /* synthetic */ z80 e;

        a(boolean z, boolean z2, j60 j60, z80 z80) {
            this.b = z;
            this.c = z2;
            this.d = j60;
            this.e = z80;
        }

        @Override // defpackage.z60
        public T b(a90 a90) {
            if (this.b) {
                a90.D0();
                return null;
            }
            z60<T> z60 = this.a;
            if (z60 == null) {
                z60 = this.d.f(r70.this, this.e);
                this.a = z60;
            }
            return z60.b(a90);
        }

        @Override // defpackage.z60
        public void c(c90 c90, T t) {
            if (this.c) {
                c90.n0();
                return;
            }
            z60<T> z60 = this.a;
            if (z60 == null) {
                z60 = this.d.f(r70.this, this.e);
                this.a = z60;
            }
            z60.c(c90, t);
        }
    }

    private boolean c(Class<?> cls, boolean z) {
        for (a60 a60 : z ? this.b : this.c) {
            if (a60.b(cls)) {
                return true;
            }
        }
        return false;
    }

    private boolean e(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    @Override // defpackage.a70
    public <T> z60<T> a(j60 j60, z80<T> z80) {
        Class<? super T> rawType = z80.getRawType();
        boolean e = e(rawType);
        boolean z = e || c(rawType, true);
        boolean z2 = e || c(rawType, false);
        if (z || z2) {
            return new a(z2, z, j60, z80);
        }
        return null;
    }

    public boolean b(Class<?> cls, boolean z) {
        return e(cls) || c(cls, z);
    }

    /* access modifiers changed from: protected */
    @Override // java.lang.Object
    public Object clone() {
        try {
            return (r70) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean d(Field field, boolean z) {
        if ((field.getModifiers() & 136) != 0 || field.isSynthetic() || e(field.getType())) {
            return true;
        }
        List<a60> list = z ? this.b : this.c;
        if (list.isEmpty()) {
            return false;
        }
        b60 b60 = new b60(field);
        for (a60 a60 : list) {
            if (a60.a(b60)) {
                return true;
            }
        }
        return false;
    }
}
