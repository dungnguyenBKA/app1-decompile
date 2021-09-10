package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: gs  reason: default package */
public final class gs implements g40<ss> {
    static final gs a = new gs();
    private static final f40 b = f40.b("clientType");
    private static final f40 c = f40.b("androidClientInfo");

    private gs() {
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        ss ssVar = (ss) obj;
        h40 h40 = (h40) obj2;
        h40.f(b, ssVar.c());
        h40.f(c, ssVar.b());
    }
}
