package androidx.fragment.app;

import android.view.animation.Interpolator;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.h;
import androidx.fragment.app.m;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class a extends m implements h.AbstractC0013h {
    final h r;
    boolean s;
    int t = -1;

    public a(h hVar) {
        this.r = hVar;
    }

    private static boolean u(m.a aVar) {
        Fragment fragment = aVar.b;
        if (fragment == null || !fragment.k || fragment.E == null || fragment.z || fragment.y) {
            return false;
        }
        Fragment.b bVar = fragment.I;
        return false;
    }

    @Override // androidx.fragment.app.h.AbstractC0013h
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        Interpolator interpolator = h.H;
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.h) {
            return true;
        }
        h hVar = this.r;
        if (hVar.i == null) {
            hVar.i = new ArrayList<>();
        }
        hVar.i.add(this);
        return true;
    }

    @Override // androidx.fragment.app.m
    public int f() {
        return o(false);
    }

    @Override // androidx.fragment.app.m
    public int g() {
        return o(true);
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.fragment.app.m
    public void h(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder q = ic.q("Fragment ");
            q.append(cls.getCanonicalName());
            q.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(q.toString());
        }
        if (str != null) {
            String str2 = fragment.x;
            if (str2 == null || str.equals(str2)) {
                fragment.x = str;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(ic.n(sb, fragment.x, " now ", str));
            }
        }
        if (i != 0) {
            if (i != -1) {
                int i3 = fragment.v;
                if (i3 == 0 || i3 == i) {
                    fragment.v = i;
                    fragment.w = i;
                } else {
                    throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.v + " now " + i);
                }
            } else {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
        }
        d(new m.a(i2, fragment));
        fragment.r = this.r;
    }

    @Override // androidx.fragment.app.m
    public m i(Fragment fragment) {
        h hVar = fragment.r;
        if (hVar == null || hVar == this.r) {
            d(new m.a(4, fragment));
            return this;
        }
        StringBuilder q = ic.q("Cannot hide Fragment attached to a different FragmentManager. Fragment ");
        q.append(fragment.toString());
        q.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(q.toString());
    }

    @Override // androidx.fragment.app.m
    public m j(Fragment fragment) {
        h hVar = fragment.r;
        if (hVar == null || hVar == this.r) {
            d(new m.a(3, fragment));
            return this;
        }
        StringBuilder q = ic.q("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        q.append(fragment.toString());
        q.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(q.toString());
    }

    @Override // androidx.fragment.app.m
    public m m(Fragment fragment) {
        h hVar = fragment.r;
        if (hVar == null || hVar == this.r) {
            d(new m.a(5, fragment));
            return this;
        }
        StringBuilder q = ic.q("Cannot show Fragment attached to a different FragmentManager. Fragment ");
        q.append(fragment.toString());
        q.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(q.toString());
    }

    /* access modifiers changed from: package-private */
    public void n(int i) {
        if (this.h) {
            Interpolator interpolator = h.H;
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = this.a.get(i2).b;
                if (fragment != null) {
                    fragment.q += i;
                    Interpolator interpolator2 = h.H;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public int o(boolean z) {
        int i;
        if (!this.s) {
            Interpolator interpolator = h.H;
            this.s = true;
            if (this.h) {
                h hVar = this.r;
                synchronized (hVar) {
                    ArrayList<Integer> arrayList = hVar.n;
                    if (arrayList != null) {
                        if (arrayList.size() > 0) {
                            ArrayList<Integer> arrayList2 = hVar.n;
                            i = arrayList2.remove(arrayList2.size() - 1).intValue();
                            hVar.m.set(i, this);
                        }
                    }
                    if (hVar.m == null) {
                        hVar.m = new ArrayList<>();
                    }
                    i = hVar.m.size();
                    hVar.m.add(this);
                }
                this.t = i;
            } else {
                this.t = -1;
            }
            this.r.Z(this, z);
            return this.t;
        }
        throw new IllegalStateException("commit already called");
    }

    public void p(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.j);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (!(this.b == 0 && this.c == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.c));
            }
            if (!(this.d == 0 && this.e == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (!(this.k == 0 && this.l == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.l);
            }
            if (!(this.m == 0 && this.n == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.n);
            }
        }
        if (!this.a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                m.a aVar = this.a.get(i);
                switch (aVar.a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        StringBuilder q = ic.q("cmd=");
                        q.append(aVar.a);
                        str2 = q.toString();
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.b);
                if (z) {
                    if (!(aVar.c == 0 && aVar.d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.d));
                    }
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void q() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            m.a aVar = this.a.get(i);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                fragment.f1(this.f, this.g);
            }
            switch (aVar.a) {
                case 1:
                    fragment.e1(aVar.c);
                    this.r.k(fragment, false);
                    break;
                case 2:
                default:
                    StringBuilder q = ic.q("Unknown cmd: ");
                    q.append(aVar.a);
                    throw new IllegalArgumentException(q.toString());
                case 3:
                    fragment.e1(aVar.d);
                    this.r.u0(fragment);
                    break;
                case 4:
                    fragment.e1(aVar.d);
                    Objects.requireNonNull(this.r);
                    if (!fragment.y) {
                        fragment.y = true;
                        fragment.K = !fragment.K;
                        break;
                    }
                    break;
                case 5:
                    fragment.e1(aVar.c);
                    Objects.requireNonNull(this.r);
                    if (fragment.y) {
                        fragment.y = false;
                        fragment.K = !fragment.K;
                        break;
                    }
                    break;
                case 6:
                    fragment.e1(aVar.d);
                    this.r.q(fragment);
                    break;
                case 7:
                    fragment.e1(aVar.c);
                    this.r.m(fragment);
                    break;
                case 8:
                    this.r.B0(fragment);
                    break;
                case 9:
                    this.r.B0(null);
                    break;
                case 10:
                    this.r.A0(fragment, aVar.h);
                    break;
            }
            if (!(this.q || aVar.a == 1 || fragment == null)) {
                this.r.p0(fragment);
            }
        }
        if (!this.q) {
            h hVar = this.r;
            hVar.q0(hVar.p, true);
        }
    }

    /* access modifiers changed from: package-private */
    public void r(boolean z) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            m.a aVar = this.a.get(size);
            Fragment fragment = aVar.b;
            if (fragment != null) {
                int i = this.f;
                Interpolator interpolator = h.H;
                int i2 = 8194;
                if (i != 4097) {
                    i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
                }
                fragment.f1(i2, this.g);
            }
            switch (aVar.a) {
                case 1:
                    fragment.e1(aVar.f);
                    this.r.u0(fragment);
                    break;
                case 2:
                default:
                    StringBuilder q = ic.q("Unknown cmd: ");
                    q.append(aVar.a);
                    throw new IllegalArgumentException(q.toString());
                case 3:
                    fragment.e1(aVar.e);
                    this.r.k(fragment, false);
                    break;
                case 4:
                    fragment.e1(aVar.e);
                    Objects.requireNonNull(this.r);
                    if (fragment.y) {
                        fragment.y = false;
                        fragment.K = !fragment.K;
                        break;
                    }
                    break;
                case 5:
                    fragment.e1(aVar.f);
                    Objects.requireNonNull(this.r);
                    if (!fragment.y) {
                        fragment.y = true;
                        fragment.K = !fragment.K;
                        break;
                    }
                    break;
                case 6:
                    fragment.e1(aVar.e);
                    this.r.m(fragment);
                    break;
                case 7:
                    fragment.e1(aVar.f);
                    this.r.q(fragment);
                    break;
                case 8:
                    this.r.B0(null);
                    break;
                case 9:
                    this.r.B0(fragment);
                    break;
                case 10:
                    this.r.A0(fragment, aVar.g);
                    break;
            }
            if (!(this.q || aVar.a == 3 || fragment == null)) {
                this.r.p0(fragment);
            }
        }
        if (!this.q && z) {
            h hVar = this.r;
            hVar.q0(hVar.p, true);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean s(int i) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.a.get(i2).b;
            int i3 = fragment != null ? fragment.w : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public boolean t(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.a.get(i4).b;
            int i5 = fragment != null ? fragment.w : 0;
            if (!(i5 == 0 || i5 == i3)) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar = arrayList.get(i6);
                    int size2 = aVar.a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = aVar.a.get(i7).b;
                        if ((fragment2 != null ? fragment2.w : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.j != null) {
            sb.append(" ");
            sb.append(this.j);
        }
        sb.append("}");
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    public boolean v() {
        for (int i = 0; i < this.a.size(); i++) {
            if (u(this.a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void w(Fragment.d dVar) {
        for (int i = 0; i < this.a.size(); i++) {
            m.a aVar = this.a.get(i);
            if (u(aVar)) {
                aVar.b.g1(dVar);
            }
        }
    }
}
