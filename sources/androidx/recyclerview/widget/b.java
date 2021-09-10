package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

public final class b implements s {
    private final RecyclerView.g a;

    public b(RecyclerView.g gVar) {
        this.a = gVar;
    }

    @Override // androidx.recyclerview.widget.s
    public void a(int i, int i2) {
        this.a.j(i, i2);
    }

    @Override // androidx.recyclerview.widget.s
    public void b(int i, int i2) {
        this.a.m(i, i2);
    }

    @Override // androidx.recyclerview.widget.s
    public void c(int i, int i2) {
        this.a.n(i, i2);
    }

    @Override // androidx.recyclerview.widget.s
    public void d(int i, int i2, Object obj) {
        this.a.l(i, i2, obj);
    }
}
