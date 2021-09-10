package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class g extends AnimatorListenerAdapter {
    final /* synthetic */ RecyclerView.b0 a;
    final /* synthetic */ View b;
    final /* synthetic */ ViewPropertyAnimator c;
    final /* synthetic */ e d;

    g(e eVar, RecyclerView.b0 b0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.d = eVar;
        this.a = b0Var;
        this.b = view;
        this.c = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        this.b.setAlpha(1.0f);
    }

    public void onAnimationEnd(Animator animator) {
        this.c.setListener(null);
        this.d.d(this.a);
        this.d.o.remove(this.a);
        this.d.v();
    }

    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.d);
    }
}
