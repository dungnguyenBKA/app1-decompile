package defpackage;

import androidx.core.app.b;
import defpackage.z60;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* renamed from: j60  reason: default package */
public final class j60 {
    private static final z80<?> m = z80.get(Object.class);
    private final ThreadLocal<Map<z80<?>, a<?>>> a;
    private final Map<z80<?>, z60<?>> b;
    private final j70 c;
    private final h80 d;
    final List<a70> e;
    final boolean f;
    final boolean g;
    final boolean h;
    final boolean i;
    final boolean j;
    final List<a70> k;
    final List<a70> l;

    /* access modifiers changed from: package-private */
    /* renamed from: j60$a */
    public static class a<T> extends z60<T> {
        private z60<T> a;

        a() {
        }

        @Override // defpackage.z60
        public T b(a90 a90) {
            z60<T> z60 = this.a;
            if (z60 != null) {
                return z60.b(a90);
            }
            throw new IllegalStateException();
        }

        @Override // defpackage.z60
        public void c(c90 c90, T t) {
            z60<T> z60 = this.a;
            if (z60 != null) {
                z60.c(c90, t);
                return;
            }
            throw new IllegalStateException();
        }

        public void d(z60<T> z60) {
            if (this.a == null) {
                this.a = z60;
                return;
            }
            throw new AssertionError();
        }
    }

    public j60() {
        this(r70.d, c60.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, y60.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> T b(a90 a90, Type type) {
        boolean k0 = a90.k0();
        boolean z = true;
        a90.A0(true);
        try {
            a90.x0();
            z = false;
            T b2 = e(z80.get(type)).b(a90);
            a90.A0(k0);
            return b2;
        } catch (EOFException e2) {
            if (z) {
                a90.A0(k0);
                return null;
            }
            throw new x60(e2);
        } catch (IllegalStateException e3) {
            throw new x60(e3);
        } catch (IOException e4) {
            throw new x60(e4);
        } catch (AssertionError e5) {
            AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e5.getMessage());
            assertionError.initCause(e5);
            throw assertionError;
        } catch (Throwable th) {
            a90.A0(k0);
            throw th;
        }
    }

    public <T> T c(String str, Class<T> cls) {
        return (T) b.P0(cls).cast(d(str, cls));
    }

    public <T> T d(String str, Type type) {
        if (str == null) {
            return null;
        }
        a90 a90 = new a90(new StringReader(str));
        a90.A0(this.j);
        T t = (T) b(a90, type);
        if (t != null) {
            try {
                if (a90.x0() != b90.END_DOCUMENT) {
                    throw new q60("JSON document was not fully consumed.");
                }
            } catch (d90 e2) {
                throw new x60(e2);
            } catch (IOException e3) {
                throw new q60(e3);
            }
        }
        return t;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v5, resolved type: java.util.Map<z80<?>, z60<?>> */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX DEBUG: Type inference failed for r4v4. Raw type applied. Possible types: z60<T>, z60<?> */
    public <T> z60<T> e(z80<T> z80) {
        z60<T> z60 = (z60<T>) this.b.get(z80 == null ? m : z80);
        if (z60 != null) {
            return z60;
        }
        Map<z80<?>, a<?>> map = this.a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.a.set(map);
            z = true;
        }
        a<?> aVar = map.get(z80);
        if (aVar != null) {
            return aVar;
        }
        try {
            a<?> aVar2 = new a<>();
            map.put(z80, aVar2);
            for (a70 a70 : this.e) {
                z60 z602 = (z60<T>) a70.a(this, z80);
                if (z602 != null) {
                    aVar2.d(z602);
                    this.b.put(z80, z602);
                    return z602;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.6) cannot handle " + z80);
        } finally {
            map.remove(z80);
            if (z) {
                this.a.remove();
            }
        }
    }

    public <T> z60<T> f(a70 a70, z80<T> z80) {
        if (!this.e.contains(a70)) {
            a70 = this.d;
        }
        boolean z = false;
        for (a70 a702 : this.e) {
            if (z) {
                z60<T> a2 = a702.a(this, z80);
                if (a2 != null) {
                    return a2;
                }
            } else if (a702 == a70) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + z80);
    }

    public c90 g(Writer writer) {
        if (this.g) {
            writer.write(")]}'\n");
        }
        c90 c90 = new c90(writer);
        if (this.i) {
            c90.s0("  ");
        }
        c90.u0(this.f);
        return c90;
    }

    public String h(Object obj) {
        if (obj != null) {
            return i(obj, obj.getClass());
        }
        r60 r60 = r60.a;
        StringWriter stringWriter = new StringWriter();
        try {
            j(r60, g(x70.c(stringWriter)));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new q60(e2);
        }
    }

    public String i(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        try {
            k(obj, type, g(x70.c(stringWriter)));
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new q60(e2);
        }
    }

    public void j(p60 p60, c90 c90) {
        boolean k0 = c90.k0();
        c90.t0(true);
        boolean j0 = c90.j0();
        c90.r0(this.h);
        boolean i0 = c90.i0();
        c90.u0(this.f);
        try {
            s80.X.c(c90, p60);
            c90.t0(k0);
            c90.r0(j0);
            c90.u0(i0);
        } catch (IOException e2) {
            throw new q60(e2);
        } catch (AssertionError e3) {
            AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e3.getMessage());
            assertionError.initCause(e3);
            throw assertionError;
        } catch (Throwable th) {
            c90.t0(k0);
            c90.r0(j0);
            c90.u0(i0);
            throw th;
        }
    }

    public void k(Object obj, Type type, c90 c90) {
        z60 e2 = e(z80.get(type));
        boolean k0 = c90.k0();
        c90.t0(true);
        boolean j0 = c90.j0();
        c90.r0(this.h);
        boolean i0 = c90.i0();
        c90.u0(this.f);
        try {
            e2.c(c90, obj);
            c90.t0(k0);
            c90.r0(j0);
            c90.u0(i0);
        } catch (IOException e3) {
            throw new q60(e3);
        } catch (AssertionError e4) {
            AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e4.getMessage());
            assertionError.initCause(e4);
            throw assertionError;
        } catch (Throwable th) {
            c90.t0(k0);
            c90.r0(j0);
            c90.u0(i0);
            throw th;
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.f + ",factories:" + this.e + ",instanceCreators:" + this.c + "}";
    }

    j60(r70 r70, d60 d60, Map<Type, l60<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, y60 y60, String str, int i2, int i3, List<a70> list, List<a70> list2, List<a70> list3) {
        z60 z60;
        z60 z602;
        z60 z603;
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        j70 j70 = new j70(map);
        this.c = j70;
        this.f = z;
        this.g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
        this.k = list;
        this.l = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(s80.Y);
        arrayList.add(l80.b);
        arrayList.add(r70);
        arrayList.addAll(list3);
        arrayList.add(s80.D);
        arrayList.add(s80.m);
        arrayList.add(s80.g);
        arrayList.add(s80.i);
        arrayList.add(s80.k);
        if (y60 == y60.DEFAULT) {
            z60 = s80.t;
        } else {
            z60 = new g60();
        }
        arrayList.add(s80.b(Long.TYPE, Long.class, z60));
        Class cls = Double.TYPE;
        if (z7) {
            z602 = s80.v;
        } else {
            z602 = new e60(this);
        }
        arrayList.add(s80.b(cls, Double.class, z602));
        Class cls2 = Float.TYPE;
        if (z7) {
            z603 = s80.u;
        } else {
            z603 = new f60(this);
        }
        arrayList.add(s80.b(cls2, Float.class, z603));
        arrayList.add(s80.x);
        arrayList.add(s80.o);
        arrayList.add(s80.q);
        arrayList.add(s80.a(AtomicLong.class, new z60.a()));
        arrayList.add(s80.a(AtomicLongArray.class, new z60.a()));
        arrayList.add(s80.s);
        arrayList.add(s80.z);
        arrayList.add(s80.F);
        arrayList.add(s80.H);
        arrayList.add(s80.a(BigDecimal.class, s80.B));
        arrayList.add(s80.a(BigInteger.class, s80.C));
        arrayList.add(s80.J);
        arrayList.add(s80.L);
        arrayList.add(s80.P);
        arrayList.add(s80.R);
        arrayList.add(s80.W);
        arrayList.add(s80.N);
        arrayList.add(s80.d);
        arrayList.add(g80.b);
        arrayList.add(s80.U);
        arrayList.add(p80.b);
        arrayList.add(o80.b);
        arrayList.add(s80.S);
        arrayList.add(e80.c);
        arrayList.add(s80.b);
        arrayList.add(new f80(j70));
        arrayList.add(new k80(j70, z2));
        h80 h80 = new h80(j70);
        this.d = h80;
        arrayList.add(h80);
        arrayList.add(s80.Z);
        arrayList.add(new n80(j70, d60, r70, h80));
        this.e = Collections.unmodifiableList(arrayList);
    }
}
