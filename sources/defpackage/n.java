package defpackage;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContextView;
import defpackage.k;
import java.lang.ref.WeakReference;

/* renamed from: n  reason: default package */
public class n extends k implements g.a {
    private Context d;
    private ActionBarContextView e;
    private k.a f;
    private WeakReference<View> g;
    private boolean h;
    private g i;

    public n(Context context, ActionBarContextView actionBarContextView, k.a aVar, boolean z) {
        this.d = context;
        this.e = actionBarContextView;
        this.f = aVar;
        g gVar = new g(actionBarContextView.getContext());
        gVar.H(1);
        this.i = gVar;
        gVar.G(this);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(g gVar, MenuItem menuItem) {
        return this.f.d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(g gVar) {
        k();
        this.e.r();
    }

    @Override // defpackage.k
    public void c() {
        if (!this.h) {
            this.h = true;
            this.e.sendAccessibilityEvent(32);
            this.f.a(this);
        }
    }

    @Override // defpackage.k
    public View d() {
        WeakReference<View> weakReference = this.g;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // defpackage.k
    public Menu e() {
        return this.i;
    }

    @Override // defpackage.k
    public MenuInflater f() {
        return new p(this.e.getContext());
    }

    @Override // defpackage.k
    public CharSequence g() {
        return this.e.f();
    }

    @Override // defpackage.k
    public CharSequence i() {
        return this.e.g();
    }

    @Override // defpackage.k
    public void k() {
        this.f.c(this, this.i);
    }

    @Override // defpackage.k
    public boolean l() {
        return this.e.j();
    }

    @Override // defpackage.k
    public void m(View view) {
        this.e.m(view);
        this.g = view != null ? new WeakReference<>(view) : null;
    }

    @Override // defpackage.k
    public void n(int i2) {
        this.e.n(this.d.getString(i2));
    }

    @Override // defpackage.k
    public void o(CharSequence charSequence) {
        this.e.n(charSequence);
    }

    @Override // defpackage.k
    public void q(int i2) {
        this.e.o(this.d.getString(i2));
    }

    @Override // defpackage.k
    public void r(CharSequence charSequence) {
        this.e.o(charSequence);
    }

    @Override // defpackage.k
    public void s(boolean z) {
        super.s(z);
        this.e.p(z);
    }
}
