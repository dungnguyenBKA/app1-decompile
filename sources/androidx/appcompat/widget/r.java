package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.p;

public abstract class r implements View.OnTouchListener, View.OnAttachStateChangeListener {
    private final float b;
    private final int c;
    private final int d;
    final View e;
    private Runnable f;
    private Runnable g;
    private boolean h;
    private int i;
    private final int[] j = new int[2];

    /* access modifiers changed from: private */
    public class a implements Runnable {
        a() {
        }

        public void run() {
            ViewParent parent = r.this.e.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* access modifiers changed from: private */
    public class b implements Runnable {
        b() {
        }

        public void run() {
            r.this.e();
        }
    }

    public r(View view) {
        this.e = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.b = (float) ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.c = tapTimeout;
        this.d = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    private void a() {
        Runnable runnable = this.g;
        if (runnable != null) {
            this.e.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f;
        if (runnable2 != null) {
            this.e.removeCallbacks(runnable2);
        }
    }

    public abstract p b();

    /* access modifiers changed from: protected */
    public abstract boolean c();

    /* access modifiers changed from: protected */
    public boolean d() {
        p b2 = b();
        if (b2 == null || !b2.a()) {
            return true;
        }
        b2.dismiss();
        return true;
    }

    /* access modifiers changed from: package-private */
    public void e() {
        a();
        View view = this.e;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.h = true;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0087, code lost:
        if (r4 != 3) goto L_0x0079;
     */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0113  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
        /*
        // Method dump skipped, instructions count: 304
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.r.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        this.h = false;
        this.i = -1;
        Runnable runnable = this.f;
        if (runnable != null) {
            this.e.removeCallbacks(runnable);
        }
    }
}
