package defpackage;

/* renamed from: a40  reason: default package */
public class a40 {
    public final String a;
    public final String b;
    public final StackTraceElement[] c;
    public final a40 d;

    public a40(Throwable th, z30 z30) {
        this.a = th.getLocalizedMessage();
        this.b = th.getClass().getName();
        this.c = z30.a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.d = cause != null ? new a40(cause, z30) : null;
    }
}
