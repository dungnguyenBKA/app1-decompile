package defpackage;

/* renamed from: ov  reason: default package */
public final class ov implements qt<mv> {

    /* renamed from: ov$a */
    private static final class a {
        private static final ov a = new ov();
    }

    public static ov a() {
        return a.a;
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new pv();
    }
}
