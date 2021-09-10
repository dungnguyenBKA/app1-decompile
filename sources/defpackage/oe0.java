package defpackage;

/* renamed from: oe0  reason: default package */
public final class oe0 {
    public static final Runnable a = new c();
    public static final ie0 b = new a();
    static final je0<Object> c = new b();
    public static final je0<Throwable> d = new d();

    /* renamed from: oe0$a */
    static final class a implements ie0 {
        a() {
        }

        @Override // defpackage.ie0
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* renamed from: oe0$b */
    static final class b implements je0<Object> {
        b() {
        }

        @Override // defpackage.je0
        public void a(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* renamed from: oe0$c */
    static final class c implements Runnable {
        c() {
        }

        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* renamed from: oe0$d */
    static final class d implements je0<Throwable> {
        d() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // defpackage.je0
        public void a(Throwable th) {
            mf0.f(new fe0(th));
        }
    }

    public static <T> je0<T> a() {
        return (je0<T>) c;
    }
}
