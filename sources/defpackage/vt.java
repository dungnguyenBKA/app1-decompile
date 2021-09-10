package defpackage;

/* renamed from: vt  reason: default package */
final /* synthetic */ class vt implements Runnable {
    private final xt b;
    private final it c;
    private final cs d;
    private final et e;

    private vt(xt xtVar, it itVar, cs csVar, et etVar) {
        this.b = xtVar;
        this.c = itVar;
        this.d = csVar;
        this.e = etVar;
    }

    public static Runnable a(xt xtVar, it itVar, cs csVar, et etVar) {
        return new vt(xtVar, itVar, csVar, etVar);
    }

    public void run() {
        xt.c(this.b, this.c, this.d, this.e);
    }
}
