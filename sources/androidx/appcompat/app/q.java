package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.k0;
import androidx.appcompat.widget.n;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public class q extends ActionBar {
    n a;
    boolean b;
    Window.Callback c;
    private boolean d;
    private boolean e;
    private ArrayList<ActionBar.a> f = new ArrayList<>();
    private final Runnable g = new a();
    private final Toolbar.e h;

    class a implements Runnable {
        a() {
        }

        public void run() {
            q.this.t();
        }
    }

    class b implements Toolbar.e {
        b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            return q.this.c.onMenuItemSelected(0, menuItem);
        }
    }

    /* access modifiers changed from: private */
    public final class c implements m.a {
        private boolean b;

        c() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(g gVar, boolean z) {
            if (!this.b) {
                this.b = true;
                q.this.a.k();
                Window.Callback callback = q.this.c;
                if (callback != null) {
                    callback.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
                }
                this.b = false;
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(g gVar) {
            Window.Callback callback = q.this.c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            return true;
        }
    }

    /* access modifiers changed from: private */
    public final class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(g gVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(g gVar) {
            q qVar = q.this;
            if (qVar.c == null) {
                return;
            }
            if (qVar.a.c()) {
                q.this.c.onPanelClosed(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            } else if (q.this.c.onPreparePanel(0, null, gVar)) {
                q.this.c.onMenuOpened(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, gVar);
            }
        }
    }

    private class e extends r {
        public e(Window.Callback callback) {
            super(callback);
        }

        @Override // defpackage.r
        public View onCreatePanelView(int i) {
            if (i == 0) {
                return new View(q.this.a.getContext());
            }
            return super.onCreatePanelView(i);
        }

        @Override // defpackage.r
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel) {
                q qVar = q.this;
                if (!qVar.b) {
                    qVar.a.d();
                    q.this.b = true;
                }
            }
            return onPreparePanel;
        }
    }

    q(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.h = bVar;
        this.a = new k0(toolbar, false);
        e eVar = new e(callback);
        this.c = eVar;
        this.a.f(eVar);
        toolbar.V(bVar);
        this.a.b(charSequence);
    }

    private Menu s() {
        if (!this.d) {
            this.a.r(new c(), new d());
            this.d = true;
        }
        return this.a.o();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean a() {
        return this.a.i();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean b() {
        if (!this.a.m()) {
            return false;
        }
        this.a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void c(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.get(i).a(z);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int d() {
        return this.a.u();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context e() {
        return this.a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean f() {
        this.a.s().removeCallbacks(this.g);
        ViewGroup s = this.a.s();
        Runnable runnable = this.g;
        int i = c3.g;
        s.postOnAnimation(runnable);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void g(Configuration configuration) {
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    public void h() {
        this.a.s().removeCallbacks(this.g);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean i(int i, KeyEvent keyEvent) {
        Menu s = s();
        if (s == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        s.setQwertyMode(z);
        return s.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.a.j();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean k() {
        return this.a.j();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void l(Drawable drawable) {
        this.a.g(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void m(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(boolean z) {
        this.a.n(((z ? 4 : 0) & 4) | (-5 & this.a.u()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void o(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void p(CharSequence charSequence) {
        this.a.b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void q() {
        this.a.setVisibility(0);
    }

    /* access modifiers changed from: package-private */
    public void t() {
        Menu s = s();
        g gVar = s instanceof g ? (g) s : null;
        if (gVar != null) {
            gVar.R();
        }
        try {
            s.clear();
            if (!this.c.onCreatePanelMenu(0, s) || !this.c.onPreparePanel(0, null, s)) {
                s.clear();
            }
        } finally {
            if (gVar != null) {
                gVar.Q();
            }
        }
    }
}
