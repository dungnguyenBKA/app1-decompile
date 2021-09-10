package defpackage;

/* renamed from: hu  reason: default package */
public final class hu implements qt<Integer> {

    /* renamed from: hu$a */
    private static final class a {
        private static final hu a = new hu();
    }

    public static hu a() {
        return a.a;
    }

    @Override // javax.inject.Provider
    public Object get() {
        int i = iv.i;
        return 4;
    }
}
