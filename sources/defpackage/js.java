package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: js  reason: default package */
public final class js implements g40<ws> {
    static final js a = new js();
    private static final f40 b = f40.b("networkType");
    private static final f40 c = f40.b("mobileSubtype");

    private js() {
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        ws wsVar = (ws) obj;
        h40 h40 = (h40) obj2;
        h40.f(b, wsVar.c());
        h40.f(c, wsVar.b());
    }
}
