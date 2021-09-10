package defpackage;

import java.util.concurrent.Executor;

/* renamed from: s  reason: default package */
public class s extends u {
    private static volatile s c;
    private static final Executor d = new a();
    private u a;
    private u b;

    /* renamed from: s$a */
    static class a implements Executor {
        a() {
        }

        public void execute(Runnable runnable) {
            s.e().a(runnable);
        }
    }

    private s() {
        t tVar = new t();
        this.b = tVar;
        this.a = tVar;
    }

    public static Executor d() {
        return d;
    }

    public static s e() {
        if (c != null) {
            return c;
        }
        synchronized (s.class) {
            if (c == null) {
                c = new s();
            }
        }
        return c;
    }

    @Override // defpackage.u
    public void a(Runnable runnable) {
        this.a.a(runnable);
    }

    @Override // defpackage.u
    public boolean b() {
        return this.a.b();
    }

    @Override // defpackage.u
    public void c(Runnable runnable) {
        this.a.c(runnable);
    }
}
