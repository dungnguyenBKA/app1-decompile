package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;

/* renamed from: z2  reason: default package */
public final class z2 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    private final View b;
    private ViewTreeObserver c;
    private final Runnable d;

    private z2(View view, Runnable runnable) {
        this.b = view;
        this.c = view.getViewTreeObserver();
        this.d = runnable;
    }

    public static z2 a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        z2 z2Var = new z2(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(z2Var);
        view.addOnAttachStateChangeListener(z2Var);
        return z2Var;
    }

    public void b() {
        if (this.c.isAlive()) {
            this.c.removeOnPreDrawListener(this);
        } else {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.b.removeOnAttachStateChangeListener(this);
    }

    public boolean onPreDraw() {
        b();
        this.d.run();
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        this.c = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
