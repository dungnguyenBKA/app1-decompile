package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.u;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public final class q extends k implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, m, View.OnKeyListener {
    private final Context c;
    private final g d;
    private final f e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    final u j;
    final ViewTreeObserver.OnGlobalLayoutListener k = new a();
    private final View.OnAttachStateChangeListener l = new b();
    private PopupWindow.OnDismissListener m;
    private View n;
    View o;
    private m.a p;
    ViewTreeObserver q;
    private boolean r;
    private boolean s;
    private int t;
    private int u = 0;
    private boolean v;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        public void onGlobalLayout() {
            if (q.this.a() && !q.this.j.f()) {
                View view = q.this.o;
                if (view == null || !view.isShown()) {
                    q.this.dismiss();
                } else {
                    q.this.j.show();
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
            ViewTreeObserver viewTreeObserver = q.this.q;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.q = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.q.removeGlobalOnLayoutListener(qVar.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i2, int i3, boolean z) {
        this.c = context;
        this.d = gVar;
        this.f = z;
        this.e = new f(gVar, LayoutInflater.from(context), z, R.layout.t);
        this.h = i2;
        this.i = i3;
        Resources resources = context.getResources();
        this.g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.x));
        this.n = view;
        this.j = new u(context, null, i2, i3);
        gVar.c(this, context);
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return !this.r && this.j.a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z) {
        if (gVar == this.d) {
            dismiss();
            m.a aVar = this.p;
            if (aVar != null) {
                aVar.b(gVar, z);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        this.s = false;
        f fVar = this.e;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (a()) {
            this.j.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.p = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.c, rVar, this.o, this.f, this.h, this.i);
            lVar.i(this.p);
            lVar.f(k.y(rVar));
            lVar.h(this.m);
            this.m = null;
            this.d.e(false);
            int h2 = this.j.h();
            int q2 = this.j.q();
            int i2 = this.u;
            View view = this.n;
            int i3 = c3.g;
            if ((Gravity.getAbsoluteGravity(i2, view.getLayoutDirection()) & 7) == 5) {
                h2 += this.n.getWidth();
            }
            if (lVar.l(h2, q2)) {
                m.a aVar = this.p;
                if (aVar == null) {
                    return true;
                }
                aVar.c(rVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView l() {
        return this.j.l();
    }

    @Override // androidx.appcompat.view.menu.k
    public void m(g gVar) {
    }

    public void onDismiss() {
        this.r = true;
        this.d.e(true);
        ViewTreeObserver viewTreeObserver = this.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.q = this.o.getViewTreeObserver();
            }
            this.q.removeGlobalOnLayoutListener(this.k);
            this.q = null;
        }
        this.o.removeOnAttachStateChangeListener(this.l);
        PopupWindow.OnDismissListener onDismissListener = this.m;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.n = view;
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(boolean z) {
        this.e.d(z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x00c5 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00c6  */
    @Override // androidx.appcompat.view.menu.p
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void show() {
        /*
        // Method dump skipped, instructions count: 208
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.q.show():void");
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i2) {
        this.u = i2;
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(int i2) {
        this.j.i(i2);
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.k
    public void x(int i2) {
        this.j.n(i2);
    }
}
