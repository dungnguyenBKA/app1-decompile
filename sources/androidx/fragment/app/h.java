package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.activity.OnBackPressedDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.m;
import androidx.lifecycle.f;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* access modifiers changed from: package-private */
public final class h extends g implements LayoutInflater.Factory2 {
    static final Interpolator H = new DecelerateInterpolator(2.5f);
    static final Interpolator I = new DecelerateInterpolator(1.5f);
    ArrayList<Boolean> A;
    ArrayList<Fragment> B;
    Bundle C = null;
    SparseArray<Parcelable> D = null;
    ArrayList<j> E;
    private l F;
    Runnable G = new b();
    ArrayList<AbstractC0013h> d;
    boolean e;
    int f = 0;
    final ArrayList<Fragment> g = new ArrayList<>();
    final HashMap<String, Fragment> h = new HashMap<>();
    ArrayList<a> i;
    ArrayList<Fragment> j;
    private OnBackPressedDispatcher k;
    private final androidx.activity.b l = new a(false);
    ArrayList<a> m;
    ArrayList<Integer> n;
    private final CopyOnWriteArrayList<f> o = new CopyOnWriteArrayList<>();
    int p = 0;
    f q;
    c r;
    Fragment s;
    Fragment t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    ArrayList<a> z;

    class a extends androidx.activity.b {
        a(boolean z) {
            super(z);
        }

        @Override // androidx.activity.b
        public void b() {
            h.this.i0();
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            h.this.b0();
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends e {
        c() {
        }

        @Override // androidx.fragment.app.e
        public Fragment a(ClassLoader classLoader, String str) {
            f fVar = h.this.q;
            Context d = fVar.d();
            Objects.requireNonNull(fVar);
            return Fragment.Y(d, str, null);
        }
    }

    /* access modifiers changed from: private */
    public static final class f {
    }

    /* access modifiers changed from: package-private */
    public static class g {
        public static final int[] a = {16842755, 16842960, 16842961};
    }

    /* access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.h$h  reason: collision with other inner class name */
    public interface AbstractC0013h {
        boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* access modifiers changed from: private */
    public class i implements AbstractC0013h {
        final String a;
        final int b;
        final int c;

        i(String str, int i, int i2) {
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        @Override // androidx.fragment.app.h.AbstractC0013h
        public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = h.this.t;
            if (fragment == null || this.b >= 0 || this.a != null || !fragment.B().h()) {
                return h.this.t0(arrayList, arrayList2, this.a, this.b, this.c);
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public static class j implements Fragment.d {
        final boolean a;
        final a b;
        private int c;

        j(a aVar, boolean z) {
            this.a = z;
            this.b = aVar;
        }

        public void a() {
            boolean z = this.c > 0;
            h hVar = this.b.r;
            int size = hVar.g.size();
            for (int i = 0; i < size; i++) {
                hVar.g.get(i).g1(null);
            }
            a aVar = this.b;
            aVar.r.p(aVar, this.a, !z, true);
        }

        public boolean b() {
            return this.c == 0;
        }

        public void c() {
            this.c++;
        }
    }

    h() {
    }

    private void D0(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new i2("FragmentManager"));
        f fVar = this.q;
        if (fVar != null) {
            try {
                fVar.g("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                b("  ", null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    private void E0() {
        ArrayList<AbstractC0013h> arrayList = this.d;
        boolean z2 = true;
        if (arrayList == null || arrayList.isEmpty()) {
            androidx.activity.b bVar = this.l;
            if (d() <= 0 || !k0(this.s)) {
                z2 = false;
            }
            bVar.f(z2);
            return;
        }
        this.l.f(true);
    }

    private void Q(Fragment fragment) {
        if (fragment != null && this.h.get(fragment.e) == fragment) {
            fragment.R0();
        }
    }

    /* JADX INFO: finally extract failed */
    private void X(int i2) {
        try {
            this.e = true;
            q0(i2, false);
            this.e = false;
            b0();
        } catch (Throwable th) {
            this.e = false;
            throw th;
        }
    }

    private void a0(boolean z2) {
        if (this.e) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.q == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        } else if (Looper.myLooper() == this.q.e().getLooper()) {
            if (!z2) {
                n();
            }
            if (this.z == null) {
                this.z = new ArrayList<>();
                this.A = new ArrayList<>();
            }
            this.e = true;
            try {
                d0(null, null);
            } finally {
                this.e = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    private void c0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        ArrayList<Boolean> arrayList3 = arrayList2;
        boolean z2 = arrayList.get(i2).q;
        ArrayList<Fragment> arrayList4 = this.B;
        if (arrayList4 == null) {
            this.B = new ArrayList<>();
        } else {
            arrayList4.clear();
        }
        this.B.addAll(this.g);
        Fragment fragment = this.t;
        int i9 = i2;
        boolean z3 = false;
        while (true) {
            int i10 = 1;
            if (i9 < i3) {
                a aVar = arrayList.get(i9);
                int i11 = 3;
                if (!arrayList3.get(i9).booleanValue()) {
                    ArrayList<Fragment> arrayList5 = this.B;
                    int i12 = 0;
                    while (i12 < aVar.a.size()) {
                        m.a aVar2 = aVar.a.get(i12);
                        int i13 = aVar2.a;
                        if (i13 != i10) {
                            if (i13 == 2) {
                                Fragment fragment2 = aVar2.b;
                                int i14 = fragment2.w;
                                int size = arrayList5.size() - 1;
                                boolean z4 = false;
                                while (size >= 0) {
                                    Fragment fragment3 = arrayList5.get(size);
                                    if (fragment3.w != i14) {
                                        i8 = i14;
                                    } else if (fragment3 == fragment2) {
                                        i8 = i14;
                                        z4 = true;
                                    } else {
                                        if (fragment3 == fragment) {
                                            i8 = i14;
                                            aVar.a.add(i12, new m.a(9, fragment3));
                                            i12++;
                                            fragment = null;
                                        } else {
                                            i8 = i14;
                                        }
                                        m.a aVar3 = new m.a(3, fragment3);
                                        aVar3.c = aVar2.c;
                                        aVar3.e = aVar2.e;
                                        aVar3.d = aVar2.d;
                                        aVar3.f = aVar2.f;
                                        aVar.a.add(i12, aVar3);
                                        arrayList5.remove(fragment3);
                                        i12++;
                                    }
                                    size--;
                                    i14 = i8;
                                }
                                if (z4) {
                                    aVar.a.remove(i12);
                                    i12--;
                                } else {
                                    i7 = 1;
                                    aVar2.a = 1;
                                    arrayList5.add(fragment2);
                                    i12 += i7;
                                    i11 = 3;
                                    i10 = 1;
                                }
                            } else if (i13 == i11 || i13 == 6) {
                                arrayList5.remove(aVar2.b);
                                Fragment fragment4 = aVar2.b;
                                if (fragment4 == fragment) {
                                    aVar.a.add(i12, new m.a(9, fragment4));
                                    i12++;
                                    fragment = null;
                                }
                            } else if (i13 != 7) {
                                if (i13 == 8) {
                                    aVar.a.add(i12, new m.a(9, fragment));
                                    i12++;
                                    fragment = aVar2.b;
                                }
                            }
                            i7 = 1;
                            i12 += i7;
                            i11 = 3;
                            i10 = 1;
                        }
                        i7 = 1;
                        arrayList5.add(aVar2.b);
                        i12 += i7;
                        i11 = 3;
                        i10 = 1;
                    }
                } else {
                    int i15 = 1;
                    ArrayList<Fragment> arrayList6 = this.B;
                    int size2 = aVar.a.size() - 1;
                    while (size2 >= 0) {
                        m.a aVar4 = aVar.a.get(size2);
                        int i16 = aVar4.a;
                        if (i16 != i15) {
                            if (i16 != 3) {
                                switch (i16) {
                                    case 8:
                                        fragment = null;
                                        break;
                                    case 9:
                                        fragment = aVar4.b;
                                        break;
                                    case 10:
                                        aVar4.h = aVar4.g;
                                        break;
                                }
                                size2--;
                                i15 = 1;
                            }
                            arrayList6.add(aVar4.b);
                            size2--;
                            i15 = 1;
                        }
                        arrayList6.remove(aVar4.b);
                        size2--;
                        i15 = 1;
                    }
                }
                z3 = z3 || aVar.h;
                i9++;
                arrayList3 = arrayList2;
            } else {
                this.B.clear();
                if (!z2) {
                    r.o(this, arrayList, arrayList2, i2, i3, false);
                }
                int i17 = i2;
                while (i17 < i3) {
                    a aVar5 = arrayList.get(i17);
                    if (arrayList2.get(i17).booleanValue()) {
                        aVar5.n(-1);
                        aVar5.r(i17 == i3 + -1);
                    } else {
                        aVar5.n(1);
                        aVar5.q();
                    }
                    i17++;
                }
                if (z2) {
                    z<Fragment> zVar = new z<>(0);
                    j(zVar);
                    i4 = i2;
                    int i18 = i3;
                    for (int i19 = i3 - 1; i19 >= i4; i19--) {
                        a aVar6 = arrayList.get(i19);
                        boolean booleanValue = arrayList2.get(i19).booleanValue();
                        if (aVar6.v() && !aVar6.t(arrayList, i19 + 1, i3)) {
                            if (this.E == null) {
                                this.E = new ArrayList<>();
                            }
                            j jVar = new j(aVar6, booleanValue);
                            this.E.add(jVar);
                            aVar6.w(jVar);
                            if (booleanValue) {
                                aVar6.q();
                            } else {
                                aVar6.r(false);
                            }
                            i18--;
                            if (i19 != i18) {
                                arrayList.remove(i19);
                                arrayList.add(i18, aVar6);
                            }
                            j(zVar);
                        }
                    }
                    int size3 = zVar.size();
                    for (int i20 = 0; i20 < size3; i20++) {
                        Fragment f2 = zVar.f(i20);
                        if (!f2.k) {
                            View Y0 = f2.Y0();
                            f2.L = Y0.getAlpha();
                            Y0.setAlpha(0.0f);
                        }
                    }
                    i5 = i18;
                } else {
                    i4 = i2;
                    i5 = i3;
                }
                if (i5 != i4 && z2) {
                    r.o(this, arrayList, arrayList2, i2, i5, true);
                    q0(this.p, true);
                }
                while (i4 < i3) {
                    a aVar7 = arrayList.get(i4);
                    if (arrayList2.get(i4).booleanValue() && (i6 = aVar7.t) >= 0) {
                        synchronized (this) {
                            this.m.set(i6, null);
                            if (this.n == null) {
                                this.n = new ArrayList<>();
                            }
                            this.n.add(Integer.valueOf(i6));
                        }
                        aVar7.t = -1;
                    }
                    Objects.requireNonNull(aVar7);
                    i4++;
                }
                return;
            }
        }
    }

    private void d0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList<j> arrayList3 = this.E;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            j jVar = this.E.get(i2);
            if (arrayList != null && !jVar.a && (indexOf2 = arrayList.indexOf(jVar.b)) != -1 && arrayList2.get(indexOf2).booleanValue()) {
                this.E.remove(i2);
                i2--;
                size--;
                a aVar = jVar.b;
                aVar.r.p(aVar, jVar.a, false, false);
            } else if (jVar.b() || (arrayList != null && jVar.b.t(arrayList, 0, arrayList.size()))) {
                this.E.remove(i2);
                i2--;
                size--;
                if (arrayList == null || jVar.a || (indexOf = arrayList.indexOf(jVar.b)) == -1 || !arrayList2.get(indexOf).booleanValue()) {
                    jVar.a();
                } else {
                    a aVar2 = jVar.b;
                    aVar2.r.p(aVar2, jVar.a, false, false);
                }
            }
            i2++;
        }
    }

    private void g0() {
        if (this.E != null) {
            while (!this.E.isEmpty()) {
                this.E.remove(0).a();
            }
        }
    }

    private void j(z<Fragment> zVar) {
        int i2 = this.p;
        if (i2 >= 1) {
            int min = Math.min(i2, 3);
            int size = this.g.size();
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment = this.g.get(i3);
                if (fragment.b < min) {
                    r0(fragment, min, fragment.J(), fragment.K(), false);
                    if (fragment.E != null && !fragment.y && fragment.J) {
                        zVar.add(fragment);
                    }
                }
            }
        }
    }

    private boolean j0(Fragment fragment) {
        h hVar = fragment.t;
        boolean z2 = false;
        for (Fragment fragment2 : hVar.h.values()) {
            if (fragment2 != null) {
                z2 = hVar.j0(fragment2);
                continue;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    private void n() {
        if (l0()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void o() {
        this.e = false;
        this.A.clear();
        this.z.clear();
    }

    static d o0(float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(H);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(I);
        alphaAnimation.setDuration(220);
        animationSet.addAnimation(alphaAnimation);
        return new d(animationSet);
    }

    private void v0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            d0(arrayList, arrayList2);
            int size = arrayList.size();
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).q) {
                    if (i3 != i2) {
                        c0(arrayList, arrayList2, i3, i2);
                    }
                    i3 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).q) {
                            i3++;
                        }
                    }
                    c0(arrayList, arrayList2, i2, i3);
                    i2 = i3 - 1;
                }
                i2++;
            }
            if (i3 != size) {
                c0(arrayList, arrayList2, i3, size);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void A(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.A(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    public void A0(Fragment fragment, f.b bVar) {
        if (this.h.get(fragment.e) == fragment && (fragment.s == null || fragment.r == this)) {
            fragment.O = bVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* access modifiers changed from: package-private */
    public void B(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.B(fragment, context, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    public void B0(Fragment fragment) {
        if (fragment == null || (this.h.get(fragment.e) == fragment && (fragment.s == null || fragment.r == this))) {
            Fragment fragment2 = this.t;
            this.t = fragment;
            Q(fragment2);
            Q(this.t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* access modifiers changed from: package-private */
    public void C(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.C(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void C0() {
        for (Fragment fragment : this.h.values()) {
            if (fragment != null && fragment.G) {
                if (this.e) {
                    this.y = true;
                } else {
                    fragment.G = false;
                    r0(fragment, this.p, 0, 0, false);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void D(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.D(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void E(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.E(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void F(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.F(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void G(Fragment fragment, Context context, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.G(fragment, context, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void H(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.H(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void I(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.I(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void J(Fragment fragment, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.J(fragment, bundle, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void K(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.K(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void L(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.L(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void M(Fragment fragment, View view, Bundle bundle, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.M(fragment, view, bundle, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void N(Fragment fragment, boolean z2) {
        Fragment fragment2 = this.s;
        if (fragment2 != null) {
            h hVar = fragment2.r;
            if (hVar instanceof h) {
                hVar.N(fragment, true);
            }
        }
        Iterator<f> it = this.o.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (z2) {
                Objects.requireNonNull(next);
            } else {
                Objects.requireNonNull(next);
                throw null;
            }
        }
    }

    public boolean O(MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null && fragment.O0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void P(Menu menu) {
        if (this.p >= 1) {
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                Fragment fragment = this.g.get(i2);
                if (fragment != null && !fragment.y) {
                    fragment.t.P(menu);
                }
            }
        }
    }

    public void R() {
        X(3);
    }

    public void S(boolean z2) {
        int size = this.g.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = this.g.get(size);
                if (fragment != null) {
                    fragment.w0();
                    fragment.t.S(z2);
                }
            } else {
                return;
            }
        }
    }

    public boolean T(Menu menu) {
        if (this.p < 1) {
            return false;
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null && fragment.Q0(menu)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* access modifiers changed from: package-private */
    public void U() {
        E0();
        Q(this.t);
    }

    public void V() {
        this.v = false;
        this.w = false;
        X(4);
    }

    public void W() {
        this.v = false;
        this.w = false;
        X(3);
    }

    public void Y() {
        this.w = true;
        X(2);
    }

    public void Z(AbstractC0013h hVar, boolean z2) {
        if (!z2) {
            n();
        }
        synchronized (this) {
            if (!this.x) {
                if (this.q != null) {
                    if (this.d == null) {
                        this.d = new ArrayList<>();
                    }
                    this.d.add(hVar);
                    z0();
                    return;
                }
            }
            if (!z2) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    @Override // androidx.fragment.app.g
    public m a() {
        return new a(this);
    }

    @Override // androidx.fragment.app.g
    public void b(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        String str2;
        String i2 = ic.i(str, "    ");
        if (!this.h.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (Fragment fragment : this.h.values()) {
                printWriter.print(str);
                printWriter.println(fragment);
                if (fragment != null) {
                    printWriter.print(i2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(fragment.v));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(fragment.w));
                    printWriter.print(" mTag=");
                    printWriter.println(fragment.x);
                    printWriter.print(i2);
                    printWriter.print("mState=");
                    printWriter.print(fragment.b);
                    printWriter.print(" mWho=");
                    printWriter.print(fragment.e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(fragment.q);
                    printWriter.print(i2);
                    printWriter.print("mAdded=");
                    printWriter.print(fragment.k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(fragment.l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(fragment.m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(fragment.n);
                    printWriter.print(i2);
                    printWriter.print("mHidden=");
                    printWriter.print(fragment.y);
                    printWriter.print(" mDetached=");
                    printWriter.print(fragment.z);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(fragment.B);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(i2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(fragment.A);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(fragment.H);
                    if (fragment.r != null) {
                        printWriter.print(i2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(fragment.r);
                    }
                    if (fragment.s != null) {
                        printWriter.print(i2);
                        printWriter.print("mHost=");
                        printWriter.println(fragment.s);
                    }
                    if (fragment.u != null) {
                        printWriter.print(i2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(fragment.u);
                    }
                    if (fragment.f != null) {
                        printWriter.print(i2);
                        printWriter.print("mArguments=");
                        printWriter.println(fragment.f);
                    }
                    if (fragment.c != null) {
                        printWriter.print(i2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(fragment.c);
                    }
                    if (fragment.d != null) {
                        printWriter.print(i2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(fragment.d);
                    }
                    Object obj = fragment.g;
                    if (obj == null) {
                        h hVar = fragment.r;
                        obj = (hVar == null || (str2 = fragment.h) == null) ? null : (Fragment) hVar.h.get(str2);
                    }
                    if (obj != null) {
                        printWriter.print(i2);
                        printWriter.print("mTarget=");
                        printWriter.print(obj);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(fragment.i);
                    }
                    if (fragment.J() != 0) {
                        printWriter.print(i2);
                        printWriter.print("mNextAnim=");
                        printWriter.println(fragment.J());
                    }
                    if (fragment.D != null) {
                        printWriter.print(i2);
                        printWriter.print("mContainer=");
                        printWriter.println(fragment.D);
                    }
                    if (fragment.E != null) {
                        printWriter.print(i2);
                        printWriter.print("mView=");
                        printWriter.println(fragment.E);
                    }
                    if (fragment.F != null) {
                        printWriter.print(i2);
                        printWriter.print("mInnerView=");
                        printWriter.println(fragment.E);
                    }
                    if (fragment.y() != null) {
                        printWriter.print(i2);
                        printWriter.print("mAnimatingAway=");
                        printWriter.println(fragment.y());
                        printWriter.print(i2);
                        printWriter.print("mStateAfterAnimating=");
                        printWriter.println(fragment.S());
                    }
                    if (fragment.C() != null) {
                        a4.b(fragment).a(i2, fileDescriptor, printWriter, strArr);
                    }
                    printWriter.print(i2);
                    printWriter.println("Child " + fragment.t + ":");
                    fragment.t.b(ic.i(i2, "  "), fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size5 = this.g.size();
        if (size5 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size5; i3++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(this.g.get(i3).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.j;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(this.j.get(i4).toString());
            }
        }
        ArrayList<a> arrayList2 = this.i;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                a aVar = this.i.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.p(i2, printWriter, true);
            }
        }
        synchronized (this) {
            ArrayList<a> arrayList3 = this.m;
            if (arrayList3 != null && (size2 = arrayList3.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size2; i6++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println((a) this.m.get(i6));
                }
            }
            ArrayList<Integer> arrayList4 = this.n;
            if (arrayList4 != null && arrayList4.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.n.toArray()));
            }
        }
        ArrayList<AbstractC0013h> arrayList5 = this.d;
        if (arrayList5 != null && (size = arrayList5.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println((AbstractC0013h) this.d.get(i7));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.r);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.v);
        printWriter.print(" mStopped=");
        printWriter.print(this.w);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.x);
        if (this.u) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.u);
        }
    }

    /* JADX INFO: finally extract failed */
    public boolean b0() {
        boolean z2;
        a0(true);
        boolean z3 = false;
        while (true) {
            ArrayList<a> arrayList = this.z;
            ArrayList<Boolean> arrayList2 = this.A;
            synchronized (this) {
                ArrayList<AbstractC0013h> arrayList3 = this.d;
                if (arrayList3 != null) {
                    if (arrayList3.size() != 0) {
                        int size = this.d.size();
                        z2 = false;
                        for (int i2 = 0; i2 < size; i2++) {
                            z2 |= this.d.get(i2).a(arrayList, arrayList2);
                        }
                        this.d.clear();
                        this.q.e().removeCallbacks(this.G);
                    }
                }
                z2 = false;
            }
            if (z2) {
                this.e = true;
                try {
                    v0(this.z, this.A);
                    o();
                    z3 = true;
                } catch (Throwable th) {
                    o();
                    throw th;
                }
            } else {
                E0();
                if (this.y) {
                    this.y = false;
                    C0();
                }
                this.h.values().removeAll(Collections.singleton(null));
                return z3;
            }
        }
    }

    @Override // androidx.fragment.app.g
    public Fragment c(String str) {
        int size = this.g.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = this.g.get(size);
                if (fragment != null && str.equals(fragment.x)) {
                    return fragment;
                }
            } else {
                for (Fragment fragment2 : this.h.values()) {
                    if (fragment2 != null && str.equals(fragment2.x)) {
                        return fragment2;
                    }
                }
                return null;
            }
        }
    }

    @Override // androidx.fragment.app.g
    public int d() {
        ArrayList<a> arrayList = this.i;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // androidx.fragment.app.g
    public e e() {
        if (super.e() == g.c) {
            Fragment fragment = this.s;
            if (fragment != null) {
                return fragment.r.e();
            }
            i(new c());
        }
        return super.e();
    }

    public Fragment e0(int i2) {
        for (int size = this.g.size() - 1; size >= 0; size--) {
            Fragment fragment = this.g.get(size);
            if (fragment != null && fragment.v == i2) {
                return fragment;
            }
        }
        for (Fragment fragment2 : this.h.values()) {
            if (fragment2 != null && fragment2.v == i2) {
                return fragment2;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.g
    public List<Fragment> f() {
        List<Fragment> list;
        if (this.g.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.g) {
            list = (List) this.g.clone();
        }
        return list;
    }

    public Fragment f0(String str) {
        Fragment w2;
        for (Fragment fragment : this.h.values()) {
            if (!(fragment == null || (w2 = fragment.w(str)) == null)) {
                return w2;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.g
    public void g() {
        Z(new i(null, -1, 0), false);
    }

    @Override // androidx.fragment.app.g
    public boolean h() {
        n();
        b0();
        a0(true);
        Fragment fragment = this.t;
        if (fragment != null && fragment.B().h()) {
            return true;
        }
        boolean t0 = t0(this.z, this.A, null, -1, 0);
        if (t0) {
            this.e = true;
            try {
                v0(this.z, this.A);
            } finally {
                o();
            }
        }
        E0();
        if (this.y) {
            this.y = false;
            C0();
        }
        this.h.values().removeAll(Collections.singleton(null));
        return t0;
    }

    /* access modifiers changed from: package-private */
    public u h0(Fragment fragment) {
        return this.F.g(fragment);
    }

    /* access modifiers changed from: package-private */
    public void i0() {
        b0();
        if (this.l.c()) {
            h();
        } else {
            this.k.b();
        }
    }

    public void k(Fragment fragment, boolean z2) {
        n0(fragment);
        if (fragment.z) {
            return;
        }
        if (!this.g.contains(fragment)) {
            synchronized (this.g) {
                this.g.add(fragment);
            }
            fragment.k = true;
            fragment.l = false;
            if (fragment.E == null) {
                fragment.K = false;
            }
            if (j0(fragment)) {
                this.u = true;
            }
            if (z2) {
                r0(fragment, this.p, 0, 0, false);
                return;
            }
            return;
        }
        throw new IllegalStateException("Fragment already added: " + fragment);
    }

    /* access modifiers changed from: package-private */
    public boolean k0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        h hVar = fragment.r;
        if (fragment != hVar.t || !k0(hVar.s)) {
            return false;
        }
        return true;
    }

    public void l(f fVar, c cVar, Fragment fragment) {
        if (this.q == null) {
            this.q = fVar;
            this.r = cVar;
            this.s = fragment;
            if (fragment != null) {
                E0();
            }
            if (fVar instanceof androidx.activity.c) {
                androidx.activity.c cVar2 = (androidx.activity.c) fVar;
                OnBackPressedDispatcher onBackPressedDispatcher = cVar2.getOnBackPressedDispatcher();
                this.k = onBackPressedDispatcher;
                androidx.lifecycle.i iVar = cVar2;
                if (fragment != null) {
                    iVar = fragment;
                }
                onBackPressedDispatcher.a(iVar, this.l);
            }
            if (fragment != null) {
                this.F = fragment.r.F.d(fragment);
            } else if (fVar instanceof v) {
                this.F = l.e(((v) fVar).getViewModelStore());
            } else {
                this.F = new l(false);
            }
        } else {
            throw new IllegalStateException("Already attached");
        }
    }

    public boolean l0() {
        return this.v || this.w;
    }

    public void m(Fragment fragment) {
        if (fragment.z) {
            fragment.z = false;
            if (fragment.k) {
                return;
            }
            if (!this.g.contains(fragment)) {
                synchronized (this.g) {
                    this.g.add(fragment);
                }
                fragment.k = true;
                if (j0(fragment)) {
                    this.u = true;
                    return;
                }
                return;
            }
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
    }

    /* access modifiers changed from: package-private */
    public d m0(Fragment fragment, int i2, boolean z2, int i3) {
        int J = fragment.J();
        boolean z3 = false;
        fragment.e1(0);
        ViewGroup viewGroup = fragment.D;
        if (viewGroup != null && viewGroup.getLayoutTransition() != null) {
            return null;
        }
        Animation k0 = fragment.k0();
        if (k0 != null) {
            return new d(k0);
        }
        Animator l0 = fragment.l0();
        if (l0 != null) {
            return new d(l0);
        }
        char c2 = 1;
        if (J != 0) {
            boolean equals = "anim".equals(this.q.d().getResources().getResourceTypeName(J));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(this.q.d(), J);
                    if (loadAnimation != null) {
                        return new d(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(this.q.d(), J);
                    if (loadAnimator != null) {
                        return new d(loadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (!equals) {
                        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.q.d(), J);
                        if (loadAnimation2 != null) {
                            return new d(loadAnimation2);
                        }
                    } else {
                        throw e3;
                    }
                }
            }
        }
        if (i2 == 0) {
            return null;
        }
        if (i2 != 4097) {
            c2 = i2 != 4099 ? i2 != 8194 ? 65535 : z2 ? (char) 3 : 4 : z2 ? (char) 5 : 6;
        } else if (!z2) {
            c2 = 2;
        }
        if (c2 < 0) {
            return null;
        }
        switch (c2) {
            case 1:
                return o0(1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return o0(1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return o0(0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return o0(1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setInterpolator(I);
                alphaAnimation.setDuration(220);
                return new d(alphaAnimation);
            case 6:
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation2.setInterpolator(I);
                alphaAnimation2.setDuration(220);
                return new d(alphaAnimation2);
            default:
                if (i3 == 0 && this.q.k()) {
                    this.q.j();
                }
                return null;
        }
    }

    /* access modifiers changed from: package-private */
    public void n0(Fragment fragment) {
        if (this.h.get(fragment.e) == null) {
            this.h.put(fragment.e, fragment);
        }
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.a);
        int i2 = 0;
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !e.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        if (view != null) {
            i2 = view.getId();
        }
        if (i2 == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        if (resourceId != -1) {
            fragment = e0(resourceId);
        }
        if (fragment == null && string != null) {
            fragment = c(string);
        }
        if (fragment == null && i2 != -1) {
            fragment = e0(i2);
        }
        if (fragment == null) {
            fragment = e().a(context.getClassLoader(), attributeValue);
            fragment.m = true;
            fragment.v = resourceId != 0 ? resourceId : i2;
            fragment.w = i2;
            fragment.x = string;
            fragment.n = true;
            fragment.r = this;
            f fVar = this.q;
            fragment.s = fVar;
            fVar.d();
            fragment.t0(attributeSet, fragment.c);
            k(fragment, true);
        } else if (!fragment.n) {
            fragment.n = true;
            f fVar2 = this.q;
            fragment.s = fVar2;
            fVar2.d();
            fragment.t0(attributeSet, fragment.c);
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i2) + " with another fragment for " + attributeValue);
        }
        int i3 = this.p;
        if (i3 >= 1 || !fragment.m) {
            r0(fragment, i3, 0, 0, false);
        } else {
            r0(fragment, 1, 0, 0, false);
        }
        View view2 = fragment.E;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.E.getTag() == null) {
                fragment.E.setTag(string);
            }
            return fragment.E;
        }
        throw new IllegalStateException(ic.j("Fragment ", attributeValue, " did not create a view."));
    }

    /* access modifiers changed from: package-private */
    public void p(a aVar, boolean z2, boolean z3, boolean z4) {
        if (z2) {
            aVar.r(z4);
        } else {
            aVar.q();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z2));
        if (z3) {
            r.o(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z4) {
            q0(this.p, true);
        }
        for (Fragment fragment : this.h.values()) {
            if (fragment != null && fragment.E != null && fragment.J && aVar.s(fragment.w)) {
                float f2 = fragment.L;
                if (f2 > 0.0f) {
                    fragment.E.setAlpha(f2);
                }
                if (z4) {
                    fragment.L = 0.0f;
                } else {
                    fragment.L = -1.0f;
                    fragment.J = false;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void p0(Fragment fragment) {
        Animator animator;
        ViewGroup viewGroup;
        int indexOfChild;
        int indexOfChild2;
        if (fragment != null && this.h.containsKey(fragment.e)) {
            int i2 = this.p;
            if (fragment.l) {
                if (fragment.b0()) {
                    i2 = Math.min(i2, 1);
                } else {
                    i2 = Math.min(i2, 0);
                }
            }
            r0(fragment, i2, fragment.K(), fragment.L(), false);
            View view = fragment.E;
            if (view != null) {
                ViewGroup viewGroup2 = fragment.D;
                Fragment fragment2 = null;
                if (viewGroup2 != null && view != null) {
                    int indexOf = this.g.indexOf(fragment);
                    while (true) {
                        indexOf--;
                        if (indexOf < 0) {
                            break;
                        }
                        Fragment fragment3 = this.g.get(indexOf);
                        if (fragment3.D == viewGroup2 && fragment3.E != null) {
                            fragment2 = fragment3;
                            break;
                        }
                    }
                }
                if (fragment2 != null && (indexOfChild2 = viewGroup.indexOfChild(fragment.E)) < (indexOfChild = (viewGroup = fragment.D).indexOfChild(fragment2.E))) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.E, indexOfChild);
                }
                if (fragment.J && fragment.D != null) {
                    float f2 = fragment.L;
                    if (f2 > 0.0f) {
                        fragment.E.setAlpha(f2);
                    }
                    fragment.L = 0.0f;
                    fragment.J = false;
                    d m0 = m0(fragment, fragment.K(), true, fragment.L());
                    if (m0 != null) {
                        Animation animation = m0.a;
                        if (animation != null) {
                            fragment.E.startAnimation(animation);
                        } else {
                            m0.b.setTarget(fragment.E);
                            m0.b.start();
                        }
                    }
                }
            }
            if (fragment.K) {
                if (fragment.E != null) {
                    d m02 = m0(fragment, fragment.K(), !fragment.y, fragment.L());
                    if (m02 == null || (animator = m02.b) == null) {
                        if (m02 != null) {
                            fragment.E.startAnimation(m02.a);
                            m02.a.start();
                        }
                        fragment.E.setVisibility((!fragment.y || fragment.a0()) ? 0 : 8);
                        if (fragment.a0()) {
                            fragment.d1(false);
                        }
                    } else {
                        animator.setTarget(fragment.E);
                        if (!fragment.y) {
                            fragment.E.setVisibility(0);
                        } else if (fragment.a0()) {
                            fragment.d1(false);
                        } else {
                            ViewGroup viewGroup3 = fragment.D;
                            View view2 = fragment.E;
                            viewGroup3.startViewTransition(view2);
                            m02.b.addListener(new k(this, viewGroup3, view2, fragment));
                        }
                        m02.b.start();
                    }
                }
                if (fragment.k && j0(fragment)) {
                    this.u = true;
                }
                fragment.K = false;
                fragment.r0();
            }
        }
    }

    public void q(Fragment fragment) {
        if (!fragment.z) {
            fragment.z = true;
            if (fragment.k) {
                synchronized (this.g) {
                    this.g.remove(fragment);
                }
                if (j0(fragment)) {
                    this.u = true;
                }
                fragment.k = false;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void q0(int i2, boolean z2) {
        f fVar;
        if (this.q == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        } else if (z2 || i2 != this.p) {
            this.p = i2;
            int size = this.g.size();
            for (int i3 = 0; i3 < size; i3++) {
                p0(this.g.get(i3));
            }
            for (Fragment fragment : this.h.values()) {
                if (fragment != null && ((fragment.l || fragment.z) && !fragment.J)) {
                    p0(fragment);
                }
            }
            C0();
            if (this.u && (fVar = this.q) != null && this.p == 4) {
                fVar.o();
                this.u = false;
            }
        }
    }

    public void r() {
        this.v = false;
        this.w = false;
        X(2);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0082, code lost:
        if (r0 != 3) goto L_0x04ce;
     */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x02e6  */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x02ef  */
    /* JADX WARNING: Removed duplicated region for block: B:269:0x04d3  */
    /* JADX WARNING: Removed duplicated region for block: B:276:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void r0(androidx.fragment.app.Fragment r17, int r18, int r19, int r20, boolean r21) {
        /*
        // Method dump skipped, instructions count: 1278
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.h.r0(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    public void s(Configuration configuration) {
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                fragment.onConfigurationChanged(configuration);
                fragment.t.s(configuration);
            }
        }
    }

    public void s0() {
        this.v = false;
        this.w = false;
        int size = this.g.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                fragment.t.s0();
            }
        }
    }

    public boolean t(MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null && fragment.H0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean t0(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        ArrayList<a> arrayList3 = this.i;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.i.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            int i4 = -1;
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    a aVar = this.i.get(size2);
                    if ((str != null && str.equals(aVar.j)) || (i2 >= 0 && i2 == aVar.t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        a aVar2 = this.i.get(size2);
                        if ((str == null || !str.equals(aVar2.j)) && (i2 < 0 || i2 != aVar2.t)) {
                            break;
                        }
                    }
                }
                i4 = size2;
            }
            if (i4 == this.i.size() - 1) {
                return false;
            }
            for (int size3 = this.i.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.i.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.s;
        if (fragment != null) {
            androidx.core.app.b.e(fragment, sb);
        } else {
            androidx.core.app.b.e(this.q, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u() {
        this.v = false;
        this.w = false;
        X(1);
    }

    public void u0(Fragment fragment) {
        boolean z2 = !fragment.b0();
        if (!fragment.z || z2) {
            synchronized (this.g) {
                this.g.remove(fragment);
            }
            if (j0(fragment)) {
                this.u = true;
            }
            fragment.k = false;
            fragment.l = true;
        }
    }

    public boolean v(Menu menu, MenuInflater menuInflater) {
        if (this.p < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z2 = false;
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                if (!fragment.y ? fragment.t.v(menu, menuInflater) | false : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    z2 = true;
                }
            }
        }
        if (this.j != null) {
            for (int i3 = 0; i3 < this.j.size(); i3++) {
                Fragment fragment2 = this.j.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    Objects.requireNonNull(fragment2);
                }
            }
        }
        this.j = arrayList;
        return z2;
    }

    public void w() {
        this.x = true;
        b0();
        X(0);
        this.q = null;
        this.r = null;
        this.s = null;
        if (this.k != null) {
            this.l.d();
            this.k = null;
        }
    }

    /* access modifiers changed from: package-private */
    public void w0(Parcelable parcelable) {
        FragmentState fragmentState;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.b != null) {
                for (Fragment fragment : this.F.f()) {
                    Iterator<FragmentState> it = fragmentManagerState.b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            fragmentState = null;
                            break;
                        }
                        fragmentState = it.next();
                        if (fragmentState.c.equals(fragment.e)) {
                            break;
                        }
                    }
                    if (fragmentState == null) {
                        r0(fragment, 1, 0, 0, false);
                        fragment.l = true;
                        r0(fragment, 0, 0, 0, false);
                    } else {
                        fragmentState.o = fragment;
                        fragment.d = null;
                        fragment.q = 0;
                        fragment.n = false;
                        fragment.k = false;
                        Fragment fragment2 = fragment.g;
                        fragment.h = fragment2 != null ? fragment2.e : null;
                        fragment.g = null;
                        Bundle bundle = fragmentState.n;
                        if (bundle != null) {
                            bundle.setClassLoader(this.q.d().getClassLoader());
                            fragment.d = fragmentState.n.getSparseParcelableArray("android:view_state");
                            fragment.c = fragmentState.n;
                        }
                    }
                }
                this.h.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.b.iterator();
                while (it2.hasNext()) {
                    FragmentState next = it2.next();
                    if (next != null) {
                        ClassLoader classLoader = this.q.d().getClassLoader();
                        e e2 = e();
                        if (next.o == null) {
                            Bundle bundle2 = next.k;
                            if (bundle2 != null) {
                                bundle2.setClassLoader(classLoader);
                            }
                            Fragment a2 = e2.a(classLoader, next.b);
                            next.o = a2;
                            a2.c1(next.k);
                            Bundle bundle3 = next.n;
                            if (bundle3 != null) {
                                bundle3.setClassLoader(classLoader);
                                next.o.c = next.n;
                            } else {
                                next.o.c = new Bundle();
                            }
                            Fragment fragment3 = next.o;
                            fragment3.e = next.c;
                            fragment3.m = next.d;
                            fragment3.o = true;
                            fragment3.v = next.e;
                            fragment3.w = next.f;
                            fragment3.x = next.g;
                            fragment3.A = next.h;
                            fragment3.l = next.i;
                            fragment3.z = next.j;
                            fragment3.y = next.l;
                            fragment3.O = f.b.values()[next.m];
                        }
                        Fragment fragment4 = next.o;
                        fragment4.r = this;
                        this.h.put(fragment4.e, fragment4);
                        next.o = null;
                    }
                }
                this.g.clear();
                ArrayList<String> arrayList = fragmentManagerState.c;
                if (arrayList != null) {
                    Iterator<String> it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        String next2 = it3.next();
                        Fragment fragment5 = this.h.get(next2);
                        if (fragment5 != null) {
                            fragment5.k = true;
                            if (!this.g.contains(fragment5)) {
                                synchronized (this.g) {
                                    this.g.add(fragment5);
                                }
                            } else {
                                throw new IllegalStateException("Already added " + fragment5);
                            }
                        } else {
                            D0(new IllegalStateException(ic.j("No instantiated fragment for (", next2, ")")));
                            throw null;
                        }
                    }
                }
                if (fragmentManagerState.d != null) {
                    this.i = new ArrayList<>(fragmentManagerState.d.length);
                    int i2 = 0;
                    while (true) {
                        BackStackState[] backStackStateArr = fragmentManagerState.d;
                        if (i2 >= backStackStateArr.length) {
                            break;
                        }
                        BackStackState backStackState = backStackStateArr[i2];
                        Objects.requireNonNull(backStackState);
                        a aVar = new a(this);
                        int i3 = 0;
                        int i4 = 0;
                        while (true) {
                            int[] iArr = backStackState.b;
                            if (i3 >= iArr.length) {
                                break;
                            }
                            m.a aVar2 = new m.a();
                            int i5 = i3 + 1;
                            aVar2.a = iArr[i3];
                            String str = backStackState.c.get(i4);
                            if (str != null) {
                                aVar2.b = this.h.get(str);
                            } else {
                                aVar2.b = null;
                            }
                            aVar2.g = f.b.values()[backStackState.d[i4]];
                            aVar2.h = f.b.values()[backStackState.e[i4]];
                            int[] iArr2 = backStackState.b;
                            int i6 = i5 + 1;
                            int i7 = iArr2[i5];
                            aVar2.c = i7;
                            int i8 = i6 + 1;
                            int i9 = iArr2[i6];
                            aVar2.d = i9;
                            int i10 = i8 + 1;
                            int i11 = iArr2[i8];
                            aVar2.e = i11;
                            int i12 = iArr2[i10];
                            aVar2.f = i12;
                            aVar.b = i7;
                            aVar.c = i9;
                            aVar.d = i11;
                            aVar.e = i12;
                            aVar.d(aVar2);
                            i4++;
                            i3 = i10 + 1;
                        }
                        aVar.f = backStackState.f;
                        aVar.g = backStackState.g;
                        aVar.j = backStackState.h;
                        aVar.t = backStackState.i;
                        aVar.h = true;
                        aVar.k = backStackState.j;
                        aVar.l = backStackState.k;
                        aVar.m = backStackState.l;
                        aVar.n = backStackState.m;
                        aVar.o = backStackState.n;
                        aVar.p = backStackState.o;
                        aVar.q = backStackState.p;
                        aVar.n(1);
                        this.i.add(aVar);
                        int i13 = aVar.t;
                        if (i13 >= 0) {
                            synchronized (this) {
                                if (this.m == null) {
                                    this.m = new ArrayList<>();
                                }
                                int size = this.m.size();
                                if (i13 < size) {
                                    this.m.set(i13, aVar);
                                } else {
                                    while (size < i13) {
                                        this.m.add(null);
                                        if (this.n == null) {
                                            this.n = new ArrayList<>();
                                        }
                                        this.n.add(Integer.valueOf(size));
                                        size++;
                                    }
                                    this.m.add(aVar);
                                }
                            }
                        }
                        i2++;
                    }
                } else {
                    this.i = null;
                }
                String str2 = fragmentManagerState.e;
                if (str2 != null) {
                    Fragment fragment6 = this.h.get(str2);
                    this.t = fragment6;
                    Q(fragment6);
                }
                this.f = fragmentManagerState.f;
            }
        }
    }

    public void x() {
        X(1);
    }

    /* access modifiers changed from: package-private */
    public Parcelable x0() {
        BackStackState[] backStackStateArr;
        ArrayList<String> arrayList;
        int size;
        Bundle bundle;
        g0();
        Iterator<Fragment> it = this.h.values().iterator();
        while (true) {
            backStackStateArr = null;
            if (!it.hasNext()) {
                break;
            }
            Fragment next = it.next();
            if (next != null) {
                if (next.y() != null) {
                    int S = next.S();
                    View y2 = next.y();
                    Animation animation = y2.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        y2.clearAnimation();
                    }
                    next.a1(null);
                    r0(next, S, 0, 0, false);
                } else if (next.z() != null) {
                    next.z().end();
                }
            }
        }
        b0();
        this.v = true;
        if (this.h.isEmpty()) {
            return null;
        }
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(this.h.size());
        boolean z2 = false;
        for (Fragment fragment : this.h.values()) {
            if (fragment != null) {
                if (fragment.r == this) {
                    FragmentState fragmentState = new FragmentState(fragment);
                    arrayList2.add(fragmentState);
                    if (fragment.b <= 0 || fragmentState.n != null) {
                        fragmentState.n = fragment.c;
                    } else {
                        if (this.C == null) {
                            this.C = new Bundle();
                        }
                        fragment.T0(this.C);
                        J(fragment, this.C, false);
                        if (!this.C.isEmpty()) {
                            bundle = this.C;
                            this.C = null;
                        } else {
                            bundle = null;
                        }
                        if (fragment.E != null) {
                            y0(fragment);
                        }
                        if (fragment.d != null) {
                            if (bundle == null) {
                                bundle = new Bundle();
                            }
                            bundle.putSparseParcelableArray("android:view_state", fragment.d);
                        }
                        if (!fragment.H) {
                            if (bundle == null) {
                                bundle = new Bundle();
                            }
                            bundle.putBoolean("android:user_visible_hint", fragment.H);
                        }
                        fragmentState.n = bundle;
                        String str = fragment.h;
                        if (str != null) {
                            Fragment fragment2 = this.h.get(str);
                            if (fragment2 != null) {
                                if (fragmentState.n == null) {
                                    fragmentState.n = new Bundle();
                                }
                                Bundle bundle2 = fragmentState.n;
                                if (fragment2.r == this) {
                                    bundle2.putString("android:target_state", fragment2.e);
                                    int i2 = fragment.i;
                                    if (i2 != 0) {
                                        fragmentState.n.putInt("android:target_req_state", i2);
                                    }
                                } else {
                                    D0(new IllegalStateException(ic.g("Fragment ", fragment2, " is not currently in the FragmentManager")));
                                    throw null;
                                }
                            } else {
                                D0(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.h));
                                throw null;
                            }
                        }
                    }
                    z2 = true;
                } else {
                    D0(new IllegalStateException(ic.g("Failure saving state: active ", fragment, " was removed from the FragmentManager")));
                    throw null;
                }
            }
        }
        if (!z2) {
            return null;
        }
        int size2 = this.g.size();
        if (size2 > 0) {
            arrayList = new ArrayList<>(size2);
            Iterator<Fragment> it2 = this.g.iterator();
            while (it2.hasNext()) {
                Fragment next2 = it2.next();
                arrayList.add(next2.e);
                if (next2.r != this) {
                    D0(new IllegalStateException(ic.g("Failure saving state: active ", next2, " was removed from the FragmentManager")));
                    throw null;
                }
            }
        } else {
            arrayList = null;
        }
        ArrayList<a> arrayList3 = this.i;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.i.get(i3));
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.b = arrayList2;
        fragmentManagerState.c = arrayList;
        fragmentManagerState.d = backStackStateArr;
        Fragment fragment3 = this.t;
        if (fragment3 != null) {
            fragmentManagerState.e = fragment3.e;
        }
        fragmentManagerState.f = this.f;
        return fragmentManagerState;
    }

    public void y() {
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                fragment.N0();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void y0(Fragment fragment) {
        if (fragment.F != null) {
            SparseArray<Parcelable> sparseArray = this.D;
            if (sparseArray == null) {
                this.D = new SparseArray<>();
            } else {
                sparseArray.clear();
            }
            fragment.F.saveHierarchyState(this.D);
            if (this.D.size() > 0) {
                fragment.d = this.D;
                this.D = null;
            }
        }
    }

    public void z(boolean z2) {
        int size = this.g.size();
        while (true) {
            size--;
            if (size >= 0) {
                Fragment fragment = this.g.get(size);
                if (fragment != null) {
                    fragment.u0();
                    fragment.t.z(z2);
                }
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void z0() {
        synchronized (this) {
            ArrayList<j> arrayList = this.E;
            boolean z2 = false;
            boolean z3 = arrayList != null && !arrayList.isEmpty();
            ArrayList<AbstractC0013h> arrayList2 = this.d;
            if (arrayList2 != null && arrayList2.size() == 1) {
                z2 = true;
            }
            if (z3 || z2) {
                this.q.e().removeCallbacks(this.G);
                this.q.e().post(this.G);
                E0();
            }
        }
    }

    /* access modifiers changed from: private */
    public static class d {
        public final Animation a;
        public final Animator b;

        d(Animation animation) {
            this.a = animation;
            this.b = null;
        }

        d(Animator animator) {
            this.a = null;
            this.b = animator;
        }
    }

    /* access modifiers changed from: private */
    public static class e extends AnimationSet implements Runnable {
        private final ViewGroup b;
        private final View c;
        private boolean d;
        private boolean e;
        private boolean f = true;

        e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.b = viewGroup;
            this.c = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        public boolean getTransformation(long j, Transformation transformation) {
            this.f = true;
            if (this.d) {
                return !this.e;
            }
            if (!super.getTransformation(j, transformation)) {
                this.d = true;
                z2.a(this.b, this);
            }
            return true;
        }

        public void run() {
            if (this.d || !this.f) {
                this.b.endViewTransition(this.c);
                this.e = true;
                return;
            }
            this.f = false;
            this.b.post(this);
        }

        public boolean getTransformation(long j, Transformation transformation, float f2) {
            this.f = true;
            if (this.d) {
                return !this.e;
            }
            if (!super.getTransformation(j, transformation, f2)) {
                this.d = true;
                z2.a(this.b, this);
            }
            return true;
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
