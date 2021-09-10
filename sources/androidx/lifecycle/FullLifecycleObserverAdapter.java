package androidx.lifecycle;

import androidx.lifecycle.f;

/* access modifiers changed from: package-private */
public class FullLifecycleObserverAdapter implements g {
    private final d a;
    private final g b;

    FullLifecycleObserverAdapter(d dVar, g gVar) {
        this.a = dVar;
        this.b = gVar;
    }

    @Override // androidx.lifecycle.g
    public void c(i iVar, f.a aVar) {
        switch (aVar.ordinal()) {
            case 0:
                this.a.b(iVar);
                break;
            case 1:
                this.a.g(iVar);
                break;
            case 2:
                this.a.a(iVar);
                break;
            case 3:
                this.a.d(iVar);
                break;
            case 4:
                this.a.e(iVar);
                break;
            case 5:
                this.a.f(iVar);
                break;
            case 6:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        g gVar = this.b;
        if (gVar != null) {
            gVar.c(iVar, aVar);
        }
    }
}
