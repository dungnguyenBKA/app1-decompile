package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* access modifiers changed from: package-private */
public class k extends AnimatorListenerAdapter {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ Fragment c;

    k(h hVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.a = viewGroup;
        this.b = view;
        this.c = fragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        animator.removeListener(this);
        Fragment fragment = this.c;
        View view = fragment.E;
        if (view != null && fragment.y) {
            view.setVisibility(8);
        }
    }
}
