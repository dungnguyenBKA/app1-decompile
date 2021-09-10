package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public class ChangeBounds extends Transition {
    private static final String[] B = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> C = new a(PointF.class, "boundsOrigin");
    private static final Property<j, PointF> D = new b(PointF.class, "topLeft");
    private static final Property<j, PointF> E = new c(PointF.class, "bottomRight");
    private static final Property<View, PointF> F = new d(PointF.class, "bottomRight");
    private static final Property<View, PointF> G = new e(PointF.class, "topLeft");
    private static final Property<View, PointF> H = new f(PointF.class, "position");
    private static m I = new m();
    private boolean A;
    private int[] z;

    static class a extends Property<Drawable, PointF> {
        private Rect a = new Rect();

        a(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.a);
            Rect rect = this.a;
            return new PointF((float) rect.left, (float) rect.top);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.a);
            this.a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.a);
        }
    }

    static class b extends Property<j, PointF> {
        b(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(j jVar) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(j jVar, PointF pointF) {
            jVar.b(pointF);
        }
    }

    static class c extends Property<j, PointF> {
        c(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(j jVar) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(j jVar, PointF pointF) {
            jVar.a(pointF);
        }
    }

    static class d extends Property<View, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            b0.e(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            b0.e(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            b0.e(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    class g extends AnimatorListenerAdapter {
        final /* synthetic */ j a;
        private j mViewBounds;

        g(ChangeBounds changeBounds, j jVar) {
            this.a = jVar;
            this.mViewBounds = jVar;
        }
    }

    class h extends AnimatorListenerAdapter {
        private boolean a;
        final /* synthetic */ View b;
        final /* synthetic */ Rect c;
        final /* synthetic */ int d;
        final /* synthetic */ int e;
        final /* synthetic */ int f;
        final /* synthetic */ int g;

        h(ChangeBounds changeBounds, View view, Rect rect, int i, int i2, int i3, int i4) {
            this.b = view;
            this.c = rect;
            this.d = i;
            this.e = i2;
            this.f = i3;
            this.g = i4;
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                View view = this.b;
                Rect rect = this.c;
                int i = c3.g;
                view.setClipBounds(rect);
                b0.e(this.b, this.d, this.e, this.f, this.g);
            }
        }
    }

    class i extends s {
        boolean a = false;
        final /* synthetic */ ViewGroup b;

        i(ChangeBounds changeBounds, ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // androidx.transition.s, androidx.transition.Transition.d
        public void b(Transition transition) {
            a0.b(this.b, false);
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            if (!this.a) {
                a0.b(this.b, false);
            }
            transition.E(this);
        }

        @Override // androidx.transition.s, androidx.transition.Transition.d
        public void d(Transition transition) {
            a0.b(this.b, false);
            this.a = true;
        }

        @Override // androidx.transition.s, androidx.transition.Transition.d
        public void e(Transition transition) {
            a0.b(this.b, true);
        }
    }

    private static class j {
        private int a;
        private int b;
        private int c;
        private int d;
        private View e;
        private int f;
        private int g;

        j(View view) {
            this.e = view;
        }

        /* access modifiers changed from: package-private */
        public void a(PointF pointF) {
            this.c = Math.round(pointF.x);
            int round = Math.round(pointF.y);
            this.d = round;
            int i = this.g + 1;
            this.g = i;
            if (this.f == i) {
                b0.e(this.e, this.a, this.b, this.c, round);
                this.f = 0;
                this.g = 0;
            }
        }

        /* access modifiers changed from: package-private */
        public void b(PointF pointF) {
            this.a = Math.round(pointF.x);
            int round = Math.round(pointF.y);
            this.b = round;
            int i = this.f + 1;
            this.f = i;
            if (i == this.g) {
                b0.e(this.e, this.a, round, this.c, this.d);
                this.f = 0;
                this.g = 0;
            }
        }
    }

    public ChangeBounds() {
        this.z = new int[2];
        this.A = false;
    }

    private void Q(w wVar) {
        View view = wVar.b;
        int i2 = c3.g;
        if (view.isLaidOut() || view.getWidth() != 0 || view.getHeight() != 0) {
            wVar.a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            wVar.a.put("android:changeBounds:parent", wVar.b.getParent());
            if (this.A) {
                wVar.a.put("android:changeBounds:clip", view.getClipBounds());
            }
        }
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
        int i2;
        boolean z2;
        View view;
        Animator animator;
        ObjectAnimator objectAnimator;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator2;
        if (wVar == null || wVar2 == null) {
            return null;
        }
        Map<String, Object> map = wVar.a;
        Map<String, Object> map2 = wVar2.a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = wVar2.b;
        Rect rect2 = (Rect) wVar.a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) wVar2.a.get("android:changeBounds:bounds");
        int i4 = rect2.left;
        int i5 = rect3.left;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect2.right;
        int i9 = rect3.right;
        int i10 = rect2.bottom;
        int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) wVar.a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) wVar2.a.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (!(i8 == i9 && i10 == i11)) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (!this.A) {
            view = view2;
            b0.e(view, i4, i6, i8, i10);
            if (i2 == 2) {
                if (i12 == i14 && i13 == i15) {
                    animator = a.c(view, H, s().a((float) i4, (float) i6, (float) i5, (float) i7));
                } else {
                    j jVar = new j(view);
                    ObjectAnimator c2 = a.c(jVar, D, s().a((float) i4, (float) i6, (float) i5, (float) i7));
                    ObjectAnimator c3 = a.c(jVar, E, s().a((float) i8, (float) i10, (float) i9, (float) i11));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(c2, c3);
                    animatorSet.addListener(new g(this, jVar));
                    animator = animatorSet;
                }
            } else if (i4 == i5 && i6 == i7) {
                animator = a.c(view, F, s().a((float) i8, (float) i10, (float) i9, (float) i11));
            } else {
                animator = a.c(view, G, s().a((float) i4, (float) i6, (float) i5, (float) i7));
            }
            z2 = true;
        } else {
            view = view2;
            b0.e(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            if (i4 == i5 && i6 == i7) {
                objectAnimator = null;
            } else {
                objectAnimator = a.c(view, H, s().a((float) i4, (float) i6, (float) i5, (float) i7));
            }
            if (rect4 == 0) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
            if (!rect.equals(rect6)) {
                int i16 = c3.g;
                view.setClipBounds(rect);
                m mVar = I;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", mVar, objArr);
                z2 = true;
                ofObject.addListener(new h(this, view, rect5, i5, i7, i9, i11));
                objectAnimator2 = ofObject;
            } else {
                z2 = true;
                objectAnimator2 = null;
            }
            animator = v.b(objectAnimator, objectAnimator2);
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            a0.b(viewGroup4, z2);
            a(new i(this, viewGroup4));
        }
        return animator;
    }

    @Override // androidx.transition.Transition
    public String[] x() {
        return B;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.z = new int[2];
        this.A = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.b);
        boolean f2 = c1.f(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        this.A = f2;
    }
}
