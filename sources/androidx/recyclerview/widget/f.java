package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

class f extends AnimatorListenerAdapter {
    final /* synthetic */ RecyclerView.b0 a;
    final /* synthetic */ ViewPropertyAnimator b;
    final /* synthetic */ View c;
    final /* synthetic */ e d;

    f(e eVar, RecyclerView.b0 b0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = eVar;
        this.a = b0Var;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        this.d.d(this.a);
        this.d.q.remove(this.a);
        this.d.v();
    }

    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.d);
    }
}
