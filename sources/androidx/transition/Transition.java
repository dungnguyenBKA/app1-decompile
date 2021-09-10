package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.StringTokenizer;

public abstract class Transition implements Cloneable {
    private static final int[] w = {2, 1, 3, 4};
    private static final PathMotion x = new a();
    private static ThreadLocal<x<Animator, b>> y = new ThreadLocal<>();
    private String b = getClass().getName();
    private long c = -1;
    long d = -1;
    private TimeInterpolator e = null;
    ArrayList<Integer> f = new ArrayList<>();
    ArrayList<View> g = new ArrayList<>();
    private x h = new x();
    private x i = new x();
    TransitionSet j = null;
    private int[] k = w;
    private ArrayList<w> l;
    private ArrayList<w> m;
    ArrayList<Animator> n = new ArrayList<>();
    private int o = 0;
    private boolean p = false;
    private boolean q = false;
    private ArrayList<d> r = null;
    private ArrayList<Animator> s = new ArrayList<>();
    u t;
    private c u;
    private PathMotion v = x;

    static class a extends PathMotion {
        a() {
        }

        @Override // androidx.transition.PathMotion
        public Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* access modifiers changed from: private */
    public static class b {
        View a;
        String b;
        w c;
        l0 d;
        Transition e;

        b(View view, String str, Transition transition, l0 l0Var, w wVar) {
            this.a = view;
            this.b = str;
            this.c = wVar;
            this.d = l0Var;
            this.e = transition;
        }
    }

    public static abstract class c {
        public abstract Rect a(Transition transition);
    }

    public interface d {
        void a(Transition transition);

        void b(Transition transition);

        void c(Transition transition);

        void d(Transition transition);

        void e(Transition transition);
    }

    public Transition() {
    }

    private static boolean B(w wVar, w wVar2, String str) {
        Object obj = wVar.a.get(str);
        Object obj2 = wVar2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private static void c(x xVar, View view, w wVar) {
        xVar.a.put(view, wVar);
        int id = view.getId();
        if (id >= 0) {
            if (xVar.b.indexOfKey(id) >= 0) {
                xVar.b.put(id, null);
            } else {
                xVar.b.put(id, view);
            }
        }
        String k2 = c3.k(view);
        if (k2 != null) {
            if (xVar.d.e(k2) >= 0) {
                xVar.d.put(k2, null);
            } else {
                xVar.d.put(k2, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (xVar.c.i(itemIdAtPosition) >= 0) {
                    View g2 = xVar.c.g(itemIdAtPosition);
                    if (g2 != null) {
                        g2.setHasTransientState(false);
                        xVar.c.k(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                xVar.c.k(itemIdAtPosition, view);
            }
        }
    }

    private void e(View view, boolean z) {
        if (view != null) {
            view.getId();
            if (view.getParent() instanceof ViewGroup) {
                w wVar = new w(view);
                if (z) {
                    g(wVar);
                } else {
                    d(wVar);
                }
                wVar.c.add(this);
                f(wVar);
                if (z) {
                    c(this.h, view, wVar);
                } else {
                    c(this.i, view, wVar);
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    e(viewGroup.getChildAt(i2), z);
                }
            }
        }
    }

    private static x<Animator, b> t() {
        x<Animator, b> xVar = y.get();
        if (xVar != null) {
            return xVar;
        }
        x<Animator, b> xVar2 = new x<>();
        y.set(xVar2);
        return xVar2;
    }

    /* access modifiers changed from: package-private */
    public boolean A(View view) {
        int id = view.getId();
        if ((this.f.size() != 0 || this.g.size() != 0) && !this.f.contains(Integer.valueOf(id)) && !this.g.contains(view)) {
            return false;
        }
        return true;
    }

    public void C(View view) {
        if (!this.q) {
            x<Animator, b> t2 = t();
            int size = t2.size();
            Property<View, Float> property = b0.b;
            k0 k0Var = new k0(view);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                b l2 = t2.l(i2);
                if (l2.a != null && k0Var.equals(l2.d)) {
                    t2.h(i2).pause();
                }
            }
            ArrayList<d> arrayList = this.r;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.r.clone();
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((d) arrayList2.get(i3)).b(this);
                }
            }
            this.p = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void D(ViewGroup viewGroup) {
        b orDefault;
        w wVar;
        View view;
        View view2;
        View g2;
        this.l = new ArrayList<>();
        this.m = new ArrayList<>();
        x xVar = this.h;
        x xVar2 = this.i;
        x xVar3 = new x(xVar.a);
        x xVar4 = new x(xVar2.a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.k;
            if (i2 >= iArr.length) {
                break;
            }
            int i3 = iArr[i2];
            if (i3 == 1) {
                int size = xVar3.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    View view3 = (View) xVar3.h(size);
                    if (view3 != null && A(view3) && (wVar = (w) xVar4.remove(view3)) != null && A(wVar.b)) {
                        this.l.add((w) xVar3.j(size));
                        this.m.add(wVar);
                    }
                }
            } else if (i3 == 2) {
                x<String, View> xVar5 = xVar.d;
                x<String, View> xVar6 = xVar2.d;
                int size2 = xVar5.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    View l2 = xVar5.l(i4);
                    if (l2 != null && A(l2) && (view = xVar6.get(xVar5.h(i4))) != null && A(view)) {
                        w wVar2 = (w) xVar3.getOrDefault(l2, null);
                        w wVar3 = (w) xVar4.getOrDefault(view, null);
                        if (!(wVar2 == null || wVar3 == null)) {
                            this.l.add(wVar2);
                            this.m.add(wVar3);
                            xVar3.remove(l2);
                            xVar4.remove(view);
                        }
                    }
                }
            } else if (i3 == 3) {
                SparseArray<View> sparseArray = xVar.b;
                SparseArray<View> sparseArray2 = xVar2.b;
                int size3 = sparseArray.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    View valueAt = sparseArray.valueAt(i5);
                    if (valueAt != null && A(valueAt) && (view2 = sparseArray2.get(sparseArray.keyAt(i5))) != null && A(view2)) {
                        w wVar4 = (w) xVar3.getOrDefault(valueAt, null);
                        w wVar5 = (w) xVar4.getOrDefault(view2, null);
                        if (!(wVar4 == null || wVar5 == null)) {
                            this.l.add(wVar4);
                            this.m.add(wVar5);
                            xVar3.remove(valueAt);
                            xVar4.remove(view2);
                        }
                    }
                }
            } else if (i3 == 4) {
                b0<View> b0Var = xVar.c;
                b0<View> b0Var2 = xVar2.c;
                int m2 = b0Var.m();
                for (int i6 = 0; i6 < m2; i6++) {
                    View n2 = b0Var.n(i6);
                    if (n2 != null && A(n2) && (g2 = b0Var2.g(b0Var.j(i6))) != null && A(g2)) {
                        w wVar6 = (w) xVar3.getOrDefault(n2, null);
                        w wVar7 = (w) xVar4.getOrDefault(g2, null);
                        if (!(wVar6 == null || wVar7 == null)) {
                            this.l.add(wVar6);
                            this.m.add(wVar7);
                            xVar3.remove(n2);
                            xVar4.remove(g2);
                        }
                    }
                }
            }
            i2++;
        }
        for (int i7 = 0; i7 < xVar3.size(); i7++) {
            w wVar8 = (w) xVar3.l(i7);
            if (A(wVar8.b)) {
                this.l.add(wVar8);
                this.m.add(null);
            }
        }
        for (int i8 = 0; i8 < xVar4.size(); i8++) {
            w wVar9 = (w) xVar4.l(i8);
            if (A(wVar9.b)) {
                this.m.add(wVar9);
                this.l.add(null);
            }
        }
        x<Animator, b> t2 = t();
        int size4 = t2.size();
        Property<View, Float> property = b0.b;
        k0 k0Var = new k0(viewGroup);
        for (int i9 = size4 - 1; i9 >= 0; i9--) {
            Animator h2 = t2.h(i9);
            if (!(h2 == null || (orDefault = t2.getOrDefault(h2, null)) == null || orDefault.a == null || !k0Var.equals(orDefault.d))) {
                w wVar10 = orDefault.c;
                View view4 = orDefault.a;
                w y2 = y(view4, true);
                w r2 = r(view4, true);
                if (y2 == null && r2 == null) {
                    r2 = this.i.a.get(view4);
                }
                if (!(y2 == null && r2 == null) && orDefault.e.z(wVar10, r2)) {
                    if (h2.isRunning() || h2.isStarted()) {
                        h2.cancel();
                    } else {
                        t2.remove(h2);
                    }
                }
            }
        }
        l(viewGroup, this.h, this.i, this.l, this.m);
        H();
    }

    public Transition E(d dVar) {
        ArrayList<d> arrayList = this.r;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(dVar);
        if (this.r.size() == 0) {
            this.r = null;
        }
        return this;
    }

    public Transition F(View view) {
        this.g.remove(view);
        return this;
    }

    public void G(View view) {
        if (this.p) {
            if (!this.q) {
                x<Animator, b> t2 = t();
                int size = t2.size();
                Property<View, Float> property = b0.b;
                k0 k0Var = new k0(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    b l2 = t2.l(i2);
                    if (l2.a != null && k0Var.equals(l2.d)) {
                        t2.h(i2).resume();
                    }
                }
                ArrayList<d> arrayList = this.r;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.r.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((d) arrayList2.get(i3)).e(this);
                    }
                }
            }
            this.p = false;
        }
    }

    /* access modifiers changed from: protected */
    public void H() {
        O();
        x<Animator, b> t2 = t();
        Iterator<Animator> it = this.s.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (t2.containsKey(next)) {
                O();
                if (next != null) {
                    next.addListener(new q(this, t2));
                    long j2 = this.d;
                    if (j2 >= 0) {
                        next.setDuration(j2);
                    }
                    long j3 = this.c;
                    if (j3 >= 0) {
                        next.setStartDelay(next.getStartDelay() + j3);
                    }
                    TimeInterpolator timeInterpolator = this.e;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new r(this));
                    next.start();
                }
            }
        }
        this.s.clear();
        m();
    }

    public Transition I(long j2) {
        this.d = j2;
        return this;
    }

    public void J(c cVar) {
        this.u = cVar;
    }

    public Transition K(TimeInterpolator timeInterpolator) {
        this.e = timeInterpolator;
        return this;
    }

    public void L(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.v = x;
        } else {
            this.v = pathMotion;
        }
    }

    public void M(u uVar) {
        this.t = uVar;
    }

    public Transition N(long j2) {
        this.c = j2;
        return this;
    }

    /* access modifiers changed from: protected */
    public void O() {
        if (this.o == 0) {
            ArrayList<d> arrayList = this.r;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.r.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((d) arrayList2.get(i2)).a(this);
                }
            }
            this.q = false;
        }
        this.o++;
    }

    /* access modifiers changed from: package-private */
    public String P(String str) {
        StringBuilder q2 = ic.q(str);
        q2.append(getClass().getSimpleName());
        q2.append("@");
        q2.append(Integer.toHexString(hashCode()));
        q2.append(": ");
        String sb = q2.toString();
        if (this.d != -1) {
            StringBuilder r2 = ic.r(sb, "dur(");
            r2.append(this.d);
            r2.append(") ");
            sb = r2.toString();
        }
        if (this.c != -1) {
            StringBuilder r3 = ic.r(sb, "dly(");
            r3.append(this.c);
            r3.append(") ");
            sb = r3.toString();
        }
        if (this.e != null) {
            StringBuilder r4 = ic.r(sb, "interp(");
            r4.append(this.e);
            r4.append(") ");
            sb = r4.toString();
        }
        if (this.f.size() <= 0 && this.g.size() <= 0) {
            return sb;
        }
        String i2 = ic.i(sb, "tgts(");
        if (this.f.size() > 0) {
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                if (i3 > 0) {
                    i2 = ic.i(i2, ", ");
                }
                StringBuilder q3 = ic.q(i2);
                q3.append(this.f.get(i3));
                i2 = q3.toString();
            }
        }
        if (this.g.size() > 0) {
            for (int i4 = 0; i4 < this.g.size(); i4++) {
                if (i4 > 0) {
                    i2 = ic.i(i2, ", ");
                }
                StringBuilder q4 = ic.q(i2);
                q4.append(this.g.get(i4));
                i2 = q4.toString();
            }
        }
        return ic.i(i2, ")");
    }

    public Transition a(d dVar) {
        if (this.r == null) {
            this.r = new ArrayList<>();
        }
        this.r.add(dVar);
        return this;
    }

    public Transition b(View view) {
        this.g.add(view);
        return this;
    }

    /* access modifiers changed from: protected */
    public void cancel() {
        for (int size = this.n.size() - 1; size >= 0; size--) {
            this.n.get(size).cancel();
        }
        ArrayList<d> arrayList = this.r;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.r.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((d) arrayList2.get(i2)).d(this);
            }
        }
    }

    public abstract void d(w wVar);

    /* access modifiers changed from: package-private */
    public void f(w wVar) {
        boolean z;
        if (this.t != null && !wVar.a.isEmpty()) {
            String[] a2 = this.t.a();
            int i2 = 0;
            while (true) {
                if (i2 >= a2.length) {
                    z = true;
                    break;
                } else if (!wVar.a.containsKey(a2[i2])) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                Objects.requireNonNull((j0) this.t);
                View view = wVar.b;
                Integer num = (Integer) wVar.a.get("android:visibility:visibility");
                if (num == null) {
                    num = Integer.valueOf(view.getVisibility());
                }
                wVar.a.put("android:visibilityPropagation:visibility", num);
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                iArr[0] = Math.round(view.getTranslationX()) + iArr[0];
                iArr[0] = (view.getWidth() / 2) + iArr[0];
                iArr[1] = Math.round(view.getTranslationY()) + iArr[1];
                iArr[1] = (view.getHeight() / 2) + iArr[1];
                wVar.a.put("android:visibilityPropagation:center", iArr);
            }
        }
    }

    public abstract void g(w wVar);

    /* access modifiers changed from: package-private */
    public void h(ViewGroup viewGroup, boolean z) {
        i(z);
        if (this.f.size() > 0 || this.g.size() > 0) {
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f.get(i2).intValue());
                if (findViewById != null) {
                    w wVar = new w(findViewById);
                    if (z) {
                        g(wVar);
                    } else {
                        d(wVar);
                    }
                    wVar.c.add(this);
                    f(wVar);
                    if (z) {
                        c(this.h, findViewById, wVar);
                    } else {
                        c(this.i, findViewById, wVar);
                    }
                }
            }
            for (int i3 = 0; i3 < this.g.size(); i3++) {
                View view = this.g.get(i3);
                w wVar2 = new w(view);
                if (z) {
                    g(wVar2);
                } else {
                    d(wVar2);
                }
                wVar2.c.add(this);
                f(wVar2);
                if (z) {
                    c(this.h, view, wVar2);
                } else {
                    c(this.i, view, wVar2);
                }
            }
            return;
        }
        e(viewGroup, z);
    }

    /* access modifiers changed from: package-private */
    public void i(boolean z) {
        if (z) {
            this.h.a.clear();
            this.h.b.clear();
            this.h.c.b();
            return;
        }
        this.i.a.clear();
        this.i.b.clear();
        this.i.c.b();
    }

    /* renamed from: j */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.s = new ArrayList<>();
            transition.h = new x();
            transition.i = new x();
            transition.l = null;
            transition.m = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator k(ViewGroup viewGroup, w wVar, w wVar2) {
        return null;
    }

    /* access modifiers changed from: protected */
    public void l(ViewGroup viewGroup, x xVar, x xVar2, ArrayList<w> arrayList, ArrayList<w> arrayList2) {
        int i2;
        int i3;
        Animator k2;
        View view;
        Animator animator;
        w wVar;
        w wVar2;
        Animator animator2;
        x<Animator, b> t2 = t();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j2 = Long.MAX_VALUE;
        int i4 = 0;
        while (i4 < size) {
            w wVar3 = arrayList.get(i4);
            w wVar4 = arrayList2.get(i4);
            if (wVar3 != null && !wVar3.c.contains(this)) {
                wVar3 = null;
            }
            if (wVar4 != null && !wVar4.c.contains(this)) {
                wVar4 = null;
            }
            if (!(wVar3 == null && wVar4 == null)) {
                if ((wVar3 == null || wVar4 == null || z(wVar3, wVar4)) && (k2 = k(viewGroup, wVar3, wVar4)) != null) {
                    if (wVar4 != null) {
                        view = wVar4.b;
                        String[] x2 = x();
                        if (x2 != null && x2.length > 0) {
                            wVar2 = new w(view);
                            i3 = size;
                            w wVar5 = xVar2.a.get(view);
                            if (wVar5 != null) {
                                int i5 = 0;
                                while (i5 < x2.length) {
                                    wVar2.a.put(x2[i5], wVar5.a.get(x2[i5]));
                                    i5++;
                                    i4 = i4;
                                    wVar5 = wVar5;
                                }
                            }
                            i2 = i4;
                            int size2 = t2.size();
                            int i6 = 0;
                            while (true) {
                                if (i6 >= size2) {
                                    animator2 = k2;
                                    break;
                                }
                                b bVar = t2.get(t2.h(i6));
                                if (bVar.c != null && bVar.a == view && bVar.b.equals(this.b) && bVar.c.equals(wVar2)) {
                                    animator2 = null;
                                    break;
                                }
                                i6++;
                            }
                        } else {
                            i3 = size;
                            i2 = i4;
                            animator2 = k2;
                            wVar2 = null;
                        }
                        animator = animator2;
                        wVar = wVar2;
                    } else {
                        i3 = size;
                        i2 = i4;
                        view = wVar3.b;
                        animator = k2;
                        wVar = null;
                    }
                    if (animator != null) {
                        u uVar = this.t;
                        if (uVar != null) {
                            long b2 = uVar.b(viewGroup, this, wVar3, wVar4);
                            sparseIntArray.put(this.s.size(), (int) b2);
                            j2 = Math.min(b2, j2);
                        }
                        String str = this.b;
                        Property<View, Float> property = b0.b;
                        t2.put(animator, new b(view, str, this, new k0(viewGroup), wVar));
                        this.s.add(animator);
                        j2 = j2;
                    }
                    i4 = i2 + 1;
                    size = i3;
                }
            }
            i3 = size;
            i2 = i4;
            i4 = i2 + 1;
            size = i3;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                Animator animator3 = this.s.get(sparseIntArray.keyAt(i7));
                animator3.setStartDelay(animator3.getStartDelay() + (((long) sparseIntArray.valueAt(i7)) - j2));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void m() {
        int i2 = this.o - 1;
        this.o = i2;
        if (i2 == 0) {
            ArrayList<d> arrayList = this.r;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.r.clone();
                int size = arrayList2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((d) arrayList2.get(i3)).c(this);
                }
            }
            for (int i4 = 0; i4 < this.h.c.m(); i4++) {
                View n2 = this.h.c.n(i4);
                if (n2 != null) {
                    int i5 = c3.g;
                    n2.setHasTransientState(false);
                }
            }
            for (int i6 = 0; i6 < this.i.c.m(); i6++) {
                View n3 = this.i.c.n(i6);
                if (n3 != null) {
                    int i7 = c3.g;
                    n3.setHasTransientState(false);
                }
            }
            this.q = true;
        }
    }

    public Rect n() {
        c cVar = this.u;
        if (cVar == null) {
            return null;
        }
        return cVar.a(this);
    }

    public c p() {
        return this.u;
    }

    public TimeInterpolator q() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public w r(View view, boolean z) {
        TransitionSet transitionSet = this.j;
        if (transitionSet != null) {
            return transitionSet.r(view, z);
        }
        ArrayList<w> arrayList = z ? this.l : this.m;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            w wVar = arrayList.get(i3);
            if (wVar == null) {
                return null;
            }
            if (wVar.b == view) {
                i2 = i3;
                break;
            }
            i3++;
        }
        if (i2 < 0) {
            return null;
        }
        return (z ? this.m : this.l).get(i2);
    }

    public PathMotion s() {
        return this.v;
    }

    public String toString() {
        return P("");
    }

    public long u() {
        return this.c;
    }

    public List<String> v() {
        return null;
    }

    public List<Class<?>> w() {
        return null;
    }

    public String[] x() {
        return null;
    }

    public w y(View view, boolean z) {
        TransitionSet transitionSet = this.j;
        if (transitionSet != null) {
            return transitionSet.y(view, z);
        }
        return (z ? this.h : this.i).a.getOrDefault(view, null);
    }

    public boolean z(w wVar, w wVar2) {
        if (wVar == null || wVar2 == null) {
            return false;
        }
        String[] x2 = x();
        if (x2 != null) {
            for (String str : x2) {
                if (!B(wVar, wVar2, str)) {
                }
            }
            return false;
        }
        for (String str2 : wVar.a.keySet()) {
            if (B(wVar, wVar2, str2)) {
            }
        }
        return false;
        return true;
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long i2 = (long) c1.i(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (i2 >= 0) {
            I(i2);
        }
        long i3 = (long) c1.i(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (i3 > 0) {
            N(i3);
        }
        int j2 = c1.j(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (j2 > 0) {
            K(AnimationUtils.loadInterpolator(context, j2));
        }
        String k2 = c1.k(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (k2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(k2, ",");
            int[] iArr = new int[stringTokenizer.countTokens()];
            int i4 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                if (FacebookAdapter.KEY_ID.equalsIgnoreCase(trim)) {
                    iArr[i4] = 3;
                } else if ("instance".equalsIgnoreCase(trim)) {
                    iArr[i4] = 1;
                } else if ("name".equalsIgnoreCase(trim)) {
                    iArr[i4] = 2;
                } else if ("itemId".equalsIgnoreCase(trim)) {
                    iArr[i4] = 4;
                } else if (trim.isEmpty()) {
                    int[] iArr2 = new int[(iArr.length - 1)];
                    System.arraycopy(iArr, 0, iArr2, 0, i4);
                    i4--;
                    iArr = iArr2;
                } else {
                    throw new InflateException(ic.j("Unknown match type in matchOrder: '", trim, "'"));
                }
                i4++;
            }
            if (iArr.length == 0) {
                this.k = w;
            } else {
                for (int i5 = 0; i5 < iArr.length; i5++) {
                    int i6 = iArr[i5];
                    if (i6 >= 1 && i6 <= 4) {
                        int i7 = iArr[i5];
                        int i8 = 0;
                        while (true) {
                            if (i8 >= i5) {
                                z = false;
                                break;
                            } else if (iArr[i8] == i7) {
                                z = true;
                                break;
                            } else {
                                i8++;
                            }
                        }
                        if (z) {
                            throw new IllegalArgumentException("matches contains a duplicate value");
                        }
                    } else {
                        throw new IllegalArgumentException("matches contains invalid value");
                    }
                }
                this.k = (int[]) iArr.clone();
            }
        }
        obtainStyledAttributes.recycle();
    }
}
