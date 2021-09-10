package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class h extends AnimatorListenerAdapter {
    final /* synthetic */ RecyclerView.b0 a;
    final /* synthetic */ int b;
    final /* synthetic */ View c;
    final /* synthetic */ int d;
    final /* synthetic */ ViewPropertyAnimator e;
    final /* synthetic */ e f;

    h(e eVar, RecyclerView.b0 b0Var, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f = eVar;
        this.a = b0Var;
        this.b = i;
        this.c = view;
        this.d = i2;
        this.e = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        if (this.b != 0) {
            this.c.setTranslationX(0.0f);
        }
        if (this.d != 0) {
            this.c.setTranslationY(0.0f);
        }
    }

    public void onAnimationEnd(Animator animator) {
        this.e.setListener(null);
        this.f.d(this.a);
        this.f.p.remove(this.a);
        this.f.v();
    }

    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f);
    }
}
