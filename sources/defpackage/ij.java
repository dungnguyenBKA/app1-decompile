package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import com.bumptech.glide.c;
import com.bumptech.glide.i;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* renamed from: ij  reason: default package */
public class ij extends Fragment {
    private final yi b;
    private final kj c = new a();
    private final Set<ij> d = new HashSet();
    private i e;
    private ij f;
    private Fragment g;

    /* renamed from: ij$a */
    private class a implements kj {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + ij.this + "}";
        }
    }

    public ij() {
        yi yiVar = new yi();
        this.b = yiVar;
    }

    private void d(Activity activity) {
        g();
        ij j = c.c(activity).j().j(activity);
        this.f = j;
        if (!equals(j)) {
            this.f.d.add(this);
        }
    }

    private void g() {
        ij ijVar = this.f;
        if (ijVar != null) {
            ijVar.d.remove(this);
            this.f = null;
        }
    }

    /* access modifiers changed from: package-private */
    public yi a() {
        return this.b;
    }

    public i b() {
        return this.e;
    }

    public kj c() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public void e(Fragment fragment) {
        this.g = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            d(fragment.getActivity());
        }
    }

    public void f(i iVar) {
        this.e = iVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            d(activity);
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.b.c();
        g();
    }

    public void onDetach() {
        super.onDetach();
        g();
    }

    public void onStart() {
        super.onStart();
        this.b.d();
    }

    public void onStop() {
        super.onStop();
        this.b.e();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.g;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
