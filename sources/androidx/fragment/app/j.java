package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* access modifiers changed from: package-private */
public class j extends AnimatorListenerAdapter {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ View b;
    final /* synthetic */ Fragment c;
    final /* synthetic */ h d;

    j(h hVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.d = hVar;
        this.a = viewGroup;
        this.b = view;
        this.c = fragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        Animator z = this.c.z();
        this.c.b1(null);
        if (z != null && this.a.indexOfChild(this.b) < 0) {
            h hVar = this.d;
            Fragment fragment = this.c;
            hVar.r0(fragment, fragment.S(), 0, 0, false);
        }
    }
}
