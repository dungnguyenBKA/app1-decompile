package defpackage;

/* renamed from: kf0  reason: default package */
public final class kf0 {

    /* renamed from: kf0$a */
    static final class a extends Throwable {
        a() {
            super("No further exceptions");
        }

        public Throwable fillInStackTrace() {
            return this;
        }
    }

    static {
        new a();
    }

    public static RuntimeException a(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        } else if (th instanceof RuntimeException) {
            return (RuntimeException) th;
        } else {
            return new RuntimeException(th);
        }
    }
}
