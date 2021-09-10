package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import org.xmlpull.v1.XmlPullParser;

public class Slide extends Visibility {
    private static final TimeInterpolator C = new DecelerateInterpolator();
    private static final TimeInterpolator D = new AccelerateInterpolator();
    private static final g E = new a();
    private static final g F = new b();
    private static final g G = new c();
    private static final g H = new d();
    private static final g I = new e();
    private static final g J = new f();
    private g B = J;

    static class a extends h {
        a() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - ((float) viewGroup.getWidth());
        }
    }

    static class b extends h {
        b() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float b(ViewGroup viewGroup, View view) {
            int i = c3.g;
            boolean z = true;
            if (viewGroup.getLayoutDirection() != 1) {
                z = false;
            }
            if (z) {
                return view.getTranslationX() + ((float) viewGroup.getWidth());
            }
            return view.getTranslationX() - ((float) viewGroup.getWidth());
        }
    }

    static class c extends i {
        c() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - ((float) viewGroup.getHeight());
        }
    }

    static class d extends h {
        d() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + ((float) viewGroup.getWidth());
        }
    }

    static class e extends h {
        e() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float b(ViewGroup viewGroup, View view) {
            int i = c3.g;
            boolean z = true;
            if (viewGroup.getLayoutDirection() != 1) {
                z = false;
            }
            if (z) {
                return view.getTranslationX() - ((float) viewGroup.getWidth());
            }
            return view.getTranslationX() + ((float) viewGroup.getWidth());
        }
    }

    static class f extends i {
        f() {
            super(null);
        }

        @Override // androidx.transition.Slide.g
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + ((float) viewGroup.getHeight());
        }
    }

    /* access modifiers changed from: private */
    public interface g {
        float a(ViewGroup viewGroup, View view);

        float b(ViewGroup viewGroup, View view);
    }

    private static abstract class h implements g {
        h(a aVar) {
        }

        @Override // androidx.transition.Slide.g
        public float a(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    private static abstract class i implements g {
        i(a aVar) {
        }

        @Override // androidx.transition.Slide.g
        public float b(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public Slide() {
        Y(80);
    }

    @Override // androidx.transition.Visibility
    public Animator T(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        int[] iArr = (int[]) wVar2.a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return a.a(view, wVar2, iArr[0], iArr[1], this.B.b(viewGroup, view), this.B.a(viewGroup, view), translationX, translationY, C, this);
    }

    @Override // androidx.transition.Visibility
    public Animator V(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        int[] iArr = (int[]) wVar.a.get("android:slide:screenPosition");
        return a.a(view, wVar, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.B.b(viewGroup, view), this.B.a(viewGroup, view), D, this);
    }

    public void Y(int i2) {
        if (i2 == 3) {
            this.B = E;
        } else if (i2 == 5) {
            this.B = H;
        } else if (i2 == 48) {
            this.B = G;
        } else if (i2 == 80) {
            this.B = J;
        } else if (i2 == 8388611) {
            this.B = F;
        } else if (i2 == 8388613) {
            this.B = I;
        } else {
            throw new IllegalArgumentException("Invalid slide direction");
        }
        o oVar = new o();
        oVar.g(i2);
        this.t = oVar;
    }

    @Override // androidx.transition.Transition, androidx.transition.Visibility
    public void d(w wVar) {
        super.d(wVar);
        int[] iArr = new int[2];
        wVar.b.getLocationOnScreen(iArr);
        wVar.a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Transition, androidx.transition.Visibility
    public void g(w wVar) {
        super.g(wVar);
        int[] iArr = new int[2];
        wVar.b.getLocationOnScreen(iArr);
        wVar.a.put("android:slide:screenPosition", iArr);
    }

    @SuppressLint({"RestrictedApi"})
    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.f);
        int i2 = c1.i(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        Y(i2);
    }
}
