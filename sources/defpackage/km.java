package defpackage;

/* renamed from: km  reason: default package */
public class km {
    private static km a;

    private km() {
    }

    public static km a() {
        km kmVar = a;
        if (kmVar != null) {
            return kmVar;
        }
        km kmVar2 = new km();
        a = kmVar2;
        return kmVar2;
    }
}
