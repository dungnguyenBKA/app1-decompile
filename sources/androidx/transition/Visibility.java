package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;

public abstract class Visibility extends Transition {
    private static final String[] A = {"android:visibility:visibility", "android:visibility:parent"};
    private int z = 3;

    /* access modifiers changed from: private */
    public static class a extends AnimatorListenerAdapter implements Transition.d {
        private final View a;
        private final int b;
        private final ViewGroup c;
        private final boolean d;
        private boolean e;
        boolean f = false;

        a(View view, int i, boolean z) {
            this.a = view;
            this.b = i;
            this.c = (ViewGroup) view.getParent();
            this.d = z;
            g(true);
        }

        private void f() {
            if (!this.f) {
                b0.g(this.a, this.b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        private void g(boolean z) {
            ViewGroup viewGroup;
            if (this.d && this.e != z && (viewGroup = this.c) != null) {
                this.e = z;
                a0.b(viewGroup, z);
            }
        }

        @Override // androidx.transition.Transition.d
        public void a(Transition transition) {
        }

        @Override // androidx.transition.Transition.d
        public void b(Transition transition) {
            g(false);
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            f();
            transition.E(this);
        }

        @Override // androidx.transition.Transition.d
        public void d(Transition transition) {
        }

        @Override // androidx.transition.Transition.d
        public void e(Transition transition) {
            g(true);
        }

        public void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        public void onAnimationEnd(Animator animator) {
            f();
        }

        public void onAnimationPause(Animator animator) {
            if (!this.f) {
                b0.g(this.a, this.b);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationResume(Animator animator) {
            if (!this.f) {
                b0.g(this.a, 0);
            }
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    /* access modifiers changed from: private */
    public static class b {
        boolean a;
        boolean b;
        int c;
        int d;
        ViewGroup e;
        ViewGroup f;

        b() {
        }
    }

    public Visibility() {
    }

    private void Q(w wVar) {
        wVar.a.put("android:visibility:visibility", Integer.valueOf(wVar.b.getVisibility()));
        wVar.a.put("android:visibility:parent", wVar.b.getParent());
        int[] iArr = new int[2];
        wVar.b.getLocationOnScreen(iArr);
        wVar.a.put("android:visibility:screenLocation", iArr);
    }

    private b S(w wVar, w wVar2) {
        b bVar = new b();
        bVar.a = false;
        bVar.b = false;
        if (wVar == null || !wVar.a.containsKey("android:visibility:visibility")) {
            bVar.c = -1;
            bVar.e = null;
        } else {
            bVar.c = ((Integer) wVar.a.get("android:visibility:visibility")).intValue();
            bVar.e = (ViewGroup) wVar.a.get("android:visibility:parent");
        }
        if (wVar2 == null || !wVar2.a.containsKey("android:visibility:visibility")) {
            bVar.d = -1;
            bVar.f = null;
        } else {
            bVar.d = ((Integer) wVar2.a.get("android:visibility:visibility")).intValue();
            bVar.f = (ViewGroup) wVar2.a.get("android:visibility:parent");
        }
        if (wVar != null && wVar2 != null) {
            int i = bVar.c;
            int i2 = bVar.d;
            if (i == i2 && bVar.e == bVar.f) {
                return bVar;
            }
            if (i != i2) {
                if (i == 0) {
                    bVar.b = false;
                    bVar.a = true;
                } else if (i2 == 0) {
                    bVar.b = true;
                    bVar.a = true;
                }
            } else if (bVar.f == null) {
                bVar.b = false;
                bVar.a = true;
            } else if (bVar.e == null) {
                bVar.b = true;
                bVar.a = true;
            }
        } else if (wVar == null && bVar.d == 0) {
            bVar.b = true;
            bVar.a = true;
        } else if (wVar2 == null && bVar.c == 0) {
            bVar.b = false;
            bVar.a = true;
        }
        return bVar;
    }

    public int R() {
        return this.z;
    }

    public Animator T(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    public Animator U(ViewGroup viewGroup, w wVar, w wVar2) {
        if ((this.z & 1) != 1 || wVar2 == null) {
            return null;
        }
        if (wVar == null) {
            View view = (View) wVar2.b.getParent();
            if (S(r(view, false), y(view, false)).a) {
                return null;
            }
        }
        return T(viewGroup, wVar2.b, wVar, wVar2);
    }

    public Animator V(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x004b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator W(android.view.ViewGroup r18, androidx.transition.w r19, androidx.transition.w r20, int r21) {
        /*
        // Method dump skipped, instructions count: 260
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.W(android.view.ViewGroup, androidx.transition.w, androidx.transition.w, int):android.animation.Animator");
    }

    public void X(int i) {
        if ((i & -4) == 0) {
            this.z = i;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // androidx.transition.Transition
    public void d(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public void g(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public Animator k(ViewGroup viewGroup, w wVar, w wVar2) {
        b S = S(wVar, wVar2);
        if (!S.a) {
            return null;
        }
        if (S.e == null && S.f == null) {
            return null;
        }
        if (S.b) {
            return U(viewGroup, wVar, wVar2);
        }
        return W(viewGroup, wVar, wVar2, S.d);
    }

    @Override // androidx.transition.Transition
    public String[] x() {
        return A;
    }

    @Override // androidx.transition.Transition
    public boolean z(w wVar, w wVar2) {
        if (wVar == null && wVar2 == null) {
            return false;
        }
        if (wVar != null && wVar2 != null && wVar2.a.containsKey("android:visibility:visibility") != wVar.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b S = S(wVar, wVar2);
        if (!S.a) {
            return false;
        }
        if (S.c == 0 || S.d == 0) {
            return true;
        }
        return false;
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.c);
        int i = c1.i(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (i != 0) {
            X(i);
        }
    }
}
