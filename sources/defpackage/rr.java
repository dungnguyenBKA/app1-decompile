package defpackage;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.core.app.b;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import defpackage.tr;
import java.util.List;

/* renamed from: rr  reason: default package */
public abstract class rr<T extends tr, VH extends BaseViewHolder> extends sr<T, VH> {
    private final uf0 l = vf0.a(xf0.NONE, a.b);

    /* renamed from: rr$a */
    static final class a extends hg0 implements fg0<SparseIntArray> {
        public static final a b = new a();

        a() {
            super(0);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.fg0
        public SparseIntArray a() {
            return new SparseIntArray();
        }
    }

    public rr(List<T> list) {
        super(0, list);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sr
    public int C(int i) {
        return B().get(i).a();
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sr
    public VH G(ViewGroup viewGroup, int i) {
        gg0.f(viewGroup, "parent");
        int i2 = ((SparseIntArray) this.l.getValue()).get(i);
        if (i2 != 0) {
            gg0.f(viewGroup, "parent");
            return A(b.M(viewGroup, i2));
        }
        throw new IllegalArgumentException(("ViewType: " + i + " found layoutResId，please use addItemType() first!").toString());
    }

    /* access modifiers changed from: protected */
    public final void K(int i, int i2) {
        ((SparseIntArray) this.l.getValue()).put(i, i2);
    }
}
