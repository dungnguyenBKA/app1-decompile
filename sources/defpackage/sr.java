package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.b;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;

/* renamed from: sr  reason: default package */
public abstract class sr<T, VH extends BaseViewHolder> extends RecyclerView.g<VH> {
    private List<T> c;
    private boolean d;
    private boolean e;
    private int f;
    private ur g;
    private RecyclerView h;
    private final LinkedHashSet<Integer> i;
    private final LinkedHashSet<Integer> j;
    private final int k;

    /* renamed from: sr$a */
    public static final class a extends GridLayoutManager.b {
        final /* synthetic */ sr c;
        final /* synthetic */ RecyclerView.o d;
        final /* synthetic */ GridLayoutManager.b e;

        a(sr srVar, RecyclerView.o oVar, GridLayoutManager.b bVar) {
            this.c = srVar;
            this.d = oVar;
            this.e = bVar;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int c(int i) {
            int d2 = this.c.d(i);
            if (d2 == 268435729) {
                Objects.requireNonNull(this.c);
            }
            if (d2 == 268436275) {
                Objects.requireNonNull(this.c);
            }
            Objects.requireNonNull(this.c);
            return this.c.E(d2) ? ((GridLayoutManager) this.d).a2() : this.e.c(i);
        }
    }

    public sr(int i2, List<T> list) {
        this.k = i2;
        this.c = list == null ? new ArrayList<>() : list;
        this.d = true;
        this.e = true;
        this.f = -1;
        this.i = new LinkedHashSet<>();
        this.j = new LinkedHashSet<>();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x007a A[SYNTHETIC, Splitter:B:34:0x007a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public VH A(android.view.View r9) {
        /*
        // Method dump skipped, instructions count: 254
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sr.A(android.view.View):com.chad.library.adapter.base.viewholder.BaseViewHolder");
    }

    public final List<T> B() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public int C(int i2) {
        return 0;
    }

    public T D(int i2) {
        return this.c.get(i2);
    }

    /* access modifiers changed from: protected */
    public boolean E(int i2) {
        return i2 == 268436821 || i2 == 268435729 || i2 == 268436275 || i2 == 268436002;
    }

    /* renamed from: F */
    public void q(VH vh, int i2) {
        gg0.f(vh, "holder");
        switch (vh.getItemViewType()) {
            case 268435729:
            case 268436002:
            case 268436275:
            case 268436821:
                return;
            default:
                z(vh, D(i2 + 0));
                return;
        }
    }

    /* access modifiers changed from: protected */
    public VH G(ViewGroup viewGroup, int i2) {
        gg0.f(viewGroup, "parent");
        int i3 = this.k;
        gg0.f(viewGroup, "parent");
        return A(b.M(viewGroup, i3));
    }

    public void H(List<T> list) {
        if (list != this.c) {
            if (list == null) {
                list = new ArrayList<>();
            }
            this.c = list;
            this.f = -1;
            f();
        }
    }

    /* access modifiers changed from: protected */
    public void I(View view, int i2) {
        gg0.f(view, "v");
        ur urVar = this.g;
        if (urVar != null) {
            urVar.a(this, view, i2);
        }
    }

    public void J(ur urVar) {
        this.g = urVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.c.size() + 0 + 0 + 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public long c(int i2) {
        return (long) i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int d(int i2) {
        int size = this.c.size();
        if (i2 < size) {
            return C(i2);
        }
        return i2 - size < 0 ? 268436275 : 268436002;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void p(RecyclerView recyclerView) {
        gg0.f(recyclerView, "recyclerView");
        new WeakReference(recyclerView);
        this.h = recyclerView;
        gg0.b(recyclerView.getContext(), "recyclerView.context");
        RecyclerView.o layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.i2(new a(this, layoutManager, gridLayoutManager.e2()));
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: sr<T, VH extends com.chad.library.adapter.base.viewholder.BaseViewHolder> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void r(RecyclerView.b0 b0Var, int i2, List list) {
        BaseViewHolder baseViewHolder = (BaseViewHolder) b0Var;
        gg0.f(baseViewHolder, "holder");
        gg0.f(list, "payloads");
        if (list.isEmpty()) {
            q(baseViewHolder, i2);
            return;
        }
        switch (baseViewHolder.getItemViewType()) {
            case 268435729:
            case 268436002:
            case 268436275:
            case 268436821:
                return;
            default:
                D(i2 + 0);
                gg0.f(baseViewHolder, "holder");
                gg0.f(list, "payloads");
                return;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i2) {
        gg0.f(viewGroup, "parent");
        switch (i2) {
            case 268435729:
                gg0.j("mHeaderLayout");
                throw null;
            case 268436002:
                gg0.i();
                throw null;
            case 268436275:
                gg0.j("mFooterLayout");
                throw null;
            case 268436821:
                gg0.j("mEmptyLayout");
                throw null;
            default:
                VH G = G(viewGroup, i2);
                gg0.f(G, "viewHolder");
                if (this.g != null) {
                    G.itemView.setOnClickListener(new qr(0, this, G));
                }
                gg0.f(G, "viewHolder");
                return G;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void t(RecyclerView recyclerView) {
        gg0.f(recyclerView, "recyclerView");
        this.h = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void u(RecyclerView.b0 b0Var) {
        BaseViewHolder baseViewHolder = (BaseViewHolder) b0Var;
        gg0.f(baseViewHolder, "holder");
        if (E(baseViewHolder.getItemViewType())) {
            gg0.f(baseViewHolder, "holder");
            View view = baseViewHolder.itemView;
            gg0.b(view, "holder.itemView");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).d(true);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void z(VH vh, T t);
}
