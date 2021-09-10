package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: g10  reason: default package */
public class g10 implements dw<T, Void> {
    final /* synthetic */ lw a;

    g10(lw lwVar) {
        this.a = lwVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.dw
    public Void then(kw kwVar) {
        if (kwVar.m()) {
            this.a.e(kwVar.j());
            return null;
        }
        this.a.d(kwVar.i());
        return null;
    }
}
