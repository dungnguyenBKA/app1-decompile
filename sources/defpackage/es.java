package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: es  reason: default package */
public final class es implements g40<ds> {
    static final es a = new es();
    private static final f40 b = f40.b("sdkVersion");
    private static final f40 c = f40.b("model");
    private static final f40 d = f40.b("hardware");
    private static final f40 e = f40.b("device");
    private static final f40 f = f40.b("product");
    private static final f40 g = f40.b("osBuild");
    private static final f40 h = f40.b("manufacturer");
    private static final f40 i = f40.b("fingerprint");
    private static final f40 j = f40.b("locale");
    private static final f40 k = f40.b("country");
    private static final f40 l = f40.b("mccMnc");
    private static final f40 m = f40.b("applicationBuild");

    private es() {
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        ds dsVar = (ds) obj;
        h40 h40 = (h40) obj2;
        h40.f(b, dsVar.m());
        h40.f(c, dsVar.j());
        h40.f(d, dsVar.f());
        h40.f(e, dsVar.d());
        h40.f(f, dsVar.l());
        h40.f(g, dsVar.k());
        h40.f(h, dsVar.h());
        h40.f(i, dsVar.e());
        h40.f(j, dsVar.g());
        h40.f(k, dsVar.c());
        h40.f(l, dsVar.i());
        h40.f(m, dsVar.b());
    }
}
