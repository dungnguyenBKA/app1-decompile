package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.g;
import androidx.fragment.app.m;
import com.bumptech.glide.c;
import com.bumptech.glide.i;
import com.vungle.warren.error.VungleException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: jj  reason: default package */
public class jj implements Handler.Callback {
    private static final b j = new a();
    private volatile i b;
    final Map<FragmentManager, ij> c = new HashMap();
    final Map<g, mj> d = new HashMap();
    private final Handler e;
    private final b f;
    private final x<View, Fragment> g = new x<>();
    private final x<View, android.app.Fragment> h = new x<>();
    private final Bundle i = new Bundle();

    /* renamed from: jj$a */
    class a implements b {
        a() {
        }

        @Override // defpackage.jj.b
        public i a(c cVar, fj fjVar, kj kjVar, Context context) {
            return new i(cVar, fjVar, kjVar, context);
        }
    }

    /* renamed from: jj$b */
    public interface b {
        i a(c cVar, fj fjVar, kj kjVar, Context context);
    }

    public jj(b bVar) {
        this.f = bVar == null ? j : bVar;
        this.e = new Handler(Looper.getMainLooper(), this);
    }

    private static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @TargetApi(VungleException.DB_ERROR)
    @Deprecated
    private void b(FragmentManager fragmentManager, x<View, android.app.Fragment> xVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    xVar.put(fragment.getView(), fragment);
                    b(fragment.getChildFragmentManager(), xVar);
                }
            }
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            this.i.putInt("key", i2);
            android.app.Fragment fragment2 = null;
            try {
                fragment2 = fragmentManager.getFragment(this.i, "key");
            } catch (Exception unused) {
            }
            if (fragment2 != null) {
                if (fragment2.getView() != null) {
                    xVar.put(fragment2.getView(), fragment2);
                    b(fragment2.getChildFragmentManager(), xVar);
                }
                i2 = i3;
            } else {
                return;
            }
        }
    }

    private static void c(Collection<Fragment> collection, Map<View, Fragment> map) {
        if (collection != null) {
            for (Fragment fragment : collection) {
                if (!(fragment == null || fragment.V() == null)) {
                    map.put(fragment.V(), fragment);
                    c(fragment.B().f(), map);
                }
            }
        }
    }

    @Deprecated
    private i d(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        ij k = k(fragmentManager, fragment, z);
        i b2 = k.b();
        if (b2 != null) {
            return b2;
        }
        i a2 = this.f.a(c.c(context), k.a(), k.c(), context);
        k.f(a2);
        return a2;
    }

    private ij k(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        ij ijVar = (ij) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (ijVar == null && (ijVar = this.c.get(fragmentManager)) == null) {
            ijVar = new ij();
            ijVar.e(fragment);
            if (z) {
                ijVar.a().d();
            }
            this.c.put(fragmentManager, ijVar);
            fragmentManager.beginTransaction().add(ijVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.e.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return ijVar;
    }

    private mj m(g gVar, Fragment fragment, boolean z) {
        mj mjVar = (mj) gVar.c("com.bumptech.glide.manager");
        if (mjVar == null && (mjVar = this.d.get(gVar)) == null) {
            mjVar = new mj();
            mjVar.q1(fragment);
            if (z) {
                mjVar.l1().d();
            }
            this.d.put(gVar, mjVar);
            m a2 = gVar.a();
            a2.c(mjVar, "com.bumptech.glide.manager");
            a2.g();
            this.e.obtainMessage(2, gVar).sendToTarget();
        }
        return mjVar;
    }

    private static boolean n(Context context) {
        Activity a2 = a(context);
        return a2 == null || !a2.isFinishing();
    }

    private i o(Context context, g gVar, Fragment fragment, boolean z) {
        mj m = m(gVar, fragment, z);
        i n1 = m.n1();
        if (n1 != null) {
            return n1;
        }
        i a2 = this.f.a(c.c(context), m.l1(), m.o1(), context);
        m.r1(a2);
        return a2;
    }

    public i e(Activity activity) {
        if (hl.g()) {
            return f(activity.getApplicationContext());
        }
        if (!activity.isDestroyed()) {
            return d(activity, activity.getFragmentManager(), null, n(activity));
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    public i f(Context context) {
        if (context != null) {
            if (hl.h() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return i((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return e((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return f(contextWrapper.getBaseContext());
                    }
                }
            }
            if (this.b == null) {
                synchronized (this) {
                    if (this.b == null) {
                        this.b = this.f.a(c.c(context.getApplicationContext()), new zi(), new ej(), context.getApplicationContext());
                    }
                }
            }
            return this.b;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public i g(View view) {
        if (hl.g()) {
            return f(view.getContext().getApplicationContext());
        }
        Objects.requireNonNull(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity a2 = a(view.getContext());
        if (a2 == null) {
            return f(view.getContext().getApplicationContext());
        }
        if (a2 instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) a2;
            this.g.clear();
            c(fragmentActivity.getSupportFragmentManager().f(), this.g);
            View findViewById = fragmentActivity.findViewById(16908290);
            Fragment fragment = null;
            while (!view.equals(findViewById) && (fragment = this.g.getOrDefault(view, null)) == null && (view.getParent() instanceof View)) {
                view = (View) view.getParent();
            }
            this.g.clear();
            return fragment != null ? h(fragment) : i(fragmentActivity);
        }
        this.h.clear();
        b(a2.getFragmentManager(), this.h);
        View findViewById2 = a2.findViewById(16908290);
        android.app.Fragment fragment2 = null;
        while (!view.equals(findViewById2) && (fragment2 = this.h.getOrDefault(view, null)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.h.clear();
        if (fragment2 == null) {
            return e(a2);
        }
        if (fragment2.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        } else if (!hl.g()) {
            return d(fragment2.getActivity(), fragment2.getChildFragmentManager(), fragment2, fragment2.isVisible());
        } else {
            return f(fragment2.getActivity().getApplicationContext());
        }
    }

    public i h(Fragment fragment) {
        Objects.requireNonNull(fragment.C(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (hl.g()) {
            return f(fragment.C().getApplicationContext());
        }
        return o(fragment.C(), fragment.B(), fragment, fragment.c0());
    }

    public boolean handleMessage(Message message) {
        Object obj;
        Object obj2;
        Object obj3;
        int i2 = message.what;
        Object obj4 = null;
        boolean z = true;
        if (i2 == 1) {
            obj3 = (FragmentManager) message.obj;
            obj2 = this.c.remove(obj3);
        } else if (i2 != 2) {
            z = false;
            obj = null;
            if (z && obj4 == null && Log.isLoggable("RMRetriever", 5)) {
                Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
            }
            return z;
        } else {
            obj3 = (g) message.obj;
            obj2 = this.d.remove(obj3);
        }
        obj4 = obj2;
        obj = obj3;
        Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        return z;
    }

    public i i(FragmentActivity fragmentActivity) {
        if (hl.g()) {
            return f(fragmentActivity.getApplicationContext());
        }
        if (!fragmentActivity.isDestroyed()) {
            return o(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, n(fragmentActivity));
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    /* access modifiers changed from: package-private */
    @Deprecated
    public ij j(Activity activity) {
        return k(activity.getFragmentManager(), null, n(activity));
    }

    /* access modifiers changed from: package-private */
    public mj l(Context context, g gVar) {
        return m(gVar, null, n(context));
    }
}
