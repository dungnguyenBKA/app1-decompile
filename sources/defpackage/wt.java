package defpackage;

import defpackage.lv;

/* access modifiers changed from: package-private */
/* renamed from: wt  reason: default package */
public final /* synthetic */ class wt implements lv.a {
    private final xt a;
    private final it b;
    private final et c;

    private wt(xt xtVar, it itVar, et etVar) {
        this.a = xtVar;
        this.b = itVar;
        this.c = etVar;
    }

    public static lv.a a(xt xtVar, it itVar, et etVar) {
        return new wt(xtVar, itVar, etVar);
    }

    @Override // defpackage.lv.a
    public Object execute() {
        xt.b(this.a, this.b, this.c);
        return null;
    }
}
