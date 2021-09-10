package defpackage;

/* renamed from: qh0  reason: default package */
public abstract class qh0 implements Runnable {
    protected final String b;

    public qh0(String str, Object... objArr) {
        this.b = rh0.o(str, objArr);
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.b);
        try {
            a();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
