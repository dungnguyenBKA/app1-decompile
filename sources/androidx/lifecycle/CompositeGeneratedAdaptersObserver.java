package androidx.lifecycle;

import androidx.lifecycle.f;

/* access modifiers changed from: package-private */
public class CompositeGeneratedAdaptersObserver implements g {
    private final e[] a;

    CompositeGeneratedAdaptersObserver(e[] eVarArr) {
        this.a = eVarArr;
    }

    @Override // androidx.lifecycle.g
    public void c(i iVar, f.a aVar) {
        m mVar = new m();
        for (e eVar : this.a) {
            eVar.a(iVar, aVar, false, mVar);
        }
        for (e eVar2 : this.a) {
            eVar2.a(iVar, aVar, true, mVar);
        }
    }
}
