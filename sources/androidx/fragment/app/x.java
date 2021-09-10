package androidx.fragment.app;

import androidx.lifecycle.f;
import androidx.lifecycle.i;
import androidx.lifecycle.j;

/* access modifiers changed from: package-private */
public class x implements i {
    private j b = null;

    x() {
    }

    /* access modifiers changed from: package-private */
    public void a(f.a aVar) {
        this.b.f(aVar);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (this.b == null) {
            this.b = new j(this);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return this.b != null;
    }

    @Override // androidx.lifecycle.i
    public f getLifecycle() {
        if (this.b == null) {
            this.b = new j(this);
        }
        return this.b;
    }
}
