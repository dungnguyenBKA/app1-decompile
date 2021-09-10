package defpackage;

/* renamed from: fe0  reason: default package */
public final class fe0 extends RuntimeException {
    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public fe0(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}
