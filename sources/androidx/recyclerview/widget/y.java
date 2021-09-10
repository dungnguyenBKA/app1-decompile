package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;

public class y extends n2 {
    final RecyclerView d;
    private final a e;

    public static class a extends n2 {
        final y d;
        private Map<View, n2> e = new WeakHashMap();

        public a(y yVar) {
            this.d = yVar;
        }

        @Override // defpackage.n2
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                return n2Var.a(view, accessibilityEvent);
            }
            return super.a(view, accessibilityEvent);
        }

        @Override // defpackage.n2
        public o3 b(View view) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                return n2Var.b(view);
            }
            return super.b(view);
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                n2Var.d(view, accessibilityEvent);
            } else {
                super.d(view, accessibilityEvent);
            }
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            if (this.d.l() || this.d.d.getLayoutManager() == null) {
                super.e(view, n3Var);
                return;
            }
            this.d.d.getLayoutManager().y0(view, n3Var);
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                n2Var.e(view, n3Var);
            } else {
                super.e(view, n3Var);
            }
        }

        @Override // defpackage.n2
        public void f(View view, AccessibilityEvent accessibilityEvent) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                n2Var.f(view, accessibilityEvent);
            } else {
                super.f(view, accessibilityEvent);
            }
        }

        @Override // defpackage.n2
        public boolean g(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            n2 n2Var = this.e.get(viewGroup);
            if (n2Var != null) {
                return n2Var.g(viewGroup, view, accessibilityEvent);
            }
            return super.g(viewGroup, view, accessibilityEvent);
        }

        @Override // defpackage.n2
        public boolean h(View view, int i, Bundle bundle) {
            if (this.d.l() || this.d.d.getLayoutManager() == null) {
                return super.h(view, i, bundle);
            }
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                if (n2Var.h(view, i, bundle)) {
                    return true;
                }
            } else if (super.h(view, i, bundle)) {
                return true;
            }
            RecyclerView.o layoutManager = this.d.d.getLayoutManager();
            RecyclerView.u uVar = layoutManager.b.mRecycler;
            return layoutManager.Q0();
        }

        @Override // defpackage.n2
        public void i(View view, int i) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                n2Var.i(view, i);
            } else {
                super.i(view, i);
            }
        }

        @Override // defpackage.n2
        public void j(View view, AccessibilityEvent accessibilityEvent) {
            n2 n2Var = this.e.get(view);
            if (n2Var != null) {
                n2Var.j(view, accessibilityEvent);
            } else {
                super.j(view, accessibilityEvent);
            }
        }

        /* access modifiers changed from: package-private */
        public n2 k(View view) {
            return this.e.remove(view);
        }

        /* access modifiers changed from: package-private */
        public void l(View view) {
            n2 f = c3.f(view);
            if (f != null && f != this) {
                this.e.put(view, f);
            }
        }
    }

    public y(RecyclerView recyclerView) {
        this.d = recyclerView;
        a aVar = this.e;
        if (aVar != null) {
            this.e = aVar;
        } else {
            this.e = new a(this);
        }
    }

    @Override // defpackage.n2
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !l()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().v0(accessibilityEvent);
            }
        }
    }

    @Override // defpackage.n2
    public void e(View view, n3 n3Var) {
        super.e(view, n3Var);
        if (!l() && this.d.getLayoutManager() != null) {
            RecyclerView.o layoutManager = this.d.getLayoutManager();
            RecyclerView recyclerView = layoutManager.b;
            layoutManager.x0(recyclerView.mRecycler, recyclerView.mState, n3Var);
        }
    }

    @Override // defpackage.n2
    public boolean h(View view, int i, Bundle bundle) {
        if (super.h(view, i, bundle)) {
            return true;
        }
        if (l() || this.d.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.o layoutManager = this.d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.b;
        return layoutManager.P0(recyclerView.mRecycler, recyclerView.mState, i, bundle);
    }

    public n2 k() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public boolean l() {
        return this.d.hasPendingAdapterUpdates();
    }
}
