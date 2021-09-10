package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* access modifiers changed from: package-private */
public final class v extends w {
    v(RecyclerView.o oVar) {
        super(oVar, null);
    }

    @Override // androidx.recyclerview.widget.w
    public int b(View view) {
        return this.a.F(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int c(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.H(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        return this.a.I(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int e(View view) {
        return this.a.K(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    @Override // androidx.recyclerview.widget.w
    public int f() {
        return this.a.M();
    }

    @Override // androidx.recyclerview.widget.w
    public int g() {
        return this.a.M() - this.a.T();
    }

    @Override // androidx.recyclerview.widget.w
    public int h() {
        return this.a.T();
    }

    @Override // androidx.recyclerview.widget.w
    public int i() {
        return this.a.N();
    }

    @Override // androidx.recyclerview.widget.w
    public int j() {
        return this.a.f0();
    }

    @Override // androidx.recyclerview.widget.w
    public int k() {
        return this.a.W();
    }

    @Override // androidx.recyclerview.widget.w
    public int l() {
        return (this.a.M() - this.a.W()) - this.a.T();
    }

    @Override // androidx.recyclerview.widget.w
    public int n(View view) {
        this.a.d0(view, true, this.c);
        return this.c.bottom;
    }

    @Override // androidx.recyclerview.widget.w
    public int o(View view) {
        this.a.d0(view, true, this.c);
        return this.c.top;
    }

    @Override // androidx.recyclerview.widget.w
    public void p(int i) {
        this.a.o0(i);
    }
}
