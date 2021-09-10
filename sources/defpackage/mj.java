package defpackage;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import com.bumptech.glide.c;
import com.bumptech.glide.i;
import java.util.HashSet;
import java.util.Set;

/* renamed from: mj  reason: default package */
public class mj extends Fragment {
    private final yi U;
    private final kj V = new a();
    private final Set<mj> W = new HashSet();
    private mj X;
    private i Y;
    private Fragment Z;

    /* renamed from: mj$a */
    private class a implements kj {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + mj.this + "}";
        }
    }

    public mj() {
        yi yiVar = new yi();
        this.U = yiVar;
    }

    private Fragment m1() {
        Fragment M = M();
        return M != null ? M : this.Z;
    }

    private void p1(Context context, g gVar) {
        s1();
        mj l = c.c(context).j().l(context, gVar);
        this.X = l;
        if (!equals(l)) {
            this.X.W.add(this);
        }
    }

    private void s1() {
        mj mjVar = this.X;
        if (mjVar != null) {
            mjVar.W.remove(this);
            this.X = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void B0() {
        super.B0();
        this.U.d();
    }

    @Override // androidx.fragment.app.Fragment
    public void C0() {
        super.C0();
        this.U.e();
    }

    @Override // androidx.fragment.app.Fragment
    public void g0(Context context) {
        super.g0(context);
        Fragment fragment = this;
        while (fragment.M() != null) {
            fragment = fragment.M();
        }
        g H = fragment.H();
        if (H != null) {
            try {
                p1(C(), H);
            } catch (IllegalStateException e) {
                if (Log.isLoggable("SupportRMFragment", 5)) {
                    Log.w("SupportRMFragment", "Unable to register fragment with root", e);
                }
            }
        } else if (Log.isLoggable("SupportRMFragment", 5)) {
            Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
        }
    }

    /* access modifiers changed from: package-private */
    public yi l1() {
        return this.U;
    }

    @Override // androidx.fragment.app.Fragment
    public void n0() {
        super.n0();
        this.U.c();
        s1();
    }

    public i n1() {
        return this.Y;
    }

    public kj o1() {
        return this.V;
    }

    @Override // androidx.fragment.app.Fragment
    public void p0() {
        super.p0();
        this.Z = null;
        s1();
    }

    /* access modifiers changed from: package-private */
    public void q1(Fragment fragment) {
        this.Z = fragment;
        if (fragment != null && fragment.C() != null) {
            Fragment fragment2 = fragment;
            while (fragment2.M() != null) {
                fragment2 = fragment2.M();
            }
            g H = fragment2.H();
            if (H != null) {
                p1(fragment.C(), H);
            }
        }
    }

    public void r1(i iVar) {
        this.Y = iVar;
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m1() + "}";
    }
}
