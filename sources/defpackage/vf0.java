package defpackage;

/* renamed from: vf0  reason: default package */
public final class vf0 extends wf0 {
    public static <T> uf0<T> a(xf0 xf0, fg0<? extends T> fg0) {
        gg0.e(xf0, "mode");
        gg0.e(fg0, "initializer");
        int ordinal = xf0.ordinal();
        if (ordinal == 0) {
            return new ag0(fg0, null, 2);
        }
        if (ordinal == 1) {
            return new zf0(fg0);
        }
        if (ordinal == 2) {
            return new eg0(fg0);
        }
        throw new yf0();
    }
}
