package defpackage;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.j;
import defpackage.k;
import java.util.ArrayList;

/* renamed from: o  reason: default package */
public class o extends ActionMode {
    final Context a;
    final k b;

    /* renamed from: o$a */
    public static class a implements k.a {
        final ActionMode.Callback a;
        final Context b;
        final ArrayList<o> c = new ArrayList<>();
        final e0<Menu, Menu> d = new e0<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        private Menu f(Menu menu) {
            Menu orDefault = this.d.getOrDefault(menu, null);
            if (orDefault != null) {
                return orDefault;
            }
            androidx.appcompat.view.menu.o oVar = new androidx.appcompat.view.menu.o(this.b, (u1) menu);
            this.d.put(menu, oVar);
            return oVar;
        }

        @Override // defpackage.k.a
        public void a(k kVar) {
            this.a.onDestroyActionMode(e(kVar));
        }

        @Override // defpackage.k.a
        public boolean b(k kVar, Menu menu) {
            return this.a.onCreateActionMode(e(kVar), f(menu));
        }

        @Override // defpackage.k.a
        public boolean c(k kVar, Menu menu) {
            return this.a.onPrepareActionMode(e(kVar), f(menu));
        }

        @Override // defpackage.k.a
        public boolean d(k kVar, MenuItem menuItem) {
            return this.a.onActionItemClicked(e(kVar), new j(this.b, (v1) menuItem));
        }

        public ActionMode e(k kVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                o oVar = this.c.get(i);
                if (oVar != null && oVar.b == kVar) {
                    return oVar;
                }
            }
            o oVar2 = new o(this.b, kVar);
            this.c.add(oVar2);
            return oVar2;
        }
    }

    public o(Context context, k kVar) {
        this.a = context;
        this.b = kVar;
    }

    public void finish() {
        this.b.c();
    }

    public View getCustomView() {
        return this.b.d();
    }

    public Menu getMenu() {
        return new androidx.appcompat.view.menu.o(this.a, (u1) this.b.e());
    }

    public MenuInflater getMenuInflater() {
        return this.b.f();
    }

    public CharSequence getSubtitle() {
        return this.b.g();
    }

    public Object getTag() {
        return this.b.h();
    }

    public CharSequence getTitle() {
        return this.b.i();
    }

    public boolean getTitleOptionalHint() {
        return this.b.j();
    }

    public void invalidate() {
        this.b.k();
    }

    public boolean isTitleOptional() {
        return this.b.l();
    }

    public void setCustomView(View view) {
        this.b.m(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b.o(charSequence);
    }

    public void setTag(Object obj) {
        this.b.p(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.b.r(charSequence);
    }

    public void setTitleOptionalHint(boolean z) {
        this.b.s(z);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.q(i);
    }
}
