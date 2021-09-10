package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.transition.Transition;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class y extends AnimatorListenerAdapter implements Transition.d {
    private final View a;
    private final View b;
    private final int c;
    private final int d;
    private int[] e;
    private float f;
    private float g;
    private final float h;
    private final float i;

    y(View view, View view2, int i2, int i3, float f2, float f3) {
        this.b = view;
        this.a = view2;
        this.c = i2 - Math.round(view.getTranslationX());
        this.d = i3 - Math.round(view.getTranslationY());
        this.h = f2;
        this.i = f3;
        int[] iArr = (int[]) view2.getTag(R.id.so);
        this.e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.so, null);
        }
    }

    @Override // androidx.transition.Transition.d
    public void a(Transition transition) {
    }

    @Override // androidx.transition.Transition.d
    public void b(Transition transition) {
    }

    @Override // androidx.transition.Transition.d
    public void c(Transition transition) {
        this.b.setTranslationX(this.h);
        this.b.setTranslationY(this.i);
        transition.E(this);
    }

    @Override // androidx.transition.Transition.d
    public void d(Transition transition) {
    }

    @Override // androidx.transition.Transition.d
    public void e(Transition transition) {
    }

    public void onAnimationCancel(Animator animator) {
        if (this.e == null) {
            this.e = new int[2];
        }
        this.e[0] = Math.round(this.b.getTranslationX() + ((float) this.c));
        this.e[1] = Math.round(this.b.getTranslationY() + ((float) this.d));
        this.a.setTag(R.id.so, this.e);
    }

    public void onAnimationPause(Animator animator) {
        this.f = this.b.getTranslationX();
        this.g = this.b.getTranslationY();
        this.b.setTranslationX(this.h);
        this.b.setTranslationY(this.i);
    }

    public void onAnimationResume(Animator animator) {
        this.b.setTranslationX(this.f);
        this.b.setTranslationY(this.g);
    }
}
