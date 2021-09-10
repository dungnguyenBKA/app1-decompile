package defpackage;

/* renamed from: gu  reason: default package */
public final class gu implements qt<String> {

    /* renamed from: gu$a */
    private static final class a {
        private static final gu a = new gu();
    }

    public static gu a() {
        return a.a;
    }

    @Override // javax.inject.Provider
    public /* bridge */ /* synthetic */ Object get() {
        return "com.google.android.datatransport.events";
    }
}
