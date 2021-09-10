package defpackage;

import java.util.concurrent.Callable;

/* renamed from: nf0  reason: default package */
public final class nf0 {
    static final xd0 a = mf0.e(new h());
    static final xd0 b = mf0.c(new c());
    static final xd0 c = mf0.d(new f());

    /* renamed from: nf0$a */
    static final class a {
        static final xd0 a = new af0();
    }

    /* renamed from: nf0$b */
    static final class b implements Callable<xd0> {
        b() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public xd0 call() {
            return a.a;
        }
    }

    /* renamed from: nf0$c */
    static final class c implements Callable<xd0> {
        c() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public xd0 call() {
            return d.a;
        }
    }

    /* renamed from: nf0$d */
    static final class d {
        static final xd0 a = new bf0();
    }

    /* renamed from: nf0$e */
    static final class e {
        static final xd0 a = new cf0();
    }

    /* renamed from: nf0$f */
    static final class f implements Callable<xd0> {
        f() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public xd0 call() {
            return e.a;
        }
    }

    /* renamed from: nf0$g */
    static final class g {
        static final xd0 a = new if0();
    }

    /* renamed from: nf0$h */
    static final class h implements Callable<xd0> {
        h() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public xd0 call() {
            return g.a;
        }
    }

    static {
        mf0.b(new b());
        jf0.d();
    }

    public static xd0 a() {
        return b;
    }

    public static xd0 b() {
        return c;
    }

    public static xd0 c() {
        return a;
    }
}
