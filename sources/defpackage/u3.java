package defpackage;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.facebook.ads.AdError;
import java.util.Arrays;

/* renamed from: u3  reason: default package */
public class u3 {
    private static final Interpolator w = new a();
    private int a;
    private int b;
    private int c = -1;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private OverScroller q;
    private final c r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable v = new b();

    /* renamed from: u3$a */
    static class a implements Interpolator {
        a() {
        }

        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: u3$b */
    class b implements Runnable {
        b() {
        }

        public void run() {
            u3.this.C(0);
        }
    }

    /* renamed from: u3$c */
    public static abstract class c {
        public abstract int a(View view, int i, int i2);

        public abstract int b(View view, int i, int i2);

        public int c(int i) {
            return i;
        }

        public int d(View view) {
            return 0;
        }

        public int e(View view) {
            return 0;
        }

        public void f(int i, int i2) {
        }

        public boolean g(int i) {
            return false;
        }

        public void h(int i, int i2) {
        }

        public void i(View view, int i) {
        }

        public void j(int i) {
        }

        public abstract void k(View view, int i, int i2, int i3, int i4);

        public abstract void l(View view, float f, float f2);

        public abstract boolean m(View view, int i);
    }

    private u3(Context context, ViewGroup viewGroup, c cVar) {
        if (cVar != null) {
            this.u = viewGroup;
            this.r = cVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.b = viewConfiguration.getScaledTouchSlop();
            this.m = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.n = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.q = new OverScroller(context, w);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    private void A(float f2, float f3, int i2) {
        float[] fArr = this.d;
        int i3 = 0;
        if (fArr == null || fArr.length <= i2) {
            int i4 = i2 + 1;
            float[] fArr2 = new float[i4];
            float[] fArr3 = new float[i4];
            float[] fArr4 = new float[i4];
            float[] fArr5 = new float[i4];
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.d = fArr2;
            this.e = fArr3;
            this.f = fArr4;
            this.g = fArr5;
            this.h = iArr;
            this.i = iArr2;
            this.j = iArr3;
        }
        float[] fArr9 = this.d;
        this.f[i2] = f2;
        fArr9[i2] = f2;
        float[] fArr10 = this.e;
        this.g[i2] = f3;
        fArr10[i2] = f3;
        int[] iArr7 = this.h;
        int i5 = (int) f2;
        int i6 = (int) f3;
        if (i5 < this.u.getLeft() + this.o) {
            i3 = 1;
        }
        if (i6 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i5 > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        if (i6 > this.u.getBottom() - this.o) {
            i3 |= 8;
        }
        iArr7[i2] = i3;
        this.k |= 1 << i2;
    }

    private void B(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (v(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f[pointerId] = x;
                this.g[pointerId] = y;
            }
        }
    }

    private boolean d(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.h[i2] & i3) != i3 || (this.p & i3) == 0 || (this.j[i2] & i3) == i3 || (this.i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.b;
        if (abs <= ((float) i4) && abs2 <= ((float) i4)) {
            return false;
        }
        if (abs < abs2 * 0.5f && this.r.g(i3)) {
            int[] iArr = this.j;
            iArr[i2] = iArr[i2] | i3;
            return false;
        } else if ((this.i[i2] & i3) != 0 || abs <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    private boolean f(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.r.d(view) > 0;
        boolean z2 = this.r.e(view) > 0;
        if (z && z2) {
            float f4 = f3 * f3;
            int i2 = this.b;
            if (f4 + (f2 * f2) > ((float) (i2 * i2))) {
                return true;
            }
            return false;
        } else if (z) {
            if (Math.abs(f2) > ((float) this.b)) {
                return true;
            }
            return false;
        } else if (!z2 || Math.abs(f3) <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    private float g(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        if (abs > f4) {
            return f2 > 0.0f ? f4 : -f4;
        }
        return f2;
    }

    private int h(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        if (abs > i4) {
            return i2 > 0 ? i4 : -i4;
        }
        return i2;
    }

    private void i(int i2) {
        if (this.d != null && u(i2)) {
            this.d[i2] = 0.0f;
            this.e[i2] = 0.0f;
            this.f[i2] = 0.0f;
            this.g[i2] = 0.0f;
            this.h[i2] = 0;
            this.i[i2] = 0;
            this.j[i2] = 0;
            this.k = ((1 << i2) ^ -1) & this.k;
        }
    }

    private int j(int i2, int i3, int i4) {
        int i5;
        if (i2 == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        float f2 = (float) (width / 2);
        float sin = (((float) Math.sin((double) ((Math.min(1.0f, ((float) Math.abs(i2)) / ((float) width)) - 0.5f) * 0.47123894f))) * f2) + f2;
        int abs = Math.abs(i3);
        if (abs > 0) {
            i5 = Math.round(Math.abs(sin / ((float) abs)) * 1000.0f) * 4;
        } else {
            i5 = (int) (((((float) Math.abs(i2)) / ((float) i4)) + 1.0f) * 256.0f);
        }
        return Math.min(i5, 600);
    }

    public static u3 l(ViewGroup viewGroup, float f2, c cVar) {
        u3 u3Var = new u3(viewGroup.getContext(), viewGroup, cVar);
        u3Var.b = (int) ((1.0f / f2) * ((float) u3Var.b));
        return u3Var;
    }

    public static u3 m(ViewGroup viewGroup, c cVar) {
        return new u3(viewGroup.getContext(), viewGroup, cVar);
    }

    private void n(float f2, float f3) {
        this.t = true;
        this.r.l(this.s, f2, f3);
        this.t = false;
        if (this.a == 1) {
            C(0);
        }
    }

    private boolean p(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.q.abortAnimation();
            C(0);
            return false;
        }
        View view = this.s;
        int h2 = h(i4, (int) this.n, (int) this.m);
        int h3 = h(i5, (int) this.n, (int) this.m);
        int abs = Math.abs(i6);
        int abs2 = Math.abs(i7);
        int abs3 = Math.abs(h2);
        int abs4 = Math.abs(h3);
        int i8 = abs3 + abs4;
        int i9 = abs + abs2;
        if (h2 != 0) {
            f2 = (float) abs3;
            f3 = (float) i8;
        } else {
            f2 = (float) abs;
            f3 = (float) i9;
        }
        float f6 = f2 / f3;
        if (h3 != 0) {
            f5 = (float) abs4;
            f4 = (float) i8;
        } else {
            f5 = (float) abs2;
            f4 = (float) i9;
        }
        int j2 = j(i6, h2, this.r.d(view));
        float j3 = ((float) j(i7, h3, this.r.e(view))) * (f5 / f4);
        this.q.startScroll(left, top, i6, i7, (int) (j3 + (((float) j2) * f6)));
        C(2);
        return true;
    }

    private boolean v(int i2) {
        if (u(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received " + "for this pointer before ACTION_MOVE. It likely happened because " + " ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    private void y() {
        this.l.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE, this.m);
        n(g(this.l.getXVelocity(this.c), this.n, this.m), g(this.l.getYVelocity(this.c), this.n, this.m));
    }

    private void z(float f2, float f3, int i2) {
        int i3 = 1;
        if (!d(f2, f3, i2, 1)) {
            i3 = 0;
        }
        if (d(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (d(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (d(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.i;
            iArr[i2] = iArr[i2] | i3;
            this.r.f(i3, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void C(int i2) {
        this.u.removeCallbacks(this.v);
        if (this.a != i2) {
            this.a = i2;
            this.r.j(i2);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    public void D(int i2) {
        this.p = i2;
    }

    public void E(float f2) {
        this.n = f2;
    }

    public boolean F(int i2, int i3) {
        if (this.t) {
            return p(i2, i3, (int) this.l.getXVelocity(this.c), (int) this.l.getYVelocity(this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00de, code lost:
        if (r12 != r11) goto L_0x00e7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean G(android.view.MotionEvent r17) {
        /*
        // Method dump skipped, instructions count: 313
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u3.G(android.view.MotionEvent):boolean");
    }

    public boolean H(View view, int i2, int i3) {
        this.s = view;
        this.c = -1;
        boolean p2 = p(i2, i3, 0, 0);
        if (!p2 && this.a == 0 && this.s != null) {
            this.s = null;
        }
        return p2;
    }

    /* access modifiers changed from: package-private */
    public boolean I(View view, int i2) {
        if (view == this.s && this.c == i2) {
            return true;
        }
        if (view == null || !this.r.m(view, i2)) {
            return false;
        }
        this.c = i2;
        c(view, i2);
        return true;
    }

    public void a() {
        b();
        if (this.a == 2) {
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            this.q.abortAnimation();
            int currX2 = this.q.getCurrX();
            int currY2 = this.q.getCurrY();
            this.r.k(this.s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        C(0);
    }

    public void b() {
        this.c = -1;
        float[] fArr = this.d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public void c(View view, int i2) {
        if (view.getParent() == this.u) {
            this.s = view;
            this.c = i2;
            this.r.i(view, i2);
            C(1);
            return;
        }
        StringBuilder q2 = ic.q("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
        q2.append(this.u);
        q2.append(")");
        throw new IllegalArgumentException(q2.toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0040, code lost:
        if ((r7 + (r6 * r6)) > ((float) (r3 * r3))) goto L_0x0042;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0065 A[LOOP:0: B:1:0x0005->B:27:0x0065, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0064 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean e(int r10) {
        /*
        // Method dump skipped, instructions count: 105
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u3.e(int):boolean");
    }

    public boolean k(boolean z) {
        if (this.a == 2) {
            boolean computeScrollOffset = this.q.computeScrollOffset();
            int currX = this.q.getCurrX();
            int currY = this.q.getCurrY();
            int left = currX - this.s.getLeft();
            int top = currY - this.s.getTop();
            if (left != 0) {
                c3.n(this.s, left);
            }
            if (top != 0) {
                c3.o(this.s, top);
            }
            if (!(left == 0 && top == 0)) {
                this.r.k(this.s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.q.getFinalX() && currY == this.q.getFinalY()) {
                this.q.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.u.post(this.v);
                } else {
                    C(0);
                }
            }
        }
        if (this.a == 2) {
            return true;
        }
        return false;
    }

    public View o(int i2, int i3) {
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.c(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public View q() {
        return this.s;
    }

    public int r() {
        return this.o;
    }

    public int s() {
        return this.b;
    }

    public int t() {
        return this.a;
    }

    public boolean u(int i2) {
        return ((1 << i2) & this.k) != 0;
    }

    public boolean w(View view, int i2, int i3) {
        if (view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom()) {
            return true;
        }
        return false;
    }

    public void x(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View o2 = o((int) x, (int) y);
            A(x, y, pointerId);
            I(o2, pointerId);
            int i4 = this.h[pointerId];
            int i5 = this.p;
            if ((i4 & i5) != 0) {
                this.r.h(i4 & i5, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.a == 1) {
                y();
            }
            b();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.a == 1) {
                    n(0.0f, 0.0f);
                }
                b();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                A(x2, y2, pointerId2);
                if (this.a == 0) {
                    I(o((int) x2, (int) y2), pointerId2);
                    int i6 = this.h[pointerId2];
                    int i7 = this.p;
                    if ((i6 & i7) != 0) {
                        this.r.h(i6 & i7, pointerId2);
                        return;
                    }
                    return;
                }
                if (w(this.s, (int) x2, (int) y2)) {
                    I(this.s, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.a == 1 && pointerId3 == this.c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i3 >= pointerCount) {
                            i2 = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i3);
                        if (pointerId4 != this.c) {
                            View o3 = o((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                            View view = this.s;
                            if (o3 == view && I(view, pointerId4)) {
                                i2 = this.c;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (i2 == -1) {
                        y();
                    }
                }
                i(pointerId3);
            }
        } else if (this.a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (i3 < pointerCount2) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (v(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.d[pointerId5];
                    float f3 = y3 - this.e[pointerId5];
                    z(f2, f3, pointerId5);
                    if (this.a != 1) {
                        View o4 = o((int) x3, (int) y3);
                        if (f(o4, f2, f3) && I(o4, pointerId5)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            B(motionEvent);
        } else if (v(this.c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f;
            int i8 = this.c;
            int i9 = (int) (x4 - fArr[i8]);
            int i10 = (int) (y4 - this.g[i8]);
            int left = this.s.getLeft() + i9;
            int top = this.s.getTop() + i10;
            int left2 = this.s.getLeft();
            int top2 = this.s.getTop();
            if (i9 != 0) {
                left = this.r.a(this.s, left, i9);
                c3.n(this.s, left - left2);
            }
            if (i10 != 0) {
                top = this.r.b(this.s, top, i10);
                c3.o(this.s, top - top2);
            }
            if (!(i9 == 0 && i10 == 0)) {
                this.r.k(this.s, left, top, left - left2, top - top2);
            }
            B(motionEvent);
        }
    }
}
