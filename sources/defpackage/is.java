package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: is  reason: default package */
public final class is implements g40<us> {
    static final is a = new is();
    private static final f40 b = f40.b("requestTimeMs");
    private static final f40 c = f40.b("requestUptimeMs");
    private static final f40 d = f40.b("clientInfo");
    private static final f40 e = f40.b("logSource");
    private static final f40 f = f40.b("logSourceName");
    private static final f40 g = f40.b("logEvent");
    private static final f40 h = f40.b("qosTier");

    private is() {
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        us usVar = (us) obj;
        h40 h40 = (h40) obj2;
        h40.b(b, usVar.g());
        h40.b(c, usVar.h());
        h40.f(d, usVar.b());
        h40.f(e, usVar.d());
        h40.f(f, usVar.e());
        h40.f(g, usVar.c());
        h40.f(h, usVar.f());
    }
}
