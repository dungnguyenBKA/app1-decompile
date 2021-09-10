package androidx.work.impl;

import androidx.lifecycle.n;
import androidx.work.k;

public class b implements k {
    private final n<k.b> c = new n<>();
    private final l6<k.b.c> d = l6.j();

    public b() {
        a(k.b);
    }

    public void a(k.b bVar) {
        this.c.f(bVar);
        if (bVar instanceof k.b.c) {
            this.d.i((k.b.c) bVar);
        } else if (bVar instanceof k.b.a) {
            this.d.k(((k.b.a) bVar).a());
        }
    }
}
