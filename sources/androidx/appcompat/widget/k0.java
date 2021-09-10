package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import photoeditor.cutout.backgrounderaser.R;

public class k0 implements n {
    Toolbar a;
    private int b;
    private View c;
    private View d;
    private Drawable e;
    private Drawable f;
    private Drawable g;
    private boolean h;
    CharSequence i;
    private CharSequence j;
    private CharSequence k;
    Window.Callback l;
    boolean m;
    private ActionMenuPresenter n;
    private int o = 0;
    private Drawable p;

    class a extends j3 {
        private boolean a = false;
        final /* synthetic */ int b;

        a(int i) {
            this.b = i;
        }

        @Override // defpackage.j3, defpackage.i3
        public void a(View view) {
            this.a = true;
        }

        @Override // defpackage.i3
        public void b(View view) {
            if (!this.a) {
                k0.this.a.setVisibility(this.b);
            }
        }

        @Override // defpackage.j3, defpackage.i3
        public void c(View view) {
            k0.this.a.setVisibility(0);
        }
    }

    public k0(Toolbar toolbar, boolean z) {
        Drawable drawable;
        this.a = toolbar;
        this.i = toolbar.w();
        this.j = toolbar.v();
        this.h = this.i != null;
        this.g = toolbar.u();
        String str = null;
        i0 u = i0.u(toolbar.getContext(), null, R$styleable.a, R.attr.f, 0);
        int i2 = 15;
        this.p = u.g(15);
        if (z) {
            CharSequence p2 = u.p(27);
            if (!TextUtils.isEmpty(p2)) {
                this.h = true;
                this.i = p2;
                if ((this.b & 8) != 0) {
                    this.a.Z(p2);
                }
            }
            CharSequence p3 = u.p(25);
            if (!TextUtils.isEmpty(p3)) {
                this.j = p3;
                if ((this.b & 8) != 0) {
                    this.a.X(p3);
                }
            }
            Drawable g2 = u.g(20);
            if (g2 != null) {
                this.f = g2;
                A();
            }
            Drawable g3 = u.g(17);
            if (g3 != null) {
                this.e = g3;
                A();
            }
            if (this.g == null && (drawable = this.p) != null) {
                this.g = drawable;
                z();
            }
            n(u.k(10, 0));
            int n2 = u.n(9, 0);
            if (n2 != 0) {
                View inflate = LayoutInflater.from(this.a.getContext()).inflate(n2, (ViewGroup) this.a, false);
                View view = this.d;
                if (!(view == null || (this.b & 16) == 0)) {
                    this.a.removeView(view);
                }
                this.d = inflate;
                if (!(inflate == null || (this.b & 16) == 0)) {
                    this.a.addView(inflate);
                }
                n(this.b | 16);
            }
            int m2 = u.m(13, 0);
            if (m2 > 0) {
                ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = m2;
                this.a.setLayoutParams(layoutParams);
            }
            int e2 = u.e(7, -1);
            int e3 = u.e(3, -1);
            if (e2 >= 0 || e3 >= 0) {
                this.a.O(Math.max(e2, 0), Math.max(e3, 0));
            }
            int n3 = u.n(28, 0);
            if (n3 != 0) {
                Toolbar toolbar2 = this.a;
                toolbar2.a0(toolbar2.getContext(), n3);
            }
            int n4 = u.n(26, 0);
            if (n4 != 0) {
                Toolbar toolbar3 = this.a;
                toolbar3.Y(toolbar3.getContext(), n4);
            }
            int n5 = u.n(22, 0);
            if (n5 != 0) {
                this.a.W(n5);
            }
        } else {
            if (this.a.u() != null) {
                this.p = this.a.u();
            } else {
                i2 = 11;
            }
            this.b = i2;
        }
        u.v();
        if (R.string.c != this.o) {
            this.o = R.string.c;
            if (TextUtils.isEmpty(this.a.t())) {
                int i3 = this.o;
                this.k = i3 != 0 ? getContext().getString(i3) : str;
                y();
            }
        }
        this.k = this.a.t();
        this.a.U(new j0(this));
    }

    private void A() {
        Drawable drawable;
        int i2 = this.b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f;
            if (drawable == null) {
                drawable = this.e;
            }
        } else {
            drawable = this.e;
        }
        this.a.P(drawable);
    }

    private void y() {
        if ((this.b & 4) == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.k)) {
            Toolbar toolbar = this.a;
            int i2 = this.o;
            toolbar.S(i2 != 0 ? toolbar.getContext().getText(i2) : null);
            return;
        }
        this.a.S(this.k);
    }

    private void z() {
        if ((this.b & 4) != 0) {
            Toolbar toolbar = this.a;
            Drawable drawable = this.g;
            if (drawable == null) {
                drawable = this.p;
            }
            toolbar.T(drawable);
            return;
        }
        this.a.T(null);
    }

    @Override // androidx.appcompat.widget.n
    public void a(Menu menu, m.a aVar) {
        if (this.n == null) {
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(this.a.getContext());
            this.n = actionMenuPresenter;
            actionMenuPresenter.p(R.id.az);
        }
        this.n.g(aVar);
        this.a.Q((g) menu, this.n);
    }

    @Override // androidx.appcompat.widget.n
    public void b(CharSequence charSequence) {
        if (!this.h) {
            this.i = charSequence;
            if ((this.b & 8) != 0) {
                this.a.Z(charSequence);
            }
        }
    }

    @Override // androidx.appcompat.widget.n
    public boolean c() {
        return this.a.H();
    }

    @Override // androidx.appcompat.widget.n
    public void collapseActionView() {
        this.a.f();
    }

    @Override // androidx.appcompat.widget.n
    public void d() {
        this.m = true;
    }

    @Override // androidx.appcompat.widget.n
    public boolean e() {
        return this.a.e();
    }

    @Override // androidx.appcompat.widget.n
    public void f(Window.Callback callback) {
        this.l = callback;
    }

    @Override // androidx.appcompat.widget.n
    public void g(Drawable drawable) {
        Toolbar toolbar = this.a;
        int i2 = c3.g;
        toolbar.setBackground(drawable);
    }

    @Override // androidx.appcompat.widget.n
    public Context getContext() {
        return this.a.getContext();
    }

    @Override // androidx.appcompat.widget.n
    public boolean h() {
        return this.a.G();
    }

    @Override // androidx.appcompat.widget.n
    public boolean i() {
        return this.a.E();
    }

    @Override // androidx.appcompat.widget.n
    public boolean j() {
        return this.a.c0();
    }

    @Override // androidx.appcompat.widget.n
    public void k() {
        this.a.g();
    }

    @Override // androidx.appcompat.widget.n
    public void l(y yVar) {
        Toolbar toolbar;
        View view = this.c;
        if (view != null && view.getParent() == (toolbar = this.a)) {
            toolbar.removeView(this.c);
        }
        this.c = null;
    }

    @Override // androidx.appcompat.widget.n
    public boolean m() {
        return this.a.D();
    }

    @Override // androidx.appcompat.widget.n
    public void n(int i2) {
        View view;
        int i3 = this.b ^ i2;
        this.b = i2;
        if (i3 != 0) {
            if ((i3 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    y();
                }
                z();
            }
            if ((i3 & 3) != 0) {
                A();
            }
            if ((i3 & 8) != 0) {
                if ((i2 & 8) != 0) {
                    this.a.Z(this.i);
                    this.a.X(this.j);
                } else {
                    this.a.Z(null);
                    this.a.X(null);
                }
            }
            if ((i3 & 16) != 0 && (view = this.d) != null) {
                if ((i2 & 16) != 0) {
                    this.a.addView(view);
                } else {
                    this.a.removeView(view);
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.n
    public Menu o() {
        return this.a.s();
    }

    @Override // androidx.appcompat.widget.n
    public int p() {
        return 0;
    }

    @Override // androidx.appcompat.widget.n
    public h3 q(int i2, long j2) {
        h3 a2 = c3.a(this.a);
        a2.a(i2 == 0 ? 1.0f : 0.0f);
        a2.d(j2);
        a2.f(new a(i2));
        return a2;
    }

    @Override // androidx.appcompat.widget.n
    public void r(m.a aVar, g.a aVar2) {
        this.a.R(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.n
    public ViewGroup s() {
        return this.a;
    }

    @Override // androidx.appcompat.widget.n
    public void setVisibility(int i2) {
        this.a.setVisibility(i2);
    }

    @Override // androidx.appcompat.widget.n
    public void t(boolean z) {
    }

    @Override // androidx.appcompat.widget.n
    public int u() {
        return this.b;
    }

    @Override // androidx.appcompat.widget.n
    public void v() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.n
    public void w() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.n
    public void x(boolean z) {
        this.a.N(z);
    }
}
