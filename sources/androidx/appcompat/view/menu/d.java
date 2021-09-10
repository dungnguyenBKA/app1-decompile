package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.t;
import androidx.appcompat.widget.u;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public final class d extends k implements m, View.OnKeyListener, PopupWindow.OnDismissListener {
    private PopupWindow.OnDismissListener A;
    boolean B;
    private final Context c;
    private final int d;
    private final int e;
    private final int f;
    private final boolean g;
    final Handler h;
    private final List<g> i = new ArrayList();
    final List<C0002d> j = new ArrayList();
    final ViewTreeObserver.OnGlobalLayoutListener k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private final t m = new c();
    private int n;
    private int o;
    private View p;
    View q;
    private int r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private boolean w;
    private boolean x;
    private m.a y;
    ViewTreeObserver z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        public void onGlobalLayout() {
            if (d.this.a() && d.this.j.size() > 0 && !d.this.j.get(0).a.f()) {
                View view = d.this.q;
                if (view == null || !view.isShown()) {
                    d.this.dismiss();
                    return;
                }
                for (C0002d dVar : d.this.j) {
                    dVar.a.show();
                }
            }
        }
    }

    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        public void onViewAttachedToWindow(View view) {
        }

        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = d.this.z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.z = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.z.removeGlobalOnLayoutListener(dVar.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    class c implements t {

        class a implements Runnable {
            final /* synthetic */ C0002d b;
            final /* synthetic */ MenuItem c;
            final /* synthetic */ g d;

            a(C0002d dVar, MenuItem menuItem, g gVar) {
                this.b = dVar;
                this.c = menuItem;
                this.d = gVar;
            }

            public void run() {
                C0002d dVar = this.b;
                if (dVar != null) {
                    d.this.B = true;
                    dVar.b.e(false);
                    d.this.B = false;
                }
                if (this.c.isEnabled() && this.c.hasSubMenu()) {
                    this.d.y(this.c, 4);
                }
            }
        }

        c() {
        }

        @Override // androidx.appcompat.widget.t
        public void b(g gVar, MenuItem menuItem) {
            C0002d dVar = null;
            d.this.h.removeCallbacksAndMessages(null);
            int size = d.this.j.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (gVar == d.this.j.get(i).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (i2 < d.this.j.size()) {
                    dVar = d.this.j.get(i2);
                }
                d.this.h.postAtTime(new a(dVar, menuItem, gVar), gVar, SystemClock.uptimeMillis() + 200);
            }
        }

        @Override // androidx.appcompat.widget.t
        public void c(g gVar, MenuItem menuItem) {
            d.this.h.removeCallbacksAndMessages(gVar);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: androidx.appcompat.view.menu.d$d  reason: collision with other inner class name */
    public static class C0002d {
        public final u a;
        public final g b;
        public final int c;

        public C0002d(u uVar, g gVar, int i) {
            this.a = uVar;
            this.b = gVar;
            this.c = i;
        }

        public ListView a() {
            return this.a.l();
        }
    }

    public d(Context context, View view, int i2, int i3, boolean z2) {
        int i4 = 0;
        this.n = 0;
        this.o = 0;
        this.c = context;
        this.p = view;
        this.e = i2;
        this.f = i3;
        this.g = z2;
        this.w = false;
        int i5 = c3.g;
        this.r = view.getLayoutDirection() != 1 ? 1 : i4;
        Resources resources = context.getResources();
        this.d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.x));
        this.h = new Handler();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0124, code lost:
        if (((r8.getWidth() + r12[0]) + r4) > r10.right) goto L_0x012e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x012a, code lost:
        if ((r12[0] - r4) < 0) goto L_0x012c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x012e, code lost:
        r8 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void z(androidx.appcompat.view.menu.g r17) {
        /*
        // Method dump skipped, instructions count: 498
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.d.z(androidx.appcompat.view.menu.g):void");
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return this.j.size() > 0 && this.j.get(0).a.a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z2) {
        int size = this.j.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (gVar == this.j.get(i2).b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int i3 = i2 + 1;
            if (i3 < this.j.size()) {
                this.j.get(i3).b.e(false);
            }
            C0002d remove = this.j.remove(i2);
            remove.b.B(this);
            if (this.B) {
                remove.a.E(null);
                remove.a.t(0);
            }
            remove.a.dismiss();
            int size2 = this.j.size();
            if (size2 > 0) {
                this.r = this.j.get(size2 - 1).c;
            } else {
                View view = this.p;
                int i4 = c3.g;
                this.r = view.getLayoutDirection() == 1 ? 0 : 1;
            }
            if (size2 == 0) {
                dismiss();
                m.a aVar = this.y;
                if (aVar != null) {
                    aVar.b(gVar, true);
                }
                ViewTreeObserver viewTreeObserver = this.z;
                if (viewTreeObserver != null) {
                    if (viewTreeObserver.isAlive()) {
                        this.z.removeGlobalOnLayoutListener(this.k);
                    }
                    this.z = null;
                }
                this.q.removeOnAttachStateChangeListener(this.l);
                this.A.onDismiss();
            } else if (z2) {
                this.j.get(0).b.e(false);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z2) {
        for (C0002d dVar : this.j) {
            ListAdapter adapter = dVar.a().getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((f) adapter).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        int size = this.j.size();
        if (size > 0) {
            C0002d[] dVarArr = (C0002d[]) this.j.toArray(new C0002d[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                C0002d dVar = dVarArr[i2];
                if (dVar.a.a()) {
                    dVar.a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.y = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        for (C0002d dVar : this.j) {
            if (rVar == dVar.b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        rVar.c(this, this.c);
        if (a()) {
            z(rVar);
        } else {
            this.i.add(rVar);
        }
        m.a aVar = this.y;
        if (aVar != null) {
            aVar.c(rVar);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        if (this.j.isEmpty()) {
            return null;
        }
        List<C0002d> list = this.j;
        return list.get(list.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.k
    public void m(g gVar) {
        gVar.c(this, this.c);
        if (a()) {
            z(gVar);
        } else {
            this.i.add(gVar);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.view.menu.k
    public boolean n() {
        return false;
    }

    public void onDismiss() {
        C0002d dVar;
        int size = this.j.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dVar = null;
                break;
            }
            dVar = this.j.get(i2);
            if (!dVar.a.a()) {
                break;
            }
            i2++;
        }
        if (dVar != null) {
            dVar.b.e(false);
        }
    }

    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public void q(View view) {
        if (this.p != view) {
            this.p = view;
            int i2 = this.n;
            int i3 = c3.g;
            this.o = Gravity.getAbsoluteGravity(i2, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(boolean z2) {
        this.w = z2;
    }

    @Override // androidx.appcompat.view.menu.p
    public void show() {
        if (!a()) {
            for (g gVar : this.i) {
                z(gVar);
            }
            this.i.clear();
            View view = this.p;
            this.q = view;
            if (view != null) {
                boolean z2 = this.z == null;
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                this.z = viewTreeObserver;
                if (z2) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.k);
                }
                this.q.addOnAttachStateChangeListener(this.l);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i2) {
        if (this.n != i2) {
            this.n = i2;
            View view = this.p;
            int i3 = c3.g;
            this.o = Gravity.getAbsoluteGravity(i2, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(int i2) {
        this.s = true;
        this.u = i2;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(boolean z2) {
        this.x = z2;
    }

    @Override // androidx.appcompat.view.menu.k
    public void x(int i2) {
        this.t = true;
        this.v = i2;
    }
}
