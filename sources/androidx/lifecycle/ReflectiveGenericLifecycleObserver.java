package androidx.lifecycle;

import androidx.lifecycle.a;
import androidx.lifecycle.f;

/* access modifiers changed from: package-private */
public class ReflectiveGenericLifecycleObserver implements g {
    private final Object a;
    private final a.C0014a b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.a = obj;
        this.b = a.c.b(obj.getClass());
    }

    @Override // androidx.lifecycle.g
    public void c(i iVar, f.a aVar) {
        this.b.a(iVar, aVar, this.a);
    }
}
