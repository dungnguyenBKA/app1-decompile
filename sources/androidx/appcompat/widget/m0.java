package androidx.appcompat.widget;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* access modifiers changed from: package-private */
public class m0 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    private static m0 k;
    private static m0 l;
    private final View b;
    private final CharSequence c;
    private final int d;
    private final Runnable e = new a();
    private final Runnable f = new b();
    private int g;
    private int h;
    private n0 i;
    private boolean j;

    class a implements Runnable {
        a() {
        }

        public void run() {
            m0.this.e(false);
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            m0.this.b();
        }
    }

    private m0(View view, CharSequence charSequence) {
        int i2;
        this.b = view;
        this.c = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        int i3 = g3.b;
        if (Build.VERSION.SDK_INT >= 28) {
            i2 = viewConfiguration.getScaledHoverSlop();
        } else {
            i2 = viewConfiguration.getScaledTouchSlop() / 2;
        }
        this.d = i2;
        a();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void a() {
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }

    private static void c(m0 m0Var) {
        m0 m0Var2 = k;
        if (m0Var2 != null) {
            m0Var2.b.removeCallbacks(m0Var2.e);
        }
        k = m0Var;
        if (m0Var != null) {
            m0Var.b.postDelayed(m0Var.e, (long) ViewConfiguration.getLongPressTimeout());
        }
    }

    public static void d(View view, CharSequence charSequence) {
        m0 m0Var = k;
        if (m0Var != null && m0Var.b == view) {
            c(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            m0 m0Var2 = l;
            if (m0Var2 != null && m0Var2.b == view) {
                m0Var2.b();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new m0(view, charSequence);
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (l == this) {
            l = null;
            n0 n0Var = this.i;
            if (n0Var != null) {
                n0Var.a();
                this.i = null;
                a();
                this.b.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (k == this) {
            c(null);
        }
        this.b.removeCallbacks(this.f);
    }

    /* access modifiers changed from: package-private */
    public void e(boolean z) {
        long j2;
        int i2;
        long j3;
        View view = this.b;
        int i3 = c3.g;
        if (view.isAttachedToWindow()) {
            c(null);
            m0 m0Var = l;
            if (m0Var != null) {
                m0Var.b();
            }
            l = this;
            this.j = z;
            n0 n0Var = new n0(this.b.getContext());
            this.i = n0Var;
            n0Var.b(this.b, this.g, this.h, this.j, this.c);
            this.b.addOnAttachStateChangeListener(this);
            if (this.j) {
                j2 = 2500;
            } else {
                if ((this.b.getWindowSystemUiVisibility() & 1) == 1) {
                    j3 = 3000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                } else {
                    j3 = 15000;
                    i2 = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j3 - ((long) i2);
            }
            this.b.removeCallbacks(this.f);
            this.b.postDelayed(this.f, j2);
        }
    }

    public boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.i != null && this.j) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.b.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                a();
                b();
            }
        } else if (this.b.isEnabled() && this.i == null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (Math.abs(x - this.g) > this.d || Math.abs(y - this.h) > this.d) {
                this.g = x;
                this.h = y;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                c(this);
            }
        }
        return false;
    }

    public boolean onLongClick(View view) {
        this.g = view.getWidth() / 2;
        this.h = view.getHeight() / 2;
        e(true);
        return true;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
