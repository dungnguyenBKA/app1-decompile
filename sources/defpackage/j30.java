package defpackage;

import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: j30  reason: default package */
public class j30 implements jw<Void, Void> {
    final /* synthetic */ k30 a;

    j30(k30 k30) {
        this.a = k30;
    }

    /* Return type fixed from 'kw' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // defpackage.jw
    public kw<Void> a(Void r5) {
        JSONObject d = this.a.f.d(this.a.b, true);
        if (d != null) {
            t30 a2 = this.a.c.a(d);
            this.a.e.b(a2.d, d);
            this.a.n(d, "Loaded settings: ");
            k30 k30 = this.a;
            k30.f(k30, k30.b.f);
            this.a.h.set(a2);
            ((lw) this.a.i.get()).e(a2.a);
            lw lwVar = new lw();
            lwVar.e(a2.a);
            this.a.i.set(lwVar);
        }
        return nw.d(null);
    }
}
