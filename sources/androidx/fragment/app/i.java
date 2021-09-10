package androidx.fragment.app;

import android.view.ViewGroup;
import android.view.animation.Animation;

/* access modifiers changed from: package-private */
public class i implements Animation.AnimationListener {
    final /* synthetic */ ViewGroup a;
    final /* synthetic */ Fragment b;
    final /* synthetic */ h c;

    class a implements Runnable {
        a() {
        }

        public void run() {
            if (i.this.b.y() != null) {
                i.this.b.a1(null);
                i iVar = i.this;
                h hVar = iVar.c;
                Fragment fragment = iVar.b;
                hVar.r0(fragment, fragment.S(), 0, 0, false);
            }
        }
    }

    i(h hVar, ViewGroup viewGroup, Fragment fragment) {
        this.c = hVar;
        this.a = viewGroup;
        this.b = fragment;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.post(new a());
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
