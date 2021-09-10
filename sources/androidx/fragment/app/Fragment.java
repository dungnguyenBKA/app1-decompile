package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.h;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.UUID;

public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, i, v, androidx.savedstate.b {
    static final Object T = new Object();
    boolean A;
    boolean B = true;
    private boolean C;
    ViewGroup D;
    View E;
    View F;
    boolean G;
    boolean H = true;
    b I;
    boolean J;
    boolean K;
    float L;
    LayoutInflater M;
    boolean N;
    f.b O = f.b.RESUMED;
    j P;
    x Q;
    n<i> R = new n<>();
    androidx.savedstate.a S;
    int b = 0;
    Bundle c;
    SparseArray<Parcelable> d;
    String e = UUID.randomUUID().toString();
    Bundle f;
    Fragment g;
    String h = null;
    int i;
    private Boolean j = null;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    int q;
    h r;
    f s;
    h t = new h();
    Fragment u;
    int v;
    int w;
    String x;
    boolean y;
    boolean z;

    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final Bundle b;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.b = readBundle;
            if (classLoader != null && readBundle != null) {
                readBundle.setClassLoader(classLoader);
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.b);
        }
    }

    class a extends c {
        a() {
        }

        @Override // androidx.fragment.app.c
        public View a(int i) {
            View view = Fragment.this.E;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + this + " does not have a view");
        }

        @Override // androidx.fragment.app.c
        public boolean b() {
            return Fragment.this.E != null;
        }
    }

    /* access modifiers changed from: package-private */
    public static class b {
        View a;
        Animator b;
        int c;
        int d;
        int e;
        int f;
        Object g;
        Object h;
        Object i;
        d j;
        boolean k;

        b() {
            Object obj = Fragment.T;
            this.g = obj;
            this.h = obj;
            this.i = obj;
        }
    }

    public static class c extends RuntimeException {
        public c(String str, Exception exc) {
            super(str, exc);
        }
    }

    interface d {
    }

    public Fragment() {
        W();
    }

    private void W() {
        this.P = new j(this);
        this.S = androidx.savedstate.a.a(this);
        this.P.a(new g() {
            /* class androidx.fragment.app.Fragment.AnonymousClass2 */

            @Override // androidx.lifecycle.g
            public void c(i iVar, f.a aVar) {
                View view;
                if (aVar == f.a.ON_STOP && (view = Fragment.this.E) != null) {
                    view.cancelPendingInputEvents();
                }
            }
        });
    }

    @Deprecated
    public static Fragment Y(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) e.d(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.c1(bundle);
            }
            return fragment;
        } catch (InstantiationException e2) {
            throw new c(ic.j("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (IllegalAccessException e3) {
            throw new c(ic.j("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new c(ic.j("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new c(ic.j("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    private b v() {
        if (this.I == null) {
            this.I = new b();
        }
        return this.I;
    }

    public final Bundle A() {
        return this.f;
    }

    public void A0(Bundle bundle) {
    }

    public final g B() {
        if (this.s != null) {
            return this.t;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " has not been attached yet."));
    }

    public void B0() {
        this.C = true;
    }

    public Context C() {
        f fVar = this.s;
        if (fVar == null) {
            return null;
        }
        return fVar.d();
    }

    public void C0() {
        this.C = true;
    }

    public Object D() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Objects.requireNonNull(bVar);
        return null;
    }

    public void D0(View view, Bundle bundle) {
    }

    /* access modifiers changed from: package-private */
    public void E() {
        b bVar = this.I;
        if (bVar != null) {
            Objects.requireNonNull(bVar);
        }
    }

    public void E0(Bundle bundle) {
        this.C = true;
    }

    public Object F() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Objects.requireNonNull(bVar);
        return null;
    }

    /* access modifiers changed from: package-private */
    public void F0(Bundle bundle) {
        this.t.s0();
        this.b = 2;
        this.C = false;
        d0(bundle);
        if (this.C) {
            this.t.r();
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onActivityCreated()"));
    }

    /* access modifiers changed from: package-private */
    public void G() {
        b bVar = this.I;
        if (bVar != null) {
            Objects.requireNonNull(bVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void G0() {
        this.t.l(this.s, new a(), this);
        this.C = false;
        g0(this.s.d());
        if (!this.C) {
            throw new y(ic.g("Fragment ", this, " did not call through to super.onAttach()"));
        }
    }

    public final g H() {
        return this.r;
    }

    /* access modifiers changed from: package-private */
    public boolean H0(MenuItem menuItem) {
        if (this.y) {
            return false;
        }
        if (!i0() && !this.t.t(menuItem)) {
            return false;
        }
        return true;
    }

    @Deprecated
    public LayoutInflater I() {
        f fVar = this.s;
        if (fVar != null) {
            LayoutInflater i2 = fVar.i();
            h hVar = this.t;
            Objects.requireNonNull(hVar);
            r2.b(i2, hVar);
            return i2;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    /* access modifiers changed from: package-private */
    public void I0(Bundle bundle) {
        this.t.s0();
        this.b = 1;
        this.C = false;
        this.S.c(bundle);
        j0(bundle);
        this.N = true;
        if (this.C) {
            this.P.f(f.a.ON_CREATE);
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onCreate()"));
    }

    /* access modifiers changed from: package-private */
    public int J() {
        b bVar = this.I;
        if (bVar == null) {
            return 0;
        }
        return bVar.d;
    }

    /* access modifiers changed from: package-private */
    public void J0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.t.s0();
        this.p = true;
        this.Q = new x();
        View m0 = m0(layoutInflater, viewGroup, bundle);
        this.E = m0;
        if (m0 != null) {
            this.Q.b();
            this.R.h(this.Q);
        } else if (!this.Q.c()) {
            this.Q = null;
        } else {
            throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    /* access modifiers changed from: package-private */
    public int K() {
        b bVar = this.I;
        if (bVar == null) {
            return 0;
        }
        return bVar.e;
    }

    /* access modifiers changed from: package-private */
    public void K0() {
        this.t.w();
        this.P.f(f.a.ON_DESTROY);
        this.b = 0;
        this.C = false;
        this.N = false;
        n0();
        if (!this.C) {
            throw new y(ic.g("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    /* access modifiers changed from: package-private */
    public int L() {
        b bVar = this.I;
        if (bVar == null) {
            return 0;
        }
        return bVar.f;
    }

    /* access modifiers changed from: package-private */
    public void L0() {
        this.t.x();
        if (this.E != null) {
            this.Q.a(f.a.ON_DESTROY);
        }
        this.b = 1;
        this.C = false;
        o0();
        if (this.C) {
            a4.b(this).c();
            this.p = false;
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onDestroyView()"));
    }

    public final Fragment M() {
        return this.u;
    }

    /* access modifiers changed from: package-private */
    public void M0() {
        this.C = false;
        p0();
        this.M = null;
        if (this.C) {
            h hVar = this.t;
            if (!hVar.x) {
                hVar.w();
                this.t = new h();
                return;
            }
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onDetach()"));
    }

    public Object N() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Object obj = bVar.h;
        if (obj != T) {
            return obj;
        }
        F();
        return null;
    }

    /* access modifiers changed from: package-private */
    public void N0() {
        onLowMemory();
        this.t.y();
    }

    public final Resources O() {
        return W0().getResources();
    }

    /* access modifiers changed from: package-private */
    public boolean O0(MenuItem menuItem) {
        return !this.y && this.t.O(menuItem);
    }

    public Object P() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Object obj = bVar.g;
        if (obj != T) {
            return obj;
        }
        D();
        return null;
    }

    /* access modifiers changed from: package-private */
    public void P0() {
        this.t.R();
        if (this.E != null) {
            this.Q.a(f.a.ON_PAUSE);
        }
        this.P.f(f.a.ON_PAUSE);
        this.b = 3;
        this.C = false;
        v0();
        if (!this.C) {
            throw new y(ic.g("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public Object Q() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Objects.requireNonNull(bVar);
        return null;
    }

    /* access modifiers changed from: package-private */
    public boolean Q0(Menu menu) {
        if (!this.y) {
            return false | this.t.T(menu);
        }
        return false;
    }

    public Object R() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        Object obj = bVar.i;
        if (obj != T) {
            return obj;
        }
        Q();
        return null;
    }

    /* access modifiers changed from: package-private */
    public void R0() {
        boolean k0 = this.r.k0(this);
        Boolean bool = this.j;
        if (bool == null || bool.booleanValue() != k0) {
            this.j = Boolean.valueOf(k0);
            x0();
            this.t.U();
        }
    }

    /* access modifiers changed from: package-private */
    public int S() {
        b bVar = this.I;
        if (bVar == null) {
            return 0;
        }
        return bVar.c;
    }

    /* access modifiers changed from: package-private */
    public void S0() {
        this.t.s0();
        this.t.b0();
        this.b = 4;
        this.C = false;
        z0();
        if (this.C) {
            j jVar = this.P;
            f.a aVar = f.a.ON_RESUME;
            jVar.f(aVar);
            if (this.E != null) {
                this.Q.a(aVar);
            }
            this.t.V();
            this.t.b0();
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onResume()"));
    }

    public final String T(int i2) {
        return O().getString(i2);
    }

    /* access modifiers changed from: package-private */
    public void T0(Bundle bundle) {
        A0(bundle);
        this.S.d(bundle);
        Parcelable x0 = this.t.x0();
        if (x0 != null) {
            bundle.putParcelable("android:support:fragments", x0);
        }
    }

    public final String U(int i2, Object... objArr) {
        return O().getString(i2, objArr);
    }

    /* access modifiers changed from: package-private */
    public void U0() {
        this.t.s0();
        this.t.b0();
        this.b = 3;
        this.C = false;
        B0();
        if (this.C) {
            j jVar = this.P;
            f.a aVar = f.a.ON_START;
            jVar.f(aVar);
            if (this.E != null) {
                this.Q.a(aVar);
            }
            this.t.W();
            return;
        }
        throw new y(ic.g("Fragment ", this, " did not call through to super.onStart()"));
    }

    public View V() {
        return this.E;
    }

    /* access modifiers changed from: package-private */
    public void V0() {
        this.t.Y();
        if (this.E != null) {
            this.Q.a(f.a.ON_STOP);
        }
        this.P.f(f.a.ON_STOP);
        this.b = 2;
        this.C = false;
        C0();
        if (!this.C) {
            throw new y(ic.g("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public final Context W0() {
        Context C2 = C();
        if (C2 != null) {
            return C2;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " not attached to a context."));
    }

    /* access modifiers changed from: package-private */
    public void X() {
        W();
        this.e = UUID.randomUUID().toString();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.q = 0;
        this.r = null;
        this.t = new h();
        this.s = null;
        this.v = 0;
        this.w = 0;
        this.x = null;
        this.y = false;
        this.z = false;
    }

    public final g X0() {
        h hVar = this.r;
        if (hVar != null) {
            return hVar;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " not associated with a fragment manager."));
    }

    public final View Y0() {
        View view = this.E;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public final boolean Z() {
        return this.s != null && this.k;
    }

    /* access modifiers changed from: package-private */
    public final void Z0(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.d;
        if (sparseArray != null) {
            this.F.restoreHierarchyState(sparseArray);
            this.d = null;
        }
        this.C = false;
        E0(bundle);
        if (!this.C) {
            throw new y(ic.g("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        } else if (this.E != null) {
            this.Q.a(f.a.ON_CREATE);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a0() {
        b bVar = this.I;
        if (bVar == null) {
            return false;
        }
        return bVar.k;
    }

    /* access modifiers changed from: package-private */
    public void a1(View view) {
        v().a = view;
    }

    /* access modifiers changed from: package-private */
    public final boolean b0() {
        return this.q > 0;
    }

    /* access modifiers changed from: package-private */
    public void b1(Animator animator) {
        v().b = animator;
    }

    public final boolean c0() {
        View view;
        return Z() && !this.y && (view = this.E) != null && view.getWindowToken() != null && this.E.getVisibility() == 0;
    }

    public void c1(Bundle bundle) {
        boolean z2;
        h hVar = this.r;
        if (hVar != null) {
            if (hVar == null) {
                z2 = false;
            } else {
                z2 = hVar.l0();
            }
            if (z2) {
                throw new IllegalStateException("Fragment already added and state has been saved");
            }
        }
        this.f = bundle;
    }

    public void d0(Bundle bundle) {
        this.C = true;
    }

    /* access modifiers changed from: package-private */
    public void d1(boolean z2) {
        v().k = z2;
    }

    public void e0(int i2, int i3, Intent intent) {
    }

    /* access modifiers changed from: package-private */
    public void e1(int i2) {
        if (this.I != null || i2 != 0) {
            v().d = i2;
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Deprecated
    public void f0(Activity activity) {
        this.C = true;
    }

    /* access modifiers changed from: package-private */
    public void f1(int i2, int i3) {
        if (this.I != null || i2 != 0 || i3 != 0) {
            v();
            b bVar = this.I;
            bVar.e = i2;
            bVar.f = i3;
        }
    }

    public void g0(Context context) {
        this.C = true;
        f fVar = this.s;
        Activity c2 = fVar == null ? null : fVar.c();
        if (c2 != null) {
            this.C = false;
            f0(c2);
        }
    }

    /* access modifiers changed from: package-private */
    public void g1(d dVar) {
        v();
        d dVar2 = this.I.j;
        if (dVar != dVar2) {
            if (dVar != null && dVar2 != null) {
                throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
            } else if (dVar != null) {
                ((h.j) dVar).c();
            }
        }
    }

    @Override // androidx.lifecycle.i
    public f getLifecycle() {
        return this.P;
    }

    @Override // androidx.savedstate.b
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.S.b();
    }

    @Override // androidx.lifecycle.v
    public u getViewModelStore() {
        h hVar = this.r;
        if (hVar != null) {
            return hVar.h0(this);
        }
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public void h0() {
    }

    /* access modifiers changed from: package-private */
    public void h1(int i2) {
        v().c = i2;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public boolean i0() {
        return false;
    }

    public boolean i1(String str) {
        f fVar = this.s;
        if (fVar != null) {
            return fVar.m(str);
        }
        return false;
    }

    public void j0(Bundle bundle) {
        Parcelable parcelable;
        boolean z2 = true;
        this.C = true;
        if (!(bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null)) {
            this.t.w0(parcelable);
            this.t.u();
        }
        h hVar = this.t;
        if (hVar.p < 1) {
            z2 = false;
        }
        if (!z2) {
            hVar.u();
        }
    }

    public void j1(@SuppressLint({"UnknownNullness"}) Intent intent) {
        f fVar = this.s;
        if (fVar != null) {
            fVar.n(this, intent, -1, null);
            return;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " not attached to Activity"));
    }

    public Animation k0() {
        return null;
    }

    public void k1(@SuppressLint({"UnknownNullness"}) Intent intent, int i2) {
        f fVar = this.s;
        if (fVar != null) {
            fVar.n(this, intent, i2, null);
            return;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " not attached to Activity"));
    }

    public Animator l0() {
        return null;
    }

    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public void n0() {
        this.C = true;
    }

    public void o0() {
        this.C = true;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.C = true;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        FragmentActivity x2 = x();
        if (x2 != null) {
            x2.onCreateContextMenu(contextMenu, view, contextMenuInfo);
            return;
        }
        throw new IllegalStateException(ic.g("Fragment ", this, " not attached to an activity."));
    }

    public void onLowMemory() {
        this.C = true;
    }

    public void p0() {
        this.C = true;
    }

    public LayoutInflater q0(Bundle bundle) {
        return I();
    }

    public void r0() {
    }

    @Deprecated
    public void s0() {
        this.C = true;
    }

    public void t0(AttributeSet attributeSet, Bundle bundle) {
        this.C = true;
        f fVar = this.s;
        if ((fVar == null ? null : fVar.c()) != null) {
            this.C = false;
            s0();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        androidx.core.app.b.e(this, sb);
        sb.append(" (");
        sb.append(this.e);
        sb.append(")");
        if (this.v != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.v));
        }
        if (this.x != null) {
            sb.append(" ");
            sb.append(this.x);
        }
        sb.append('}');
        return sb.toString();
    }

    public void u0() {
    }

    public void v0() {
        this.C = true;
    }

    /* access modifiers changed from: package-private */
    public Fragment w(String str) {
        if (str.equals(this.e)) {
            return this;
        }
        return this.t.f0(str);
    }

    public void w0() {
    }

    public final FragmentActivity x() {
        f fVar = this.s;
        if (fVar == null) {
            return null;
        }
        return (FragmentActivity) fVar.c();
    }

    public void x0() {
    }

    /* access modifiers changed from: package-private */
    public View y() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        return bVar.a;
    }

    public void y0() {
    }

    /* access modifiers changed from: package-private */
    public Animator z() {
        b bVar = this.I;
        if (bVar == null) {
            return null;
        }
        return bVar.b;
    }

    public void z0() {
        this.C = true;
    }
}
