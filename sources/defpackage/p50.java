package defpackage;

/* renamed from: p50  reason: default package */
public class p50 {
    private static p50 a;

    private p50() {
    }

    public static p50 a() {
        if (a == null) {
            a = new p50();
        }
        return a;
    }
}
