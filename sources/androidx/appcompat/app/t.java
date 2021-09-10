package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.n;
import defpackage.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

public class t extends ActionBar implements ActionBarOverlayLayout.d {
    private static final Interpolator A = new DecelerateInterpolator();
    private static final Interpolator z = new AccelerateInterpolator();
    Context a;
    private Context b;
    ActionBarOverlayLayout c;
    ActionBarContainer d;
    n e;
    ActionBarContextView f;
    View g;
    private boolean h;
    d i;
    k j;
    k.a k;
    private boolean l;
    private ArrayList<ActionBar.a> m = new ArrayList<>();
    private boolean n;
    private int o = 0;
    boolean p = true;
    boolean q;
    private boolean r;
    private boolean s = true;
    q t;
    private boolean u;
    boolean v;
    final i3 w = new a();
    final i3 x = new b();
    final k3 y = new c();

    class a extends j3 {
        a() {
        }

        @Override // defpackage.i3
        public void b(View view) {
            View view2;
            t tVar = t.this;
            if (tVar.p && (view2 = tVar.g) != null) {
                view2.setTranslationY(0.0f);
                t.this.d.setTranslationY(0.0f);
            }
            t.this.d.setVisibility(8);
            t.this.d.f(false);
            t tVar2 = t.this;
            tVar2.t = null;
            k.a aVar = tVar2.k;
            if (aVar != null) {
                aVar.a(tVar2.j);
                tVar2.j = null;
                tVar2.k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = t.this.c;
            if (actionBarOverlayLayout != null) {
                c3.t(actionBarOverlayLayout);
            }
        }
    }

    class b extends j3 {
        b() {
        }

        @Override // defpackage.i3
        public void b(View view) {
            t tVar = t.this;
            tVar.t = null;
            tVar.d.requestLayout();
        }
    }

    class c implements k3 {
        c() {
        }

        @Override // defpackage.k3
        public void a(View view) {
            ((View) t.this.d.getParent()).invalidate();
        }
    }

    public class d extends k implements g.a {
        private final Context d;
        private final g e;
        private k.a f;
        private WeakReference<View> g;

        public d(Context context, k.a aVar) {
            this.d = context;
            this.f = aVar;
            g gVar = new g(context);
            gVar.H(1);
            this.e = gVar;
            gVar.G(this);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(g gVar, MenuItem menuItem) {
            k.a aVar = this.f;
            if (aVar != null) {
                return aVar.d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(g gVar) {
            if (this.f != null) {
                k();
                t.this.f.r();
            }
        }

        @Override // defpackage.k
        public void c() {
            t tVar = t.this;
            if (tVar.i == this) {
                if (!(!tVar.q)) {
                    tVar.j = this;
                    tVar.k = this.f;
                } else {
                    this.f.a(this);
                }
                this.f = null;
                t.this.s(false);
                t.this.f.e();
                t.this.e.s().sendAccessibilityEvent(32);
                t tVar2 = t.this;
                tVar2.c.z(tVar2.v);
                t.this.i = null;
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
            return this.e;
        }

        @Override // defpackage.k
        public MenuInflater f() {
            return new p(this.d);
        }

        @Override // defpackage.k
        public CharSequence g() {
            return t.this.f.f();
        }

        @Override // defpackage.k
        public CharSequence i() {
            return t.this.f.g();
        }

        @Override // defpackage.k
        public void k() {
            if (t.this.i == this) {
                this.e.R();
                try {
                    this.f.c(this, this.e);
                } finally {
                    this.e.Q();
                }
            }
        }

        @Override // defpackage.k
        public boolean l() {
            return t.this.f.j();
        }

        @Override // defpackage.k
        public void m(View view) {
            t.this.f.m(view);
            this.g = new WeakReference<>(view);
        }

        @Override // defpackage.k
        public void n(int i) {
            t.this.f.n(t.this.a.getResources().getString(i));
        }

        @Override // defpackage.k
        public void o(CharSequence charSequence) {
            t.this.f.n(charSequence);
        }

        @Override // defpackage.k
        public void q(int i) {
            t.this.f.o(t.this.a.getResources().getString(i));
        }

        @Override // defpackage.k
        public void r(CharSequence charSequence) {
            t.this.f.o(charSequence);
        }

        @Override // defpackage.k
        public void s(boolean z) {
            super.s(z);
            t.this.f.p(z);
        }

        public boolean t() {
            this.e.R();
            try {
                return this.f.b(this, this.e);
            } finally {
                this.e.Q();
            }
        }
    }

    public t(Activity activity, boolean z2) {
        new ArrayList();
        View decorView = activity.getWindow().getDecorView();
        v(decorView);
        if (!z2) {
            this.g = decorView.findViewById(16908290);
        }
    }

    private void A(boolean z2) {
        View view;
        View view2;
        View view3;
        if (this.r || !this.q) {
            if (!this.s) {
                this.s = true;
                q qVar = this.t;
                if (qVar != null) {
                    qVar.a();
                }
                this.d.setVisibility(0);
                if (this.o != 0 || (!this.u && !z2)) {
                    this.d.setAlpha(1.0f);
                    this.d.setTranslationY(0.0f);
                    if (this.p && (view2 = this.g) != null) {
                        view2.setTranslationY(0.0f);
                    }
                    this.x.b(null);
                } else {
                    this.d.setTranslationY(0.0f);
                    float f2 = (float) (-this.d.getHeight());
                    if (z2) {
                        int[] iArr = {0, 0};
                        this.d.getLocationInWindow(iArr);
                        f2 -= (float) iArr[1];
                    }
                    this.d.setTranslationY(f2);
                    q qVar2 = new q();
                    h3 a2 = c3.a(this.d);
                    a2.k(0.0f);
                    a2.i(this.y);
                    qVar2.c(a2);
                    if (this.p && (view3 = this.g) != null) {
                        view3.setTranslationY(f2);
                        h3 a3 = c3.a(this.g);
                        a3.k(0.0f);
                        qVar2.c(a3);
                    }
                    qVar2.f(A);
                    qVar2.e(250);
                    qVar2.g(this.x);
                    this.t = qVar2;
                    qVar2.h();
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.c;
                if (actionBarOverlayLayout != null) {
                    int i2 = c3.g;
                    if (Build.VERSION.SDK_INT >= 20) {
                        actionBarOverlayLayout.requestApplyInsets();
                    } else {
                        actionBarOverlayLayout.requestFitSystemWindows();
                    }
                }
            }
        } else if (this.s) {
            this.s = false;
            q qVar3 = this.t;
            if (qVar3 != null) {
                qVar3.a();
            }
            if (this.o != 0 || (!this.u && !z2)) {
                this.w.b(null);
                return;
            }
            this.d.setAlpha(1.0f);
            this.d.f(true);
            q qVar4 = new q();
            float f3 = (float) (-this.d.getHeight());
            if (z2) {
                int[] iArr2 = {0, 0};
                this.d.getLocationInWindow(iArr2);
                f3 -= (float) iArr2[1];
            }
            h3 a4 = c3.a(this.d);
            a4.k(f3);
            a4.i(this.y);
            qVar4.c(a4);
            if (this.p && (view = this.g) != null) {
                h3 a5 = c3.a(view);
                a5.k(f3);
                qVar4.c(a5);
            }
            qVar4.f(z);
            qVar4.e(250);
            qVar4.g(this.w);
            this.t = qVar4;
            qVar4.h();
        }
    }

    private void v(View view) {
        n nVar;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.g6);
        this.c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.x(this);
        }
        View findViewById = view.findViewById(R.id.an);
        if (findViewById instanceof n) {
            nVar = (n) findViewById;
        } else if (findViewById instanceof Toolbar) {
            nVar = ((Toolbar) findViewById).C();
        } else {
            StringBuilder q2 = ic.q("Can't make a decor toolbar out of ");
            q2.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
            throw new IllegalStateException(q2.toString());
        }
        this.e = nVar;
        this.f = (ActionBarContextView) view.findViewById(R.id.av);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R.id.ap);
        this.d = actionBarContainer;
        n nVar2 = this.e;
        if (nVar2 == null || this.f == null || actionBarContainer == null) {
            throw new IllegalStateException(t.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = nVar2.getContext();
        boolean z2 = (this.e.u() & 4) != 0;
        if (z2) {
            this.h = true;
        }
        j b2 = j.b(this.a);
        this.e.t(b2.a() || z2);
        y(b2.e());
        TypedArray obtainStyledAttributes = this.a.obtainStyledAttributes(null, R$styleable.a, R.attr.f, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            if (this.c.u()) {
                this.v = true;
                this.c.z(true);
            } else {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            c3.w(this.d, (float) dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    private void y(boolean z2) {
        this.n = z2;
        if (!z2) {
            this.e.l(null);
            this.d.e(null);
        } else {
            this.d.e(null);
            this.e.l(null);
        }
        boolean z3 = true;
        boolean z4 = this.e.p() == 2;
        this.e.x(!this.n && z4);
        ActionBarOverlayLayout actionBarOverlayLayout = this.c;
        if (this.n || !z4) {
            z3 = false;
        }
        actionBarOverlayLayout.y(z3);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean b() {
        n nVar = this.e;
        if (nVar == null || !nVar.m()) {
            return false;
        }
        this.e.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void c(boolean z2) {
        if (z2 != this.l) {
            this.l = z2;
            int size = this.m.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.m.get(i2).a(z2);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int d() {
        return this.e.u();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context e() {
        if (this.b == null) {
            TypedValue typedValue = new TypedValue();
            this.a.getTheme().resolveAttribute(R.attr.k, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.b = new ContextThemeWrapper(this.a, i2);
            } else {
                this.b = this.a;
            }
        }
        return this.b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void g(Configuration configuration) {
        y(j.b(this.a).e());
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean i(int i2, KeyEvent keyEvent) {
        Menu e2;
        d dVar = this.i;
        if (dVar == null || (e2 = dVar.e()) == null) {
            return false;
        }
        boolean z2 = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z2 = false;
        }
        e2.setQwertyMode(z2);
        return ((g) e2).performShortcut(i2, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void l(Drawable drawable) {
        this.d.d(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void m(boolean z2) {
        if (!this.h) {
            n(z2);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(boolean z2) {
        int i2 = z2 ? 4 : 0;
        int u2 = this.e.u();
        this.h = true;
        this.e.n((i2 & 4) | (-5 & u2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void o(boolean z2) {
        q qVar;
        this.u = z2;
        if (!z2 && (qVar = this.t) != null) {
            qVar.a();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void p(CharSequence charSequence) {
        this.e.b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void q() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public k r(k.a aVar) {
        d dVar = this.i;
        if (dVar != null) {
            dVar.c();
        }
        this.c.z(false);
        this.f.k();
        d dVar2 = new d(this.f.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.i = dVar2;
        dVar2.k();
        this.f.h(dVar2);
        s(true);
        this.f.sendAccessibilityEvent(32);
        return dVar2;
    }

    public void s(boolean z2) {
        h3 h3Var;
        h3 h3Var2;
        if (z2) {
            if (!this.r) {
                this.r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.A();
                }
                A(false);
            }
        } else if (this.r) {
            this.r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.A();
            }
            A(false);
        }
        ActionBarContainer actionBarContainer = this.d;
        int i2 = c3.g;
        if (actionBarContainer.isLaidOut()) {
            if (z2) {
                h3Var = this.e.q(4, 100);
                h3Var2 = this.f.q(0, 200);
            } else {
                h3Var2 = this.e.q(0, 200);
                h3Var = this.f.q(8, 100);
            }
            q qVar = new q();
            qVar.d(h3Var, h3Var2);
            qVar.h();
        } else if (z2) {
            this.e.setVisibility(4);
            this.f.setVisibility(0);
        } else {
            this.e.setVisibility(0);
            this.f.setVisibility(8);
        }
    }

    public void t(boolean z2) {
        this.p = z2;
    }

    public void u() {
        if (!this.q) {
            this.q = true;
            A(true);
        }
    }

    public void w() {
        q qVar = this.t;
        if (qVar != null) {
            qVar.a();
            this.t = null;
        }
    }

    public void x(int i2) {
        this.o = i2;
    }

    public void z() {
        if (this.q) {
            this.q = false;
            A(true);
        }
    }

    public t(Dialog dialog) {
        new ArrayList();
        v(dialog.getWindow().getDecorView());
    }
}
