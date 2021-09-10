package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

public abstract class a0 extends RecyclerView.l {
    boolean g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, RecyclerView.l.c cVar, RecyclerView.l.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.a;
        int i4 = cVar.b;
        if (b0Var2.shouldIgnore()) {
            int i5 = cVar.a;
            i = cVar.b;
            i2 = i5;
        } else {
            i2 = cVar2.a;
            i = cVar2.b;
        }
        return q(b0Var, b0Var2, i3, i4, i2, i);
    }

    public abstract boolean p(RecyclerView.b0 b0Var);

    public abstract boolean q(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, int i, int i2, int i3, int i4);

    public abstract boolean r(RecyclerView.b0 b0Var, int i, int i2, int i3, int i4);

    public abstract boolean s(RecyclerView.b0 b0Var);

    public void t(boolean z) {
        this.g = z;
    }
}
