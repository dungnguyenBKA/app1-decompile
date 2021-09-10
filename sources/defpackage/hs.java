package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: hs  reason: default package */
public final class hs implements g40<ts> {
    static final hs a = new hs();
    private static final f40 b = f40.b("eventTimeMs");
    private static final f40 c = f40.b("eventCode");
    private static final f40 d = f40.b("eventUptimeMs");
    private static final f40 e = f40.b("sourceExtension");
    private static final f40 f = f40.b("sourceExtensionJsonProto3");
    private static final f40 g = f40.b("timezoneOffsetSeconds");
    private static final f40 h = f40.b("networkConnectionInfo");

    private hs() {
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        ts tsVar = (ts) obj;
        h40 h40 = (h40) obj2;
        h40.b(b, tsVar.b());
        h40.f(c, tsVar.a());
        h40.b(d, tsVar.c());
        h40.f(e, tsVar.e());
        h40.f(f, tsVar.f());
        h40.b(g, tsVar.g());
        h40.f(h, tsVar.d());
    }
}
