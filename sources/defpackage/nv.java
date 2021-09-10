package defpackage;

/* renamed from: nv  reason: default package */
public final class nv implements qt<mv> {

    /* renamed from: nv$a */
    private static final class a {
        private static final nv a = new nv();
    }

    public static nv a() {
        return a.a;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new qv();
    }
}
