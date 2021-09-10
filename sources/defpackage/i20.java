package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.a20;
import defpackage.b20;
import defpackage.c20;
import defpackage.d20;
import defpackage.e20;
import defpackage.f20;
import defpackage.g20;
import defpackage.h20;
import defpackage.o10;
import defpackage.p10;
import defpackage.q10;
import defpackage.r10;
import defpackage.s10;
import defpackage.t10;
import defpackage.v10;
import defpackage.w10;
import defpackage.x10;
import defpackage.y10;
import defpackage.z10;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

@AutoValue
/* renamed from: i20  reason: default package */
public abstract class i20 {
    private static final Charset a = Charset.forName(HTTP.UTF_8);

    @AutoValue.Builder
    /* renamed from: i20$a */
    public static abstract class a {
        public abstract i20 a();

        public abstract a b(String str);

        public abstract a c(String str);

        public abstract a d(String str);

        public abstract a e(String str);

        public abstract a f(c cVar);

        public abstract a g(int i);

        public abstract a h(String str);

        public abstract a i(d dVar);
    }

    @AutoValue
    /* renamed from: i20$b */
    public static abstract class b {

        @AutoValue.Builder
        /* renamed from: i20$b$a */
        public static abstract class a {
            public abstract b a();

            public abstract a b(String str);

            public abstract a c(String str);
        }

        public static a a() {
            return new p10.b();
        }

        public abstract String b();

        public abstract String c();
    }

    @AutoValue
    /* renamed from: i20$c */
    public static abstract class c {

        @AutoValue.Builder
        /* renamed from: i20$c$a */
        public static abstract class a {
            public abstract c a();

            public abstract a b(j20<b> j20);

            public abstract a c(String str);
        }

        @AutoValue
        /* renamed from: i20$c$b */
        public static abstract class b {

            @AutoValue.Builder
            /* renamed from: i20$c$b$a */
            public static abstract class a {
                public abstract b a();

                public abstract a b(byte[] bArr);

                public abstract a c(String str);
            }

            public static a a() {
                return new r10.b();
            }

            public abstract byte[] b();

            public abstract String c();
        }

        public static a a() {
            return new q10.b();
        }

        public abstract j20<b> b();

        public abstract String c();
    }

    @AutoValue
    /* renamed from: i20$d */
    public static abstract class d {

        @AutoValue
        /* renamed from: i20$d$a */
        public static abstract class a {

            @AutoValue.Builder
            /* renamed from: i20$d$a$a  reason: collision with other inner class name */
            public static abstract class AbstractC0100a {
                public abstract a a();

                public abstract AbstractC0100a b(String str);

                public abstract AbstractC0100a c(String str);

                public abstract AbstractC0100a d(String str);

                public abstract AbstractC0100a e(String str);

                public abstract AbstractC0100a f(String str);

                public abstract AbstractC0100a g(String str);
            }

            @AutoValue
            /* renamed from: i20$d$a$b */
            public static abstract class b {
                public abstract String a();
            }

            public static AbstractC0100a a() {
                return new t10.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract b g();

            public abstract String h();
        }

        @AutoValue.Builder
        /* renamed from: i20$d$b */
        public static abstract class b {
            public abstract d a();

            public abstract b b(a aVar);

            public abstract b c(boolean z);

            public abstract b d(c cVar);

            public abstract b e(Long l);

            public abstract b f(j20<AbstractC0101d> j20);

            public abstract b g(String str);

            public abstract b h(int i);

            public abstract b i(String str);

            public b j(byte[] bArr) {
                i(new String(bArr, i20.a));
                return this;
            }

            public abstract b k(e eVar);

            public abstract b l(long j);

            public abstract b m(f fVar);
        }

        @AutoValue
        /* renamed from: i20$d$c */
        public static abstract class c {

            @AutoValue.Builder
            /* renamed from: i20$d$c$a */
            public static abstract class a {
                public abstract c a();

                public abstract a b(int i);

                public abstract a c(int i);

                public abstract a d(long j);

                public abstract a e(String str);

                public abstract a f(String str);

                public abstract a g(String str);

                public abstract a h(long j);

                public abstract a i(boolean z);

                public abstract a j(int i);
            }

            public static a a() {
                return new v10.b();
            }

            public abstract int b();

            public abstract int c();

            public abstract long d();

            public abstract String e();

            public abstract String f();

            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();
        }

        @AutoValue
        /* renamed from: i20$d$d  reason: collision with other inner class name */
        public static abstract class AbstractC0101d {

            @AutoValue
            /* renamed from: i20$d$d$a */
            public static abstract class a {

                @AutoValue.Builder
                /* renamed from: i20$d$d$a$a  reason: collision with other inner class name */
                public static abstract class AbstractC0102a {
                    public abstract a a();

                    public abstract AbstractC0102a b(Boolean bool);

                    public abstract AbstractC0102a c(j20<b> j20);

                    public abstract AbstractC0102a d(b bVar);

                    public abstract AbstractC0102a e(int i);
                }

                @AutoValue
                /* renamed from: i20$d$d$a$b */
                public static abstract class b {

                    @AutoValue
                    /* renamed from: i20$d$d$a$b$a  reason: collision with other inner class name */
                    public static abstract class AbstractC0103a {

                        @AutoValue.Builder
                        /* renamed from: i20$d$d$a$b$a$a  reason: collision with other inner class name */
                        public static abstract class AbstractC0104a {
                            public abstract AbstractC0103a a();

                            public abstract AbstractC0104a b(long j);

                            public abstract AbstractC0104a c(String str);

                            public abstract AbstractC0104a d(long j);

                            public abstract AbstractC0104a e(String str);

                            public AbstractC0104a f(byte[] bArr) {
                                e(new String(bArr, i20.a));
                                return this;
                            }
                        }

                        public static AbstractC0104a a() {
                            return new z10.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract long d();

                        public abstract String e();
                    }

                    @AutoValue.Builder
                    /* renamed from: i20$d$d$a$b$b  reason: collision with other inner class name */
                    public static abstract class AbstractC0105b {
                        public abstract b a();

                        public abstract AbstractC0105b b(j20<AbstractC0103a> j20);

                        public abstract AbstractC0105b c(c cVar);

                        public abstract AbstractC0105b d(AbstractC0107d dVar);

                        public abstract AbstractC0105b e(j20<e> j20);
                    }

                    @AutoValue
                    /* renamed from: i20$d$d$a$b$c */
                    public static abstract class c {

                        @AutoValue.Builder
                        /* renamed from: i20$d$d$a$b$c$a  reason: collision with other inner class name */
                        public static abstract class AbstractC0106a {
                            public abstract c a();

                            public abstract AbstractC0106a b(c cVar);

                            public abstract AbstractC0106a c(j20<e.AbstractC0110b> j20);

                            public abstract AbstractC0106a d(int i);

                            public abstract AbstractC0106a e(String str);

                            public abstract AbstractC0106a f(String str);
                        }

                        public static AbstractC0106a a() {
                            return new a20.b();
                        }

                        public abstract c b();

                        public abstract j20<e.AbstractC0110b> c();

                        public abstract int d();

                        public abstract String e();

                        public abstract String f();
                    }

                    @AutoValue
                    /* renamed from: i20$d$d$a$b$d  reason: collision with other inner class name */
                    public static abstract class AbstractC0107d {

                        @AutoValue.Builder
                        /* renamed from: i20$d$d$a$b$d$a  reason: collision with other inner class name */
                        public static abstract class AbstractC0108a {
                            public abstract AbstractC0107d a();

                            public abstract AbstractC0108a b(long j);

                            public abstract AbstractC0108a c(String str);

                            public abstract AbstractC0108a d(String str);
                        }

                        public static AbstractC0108a a() {
                            return new b20.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract String d();
                    }

                    @AutoValue
                    /* renamed from: i20$d$d$a$b$e */
                    public static abstract class e {

                        @AutoValue.Builder
                        /* renamed from: i20$d$d$a$b$e$a  reason: collision with other inner class name */
                        public static abstract class AbstractC0109a {
                            public abstract e a();

                            public abstract AbstractC0109a b(j20<AbstractC0110b> j20);

                            public abstract AbstractC0109a c(int i);

                            public abstract AbstractC0109a d(String str);
                        }

                        @AutoValue
                        /* renamed from: i20$d$d$a$b$e$b  reason: collision with other inner class name */
                        public static abstract class AbstractC0110b {

                            @AutoValue.Builder
                            /* renamed from: i20$d$d$a$b$e$b$a  reason: collision with other inner class name */
                            public static abstract class AbstractC0111a {
                                public abstract AbstractC0110b a();

                                public abstract AbstractC0111a b(String str);

                                public abstract AbstractC0111a c(int i);

                                public abstract AbstractC0111a d(long j);

                                public abstract AbstractC0111a e(long j);

                                public abstract AbstractC0111a f(String str);
                            }

                            public static AbstractC0111a a() {
                                return new d20.b();
                            }

                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            public abstract String f();
                        }

                        public static AbstractC0109a a() {
                            return new c20.b();
                        }

                        public abstract j20<AbstractC0110b> b();

                        public abstract int c();

                        public abstract String d();
                    }

                    public static AbstractC0105b a() {
                        return new y10.b();
                    }

                    public abstract j20<AbstractC0103a> b();

                    public abstract c c();

                    public abstract AbstractC0107d d();

                    public abstract j20<e> e();
                }

                public static AbstractC0102a a() {
                    return new x10.b();
                }

                public abstract Boolean b();

                public abstract j20<b> c();

                public abstract b d();

                public abstract int e();

                public abstract AbstractC0102a f();
            }

            @AutoValue.Builder
            /* renamed from: i20$d$d$b */
            public static abstract class b {
                public abstract AbstractC0101d a();

                public abstract b b(a aVar);

                public abstract b c(c cVar);

                public abstract b d(AbstractC0112d dVar);

                public abstract b e(long j);

                public abstract b f(String str);
            }

            @AutoValue
            /* renamed from: i20$d$d$c */
            public static abstract class c {

                @AutoValue.Builder
                /* renamed from: i20$d$d$c$a */
                public static abstract class a {
                    public abstract c a();

                    public abstract a b(Double d);

                    public abstract a c(int i);

                    public abstract a d(long j);

                    public abstract a e(int i);

                    public abstract a f(boolean z);

                    public abstract a g(long j);
                }

                public static a a() {
                    return new e20.b();
                }

                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();
            }

            @AutoValue
            /* renamed from: i20$d$d$d  reason: collision with other inner class name */
            public static abstract class AbstractC0112d {

                @AutoValue.Builder
                /* renamed from: i20$d$d$d$a */
                public static abstract class a {
                    public abstract AbstractC0112d a();

                    public abstract a b(String str);
                }

                public static a a() {
                    return new f20.b();
                }

                public abstract String b();
            }

            public static b a() {
                return new w10.b();
            }

            public abstract a b();

            public abstract c c();

            public abstract AbstractC0112d d();

            public abstract long e();

            public abstract String f();

            public abstract b g();
        }

        @AutoValue
        /* renamed from: i20$d$e */
        public static abstract class e {

            @AutoValue.Builder
            /* renamed from: i20$d$e$a */
            public static abstract class a {
                public abstract e a();

                public abstract a b(String str);

                public abstract a c(boolean z);

                public abstract a d(int i);

                public abstract a e(String str);
            }

            public static a a() {
                return new g20.b();
            }

            public abstract String b();

            public abstract int c();

            public abstract String d();

            public abstract boolean e();
        }

        @AutoValue
        /* renamed from: i20$d$f */
        public static abstract class f {

            @AutoValue.Builder
            /* renamed from: i20$d$f$a */
            public static abstract class a {
                public abstract f a();

                public abstract a b(String str);
            }

            public static a a() {
                return new h20.b();
            }

            public abstract String b();
        }

        public static b a() {
            s10.b bVar = new s10.b();
            bVar.c(false);
            return bVar;
        }

        public abstract a b();

        public abstract c c();

        public abstract Long d();

        public abstract j20<AbstractC0101d> e();

        public abstract String f();

        public abstract int g();

        public abstract String h();

        public abstract e i();

        public abstract long j();

        public abstract f k();

        public abstract boolean l();

        public abstract b m();
    }

    public static a b() {
        return new o10.b();
    }

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract c g();

    public abstract int h();

    public abstract String i();

    public abstract d j();

    /* access modifiers changed from: protected */
    public abstract a k();

    public i20 l(j20<d.AbstractC0101d> j20) {
        if (j() != null) {
            a k = k();
            d.b m = j().m();
            m.f(j20);
            k.i(m.a());
            return k.a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    public i20 m(c cVar) {
        a k = k();
        k.i(null);
        k.f(cVar);
        return k.a();
    }

    public i20 n(long j, boolean z, String str) {
        a k = k();
        if (j() != null) {
            d.b m = j().m();
            m.e(Long.valueOf(j));
            m.c(z);
            if (str != null) {
                h20.b bVar = new h20.b();
                bVar.b(str);
                m.m(bVar.a());
                m.a();
            }
            k.i(m.a());
        }
        return k.a();
    }
}
