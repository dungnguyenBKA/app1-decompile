package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.e;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class i extends AnimatorListenerAdapter {
    final /* synthetic */ e.d a;
    final /* synthetic */ ViewPropertyAnimator b;
    final /* synthetic */ View c;
    final /* synthetic */ e d;

    i(e eVar, e.d dVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = eVar;
        this.a = dVar;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        this.c.setTranslationX(0.0f);
        this.c.setTranslationY(0.0f);
        this.d.d(this.a.a);
        this.d.r.remove(this.a.a);
        this.d.v();
    }

    public void onAnimationStart(Animator animator) {
        e eVar = this.d;
        RecyclerView.b0 b0Var = this.a.a;
        Objects.requireNonNull(eVar);
    }
}
