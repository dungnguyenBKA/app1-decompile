package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vungle.warren.error.VungleException;
import defpackage.t3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: s3  reason: default package */
public abstract class s3 extends n2 {
    private static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION);
    private static final t3.a<n3> o = new a();
    private static final t3.b<f0<n3>, n3> p = new b();
    private final Rect d = new Rect();
    private final Rect e = new Rect();
    private final Rect f = new Rect();
    private final int[] g = new int[2];
    private final AccessibilityManager h;
    private final View i;
    private c j;
    int k = RecyclerView.UNDEFINED_DURATION;
    int l = RecyclerView.UNDEFINED_DURATION;
    private int m = RecyclerView.UNDEFINED_DURATION;

    /* access modifiers changed from: package-private */
    /* renamed from: s3$a */
    public static class a implements t3.a<n3> {
        a() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: s3$b */
    public static class b implements t3.b<f0<n3>, n3> {
        b() {
        }
    }

    /* renamed from: s3$c */
    private class c extends o3 {
        c() {
        }

        @Override // defpackage.o3
        public n3 a(int i) {
            return n3.G(s3.this.u(i));
        }

        @Override // defpackage.o3
        public n3 b(int i) {
            int i2 = i == 2 ? s3.this.k : s3.this.l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return n3.G(s3.this.u(i2));
        }

        @Override // defpackage.o3
        public boolean d(int i, int i2, Bundle bundle) {
            return s3.this.A(i, i2, bundle);
        }
    }

    public s3(View view) {
        if (view != null) {
            this.i = view;
            this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            int i2 = c3.g;
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private void D(int i2) {
        int i3 = this.m;
        if (i3 != i2) {
            this.m = i2;
            C(i2, 128);
            C(i3, 256);
        }
    }

    private boolean k(int i2) {
        if (this.k != i2) {
            return false;
        }
        this.k = RecyclerView.UNDEFINED_DURATION;
        this.i.invalidate();
        C(i2, 65536);
        return true;
    }

    private n3 m(int i2) {
        n3 E = n3.E();
        E.X(true);
        E.Z(true);
        E.R("android.view.View");
        Rect rect = n;
        E.M(rect);
        E.N(rect);
        E.h0(this.i);
        y(i2, E);
        if (E.r() == null && E.n() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        E.i(this.e);
        if (!this.e.equals(rect)) {
            int h2 = E.h();
            if ((h2 & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((h2 & 128) == 0) {
                E.f0(this.i.getContext().getPackageName());
                E.o0(this.i, i2);
                boolean z = false;
                if (this.k == i2) {
                    E.K(true);
                    E.a(128);
                } else {
                    E.K(false);
                    E.a(64);
                }
                boolean z2 = this.l == i2;
                if (z2) {
                    E.a(2);
                } else if (E.w()) {
                    E.a(1);
                }
                E.a0(z2);
                this.i.getLocationOnScreen(this.g);
                E.j(this.d);
                if (this.d.equals(rect)) {
                    E.i(this.d);
                    if (E.b != -1) {
                        n3 E2 = n3.E();
                        for (int i3 = E.b; i3 != -1; i3 = E2.b) {
                            E2.i0(this.i, -1);
                            E2.M(n);
                            y(i3, E2);
                            E2.i(this.e);
                            Rect rect2 = this.d;
                            Rect rect3 = this.e;
                            rect2.offset(rect3.left, rect3.top);
                        }
                        E2.I();
                    }
                    this.d.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
                }
                if (this.i.getLocalVisibleRect(this.f)) {
                    this.f.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
                    if (this.d.intersect(this.f)) {
                        E.N(this.d);
                        Rect rect4 = this.d;
                        if (rect4 != null && !rect4.isEmpty() && this.i.getWindowVisibility() == 0) {
                            ViewParent parent = this.i.getParent();
                            while (true) {
                                if (parent instanceof View) {
                                    View view = (View) parent;
                                    if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                        break;
                                    }
                                    parent = view.getParent();
                                } else if (parent != null) {
                                    z = true;
                                }
                            }
                        }
                        if (z) {
                            E.q0(true);
                        }
                    }
                }
                return E;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    private boolean t(int i2, Rect rect) {
        n3 n3Var;
        ArrayList arrayList = new ArrayList();
        s(arrayList);
        f0 f0Var = new f0(10);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            f0Var.j(i3, m(i3));
        }
        int i4 = this.l;
        Object obj = null;
        int i5 = RecyclerView.UNDEFINED_DURATION;
        n3 n3Var2 = i4 == Integer.MIN_VALUE ? null : (n3) f0Var.e(i4);
        int i6 = -1;
        if (i2 == 1 || i2 == 2) {
            View view = this.i;
            int i7 = c3.g;
            boolean z = view.getLayoutDirection() == 1;
            t3.b<f0<n3>, n3> bVar = p;
            t3.a<n3> aVar = o;
            Objects.requireNonNull((b) bVar);
            int l2 = f0Var.l();
            ArrayList arrayList2 = new ArrayList(l2);
            for (int i8 = 0; i8 < l2; i8++) {
                arrayList2.add((n3) f0Var.m(i8));
            }
            Collections.sort(arrayList2, new t3.c(z, aVar));
            if (i2 == 1) {
                int size = arrayList2.size();
                if (n3Var2 != null) {
                    size = arrayList2.indexOf(n3Var2);
                }
                int i9 = size - 1;
                if (i9 >= 0) {
                    obj = arrayList2.get(i9);
                }
            } else if (i2 == 2) {
                int size2 = arrayList2.size();
                if (n3Var2 != null) {
                    i6 = arrayList2.lastIndexOf(n3Var2);
                }
                int i10 = i6 + 1;
                if (i10 < size2) {
                    obj = arrayList2.get(i10);
                }
            } else {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
            }
            n3Var = (n3) obj;
        } else if (i2 == 17 || i2 == 33 || i2 == 66 || i2 == 130) {
            Rect rect2 = new Rect();
            int i11 = this.l;
            if (i11 != Integer.MIN_VALUE) {
                u(i11).i(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                View view2 = this.i;
                int width = view2.getWidth();
                int height = view2.getHeight();
                if (i2 == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i2 == 33) {
                    rect2.set(0, height, width, height);
                } else if (i2 == 66) {
                    rect2.set(-1, 0, -1, height);
                } else if (i2 == 130) {
                    rect2.set(0, -1, width, -1);
                } else {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
            }
            n3Var = (n3) t3.c(f0Var, p, o, n3Var2, rect2, i2);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        if (n3Var != null) {
            i5 = f0Var.i(f0Var.h(n3Var));
        }
        return B(i5);
    }

    /* access modifiers changed from: package-private */
    public boolean A(int i2, int i3, Bundle bundle) {
        int i4;
        if (i2 != -1) {
            boolean z = true;
            if (i3 == 1) {
                return B(i2);
            }
            if (i3 == 2) {
                return l(i2);
            }
            if (i3 == 64) {
                if (!this.h.isEnabled() || !this.h.isTouchExplorationEnabled() || (i4 = this.k) == i2) {
                    z = false;
                } else {
                    if (i4 != Integer.MIN_VALUE) {
                        k(i4);
                    }
                    this.k = i2;
                    this.i.invalidate();
                    C(i2, 32768);
                }
                return z;
            } else if (i3 != 128) {
                return w(i2, i3, bundle);
            } else {
                return k(i2);
            }
        } else {
            View view = this.i;
            int i5 = c3.g;
            return view.performAccessibilityAction(i3, bundle);
        }
    }

    public final boolean B(int i2) {
        int i3;
        if ((!this.i.isFocused() && !this.i.requestFocus()) || (i3 = this.l) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            l(i3);
        }
        this.l = i2;
        z(i2, true);
        C(i2, 8);
        return true;
    }

    public final boolean C(int i2, int i3) {
        ViewParent parent;
        AccessibilityEvent accessibilityEvent;
        if (i2 == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = this.i.getParent()) == null) {
            return false;
        }
        if (i2 != -1) {
            accessibilityEvent = AccessibilityEvent.obtain(i3);
            n3 u = u(i2);
            accessibilityEvent.getText().add(u.r());
            accessibilityEvent.setContentDescription(u.n());
            accessibilityEvent.setScrollable(u.A());
            accessibilityEvent.setPassword(u.z());
            accessibilityEvent.setEnabled(u.v());
            accessibilityEvent.setChecked(u.t());
            if (!accessibilityEvent.getText().isEmpty() || accessibilityEvent.getContentDescription() != null) {
                accessibilityEvent.setClassName(u.l());
                accessibilityEvent.setSource(this.i, i2);
                accessibilityEvent.setPackageName(this.i.getContext().getPackageName());
            } else {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
        } else {
            accessibilityEvent = AccessibilityEvent.obtain(i3);
            this.i.onInitializeAccessibilityEvent(accessibilityEvent);
        }
        return parent.requestSendAccessibilityEvent(this.i, accessibilityEvent);
    }

    @Override // defpackage.n2
    public o3 b(View view) {
        if (this.j == null) {
            this.j = new c();
        }
        return this.j;
    }

    @Override // defpackage.n2
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
    }

    @Override // defpackage.n2
    public void e(View view, n3 n3Var) {
        super.e(view, n3Var);
        x(n3Var);
    }

    public final boolean l(int i2) {
        if (this.l != i2) {
            return false;
        }
        this.l = RecyclerView.UNDEFINED_DURATION;
        z(i2, false);
        C(i2, 8);
        return true;
    }

    public final boolean n(MotionEvent motionEvent) {
        int i2;
        if (this.h.isEnabled() && this.h.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                int r = r(motionEvent.getX(), motionEvent.getY());
                int i3 = this.m;
                if (i3 != r) {
                    this.m = r;
                    C(r, 128);
                    C(i3, 256);
                }
                if (r != Integer.MIN_VALUE) {
                    return true;
                }
            } else if (action != 10 || (i2 = this.m) == Integer.MIN_VALUE) {
                return false;
            } else {
                if (i2 != Integer.MIN_VALUE) {
                    this.m = RecyclerView.UNDEFINED_DURATION;
                    C(RecyclerView.UNDEFINED_DURATION, 128);
                    C(i2, 256);
                }
                return true;
            }
        }
        return false;
    }

    public final boolean o(KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            int i3 = 66;
            if (keyCode != 66) {
                switch (keyCode) {
                    case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS:
                    case 20:
                    case VungleException.SERVER_ERROR:
                    case VungleException.SERVER_TEMPORARY_UNAVAILABLE:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        if (keyCode == 19) {
                            i3 = 33;
                        } else if (keyCode == 21) {
                            i3 = 17;
                        } else if (keyCode != 22) {
                            i3 = 130;
                        }
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z = false;
                        while (i2 < repeatCount && t(i3, null)) {
                            i2++;
                            z = true;
                        }
                        return z;
                    case VungleException.ASSET_DOWNLOAD_RECOVERABLE:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            int i4 = this.l;
            if (i4 != Integer.MIN_VALUE) {
                w(i4, 16, null);
            }
            return true;
        } else if (keyEvent.hasNoModifiers()) {
            return t(2, null);
        } else {
            if (keyEvent.hasModifiers(1)) {
                return t(1, null);
            }
            return false;
        }
    }

    public final int p() {
        return this.k;
    }

    public final int q() {
        return this.l;
    }

    /* access modifiers changed from: protected */
    public abstract int r(float f2, float f3);

    /* access modifiers changed from: protected */
    public abstract void s(List<Integer> list);

    /* access modifiers changed from: package-private */
    public n3 u(int i2) {
        if (i2 != -1) {
            return m(i2);
        }
        n3 F = n3.F(this.i);
        View view = this.i;
        int i3 = c3.g;
        view.onInitializeAccessibilityNodeInfo(F.r0());
        ArrayList arrayList = new ArrayList();
        s(arrayList);
        if (F.k() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                F.d(this.i, ((Integer) arrayList.get(i4)).intValue());
            }
            return F;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    public final void v(boolean z, int i2, Rect rect) {
        int i3 = this.l;
        if (i3 != Integer.MIN_VALUE) {
            l(i3);
        }
        if (z) {
            t(i2, rect);
        }
    }

    /* access modifiers changed from: protected */
    public abstract boolean w(int i2, int i3, Bundle bundle);

    /* access modifiers changed from: protected */
    public void x(n3 n3Var) {
    }

    /* access modifiers changed from: protected */
    public abstract void y(int i2, n3 n3Var);

    /* access modifiers changed from: protected */
    public void z(int i2, boolean z) {
    }
}
