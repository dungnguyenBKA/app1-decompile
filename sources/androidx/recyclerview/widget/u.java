package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* access modifiers changed from: package-private */
public final class u extends w {
    u(RecyclerView.o oVar) {
        super(oVar, null);
    }

    @Override // androidx.recyclerview.widget.w
    public int b(View view) {
        return this.a.J(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.I(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.H(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int e(View view) {
        return this.a.G(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int f() {
        return this.a.e0();
    }

    @Override // androidx.recyclerview.widget.w
    public int g() {
        return this.a.e0() - this.a.V();
    }

    @Override // androidx.recyclerview.widget.w
    public int h() {
        return this.a.V();
    }

    @Override // androidx.recyclerview.widget.w
    public int i() {
        return this.a.f0();
    }

    @Override // androidx.recyclerview.widget.w
    public int j() {
        return this.a.N();
    }

    @Override // androidx.recyclerview.widget.w
    public int k() {
        return this.a.U();
    }

    @Override // androidx.recyclerview.widget.w
    public int l() {
        return (this.a.e0() - this.a.U()) - this.a.V();
    }

    @Override // androidx.recyclerview.widget.w
    public int n(View view) {
        this.a.d0(view, true, this.c);
        return this.c.right;
    }

    @Override // androidx.recyclerview.widget.w
    public int o(View view) {
        this.a.d0(view, true, this.c);
        return this.c.left;
    }

    @Override // androidx.recyclerview.widget.w
    public void p(int i) {
        this.a.n0(i);
    }
}
