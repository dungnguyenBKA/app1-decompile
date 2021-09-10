package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import org.apache.http.HttpStatus;

class l extends RecyclerView.n implements RecyclerView.r {
    private static final int[] D = {16842919};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.s C;
    private final int a;
    private final int b;
    final StateListDrawable c;
    final Drawable d;
    private final int e;
    private final int f;
    private final StateListDrawable g;
    private final Drawable h;
    private final int i;
    private final int j;
    int k;
    int l;
    float m;
    int n;
    int o;
    float p;
    private int q = 0;
    private int r = 0;
    private RecyclerView s;
    private boolean t = false;
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private final int[] x = new int[2];
    private final int[] y = new int[2];
    final ValueAnimator z;

    class a implements Runnable {
        a() {
        }

        public void run() {
            l lVar = l.this;
            int i = lVar.A;
            if (i == 1) {
                lVar.z.cancel();
            } else if (i != 2) {
                return;
            }
            lVar.A = 3;
            ValueAnimator valueAnimator = lVar.z;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            lVar.z.setDuration((long) HttpStatus.SC_INTERNAL_SERVER_ERROR);
            lVar.z.start();
        }
    }

    class b extends RecyclerView.s {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            l.this.p(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class c extends AnimatorListenerAdapter {
        private boolean a = false;

        c() {
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                this.a = false;
            } else if (((Float) l.this.z.getAnimatedValue()).floatValue() == 0.0f) {
                l lVar = l.this;
                lVar.A = 0;
                lVar.n(0);
            } else {
                l lVar2 = l.this;
                lVar2.A = 2;
                lVar2.l();
            }
        }
    }

    private class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            l.this.c.setAlpha(floatValue);
            l.this.d.setAlpha(floatValue);
            l.this.l();
        }
    }

    l(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i2, int i3, int i4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = ofFloat;
        this.A = 0;
        this.B = new a();
        b bVar = new b();
        this.C = bVar;
        this.c = stateListDrawable;
        this.d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i2, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i2, drawable.getIntrinsicWidth());
        this.i = Math.max(i2, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i2, drawable2.getIntrinsicWidth());
        this.a = i3;
        this.b = i4;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new c());
        ofFloat.addUpdateListener(new d());
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                recyclerView2.removeItemDecoration(this);
                this.s.removeOnItemTouchListener(this);
                this.s.removeOnScrollListener(bVar);
                i();
            }
            this.s = recyclerView;
            recyclerView.addItemDecoration(this);
            this.s.addOnItemTouchListener(this);
            this.s.addOnScrollListener(bVar);
        }
    }

    private void i() {
        this.s.removeCallbacks(this.B);
    }

    private int m(float f2, float f3, int[] iArr, int i2, int i3, int i4) {
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            return 0;
        }
        int i6 = i2 - i4;
        int i7 = (int) (((f3 - f2) / ((float) i5)) * ((float) i6));
        int i8 = i3 + i7;
        if (i8 >= i6 || i8 < 0) {
            return 0;
        }
        return i7;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean k2 = k(motionEvent.getX(), motionEvent.getY());
                boolean j2 = j(motionEvent.getX(), motionEvent.getY());
                if (k2 || j2) {
                    if (j2) {
                        this.w = 1;
                        this.p = (float) ((int) motionEvent.getX());
                    } else if (k2) {
                        this.w = 2;
                        this.m = (float) ((int) motionEvent.getY());
                    }
                    n(2);
                }
            } else if (motionEvent.getAction() == 1 && this.v == 2) {
                this.m = 0.0f;
                this.p = 0.0f;
                n(1);
                this.w = 0;
            } else if (motionEvent.getAction() == 2 && this.v == 2) {
                o();
                if (this.w == 1) {
                    float x2 = motionEvent.getX();
                    int[] iArr = this.y;
                    int i2 = this.b;
                    iArr[0] = i2;
                    iArr[1] = this.q - i2;
                    float max = Math.max((float) iArr[0], Math.min((float) iArr[1], x2));
                    if (Math.abs(((float) this.o) - max) >= 2.0f) {
                        int m2 = m(this.p, max, iArr, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
                        if (m2 != 0) {
                            this.s.scrollBy(m2, 0);
                        }
                        this.p = max;
                    }
                }
                if (this.w == 2) {
                    float y2 = motionEvent.getY();
                    int[] iArr2 = this.x;
                    int i3 = this.b;
                    iArr2[0] = i3;
                    iArr2[1] = this.r - i3;
                    float max2 = Math.max((float) iArr2[0], Math.min((float) iArr2[1], y2));
                    if (Math.abs(((float) this.l) - max2) >= 2.0f) {
                        int m3 = m(this.m, max2, iArr2, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
                        if (m3 != 0) {
                            this.s.scrollBy(0, m3);
                        }
                        this.m = max2;
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public boolean c(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i2 = this.v;
        if (i2 == 1) {
            boolean k2 = k(motionEvent.getX(), motionEvent.getY());
            boolean j2 = j(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (k2 || j2)) {
                if (j2) {
                    this.w = 1;
                    this.p = (float) ((int) motionEvent.getX());
                } else if (k2) {
                    this.w = 2;
                    this.m = (float) ((int) motionEvent.getY());
                }
                n(2);
                return true;
            }
        } else if (i2 == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void e(boolean z2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void h(Canvas canvas, RecyclerView recyclerView, RecyclerView.y yVar) {
        if (this.q != this.s.getWidth() || this.r != this.s.getHeight()) {
            this.q = this.s.getWidth();
            this.r = this.s.getHeight();
            n(0);
        } else if (this.A != 0) {
            if (this.t) {
                int i2 = this.q;
                int i3 = this.e;
                int i4 = i2 - i3;
                int i5 = this.l;
                int i6 = this.k;
                int i7 = i5 - (i6 / 2);
                this.c.setBounds(0, 0, i3, i6);
                this.d.setBounds(0, 0, this.f, this.r);
                RecyclerView recyclerView2 = this.s;
                int i8 = c3.g;
                boolean z2 = true;
                if (recyclerView2.getLayoutDirection() != 1) {
                    z2 = false;
                }
                if (z2) {
                    this.d.draw(canvas);
                    canvas.translate((float) this.e, (float) i7);
                    canvas.scale(-1.0f, 1.0f);
                    this.c.draw(canvas);
                    canvas.scale(1.0f, 1.0f);
                    canvas.translate((float) (-this.e), (float) (-i7));
                } else {
                    canvas.translate((float) i4, 0.0f);
                    this.d.draw(canvas);
                    canvas.translate(0.0f, (float) i7);
                    this.c.draw(canvas);
                    canvas.translate((float) (-i4), (float) (-i7));
                }
            }
            if (this.u) {
                int i9 = this.r;
                int i10 = this.i;
                int i11 = i9 - i10;
                int i12 = this.o;
                int i13 = this.n;
                int i14 = i12 - (i13 / 2);
                this.g.setBounds(0, 0, i13, i10);
                this.h.setBounds(0, 0, this.q, this.j);
                canvas.translate(0.0f, (float) i11);
                this.h.draw(canvas);
                canvas.translate((float) i14, 0.0f);
                this.g.draw(canvas);
                canvas.translate((float) (-i14), (float) (-i11));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean j(float f2, float f3) {
        if (f3 >= ((float) (this.r - this.i))) {
            int i2 = this.o;
            int i3 = this.n;
            return f2 >= ((float) (i2 - (i3 / 2))) && f2 <= ((float) ((i3 / 2) + i2));
        }
    }

    /* access modifiers changed from: package-private */
    public boolean k(float f2, float f3) {
        RecyclerView recyclerView = this.s;
        int i2 = c3.g;
        if (recyclerView.getLayoutDirection() == 1) {
            if (f2 > ((float) (this.e / 2))) {
                return false;
            }
        } else if (f2 < ((float) (this.q - this.e))) {
            return false;
        }
        int i3 = this.l;
        int i4 = this.k / 2;
        if (f3 < ((float) (i3 - i4)) || f3 > ((float) (i4 + i3))) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void l() {
        this.s.invalidate();
    }

    /* access modifiers changed from: package-private */
    public void n(int i2) {
        if (i2 == 2 && this.v != 2) {
            this.c.setState(D);
            i();
        }
        if (i2 == 0) {
            this.s.invalidate();
        } else {
            o();
        }
        if (this.v == 2 && i2 != 2) {
            this.c.setState(E);
            i();
            this.s.postDelayed(this.B, (long) 1200);
        } else if (i2 == 1) {
            i();
            this.s.postDelayed(this.B, (long) 1500);
        }
        this.v = i2;
    }

    public void o() {
        int i2 = this.A;
        if (i2 != 0) {
            if (i2 == 3) {
                this.z.cancel();
            } else {
                return;
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0);
        this.z.start();
    }

    /* access modifiers changed from: package-private */
    public void p(int i2, int i3) {
        int computeVerticalScrollRange = this.s.computeVerticalScrollRange();
        int i4 = this.r;
        this.t = computeVerticalScrollRange - i4 > 0 && i4 >= this.a;
        int computeHorizontalScrollRange = this.s.computeHorizontalScrollRange();
        int i5 = this.q;
        boolean z2 = computeHorizontalScrollRange - i5 > 0 && i5 >= this.a;
        this.u = z2;
        boolean z3 = this.t;
        if (z3 || z2) {
            if (z3) {
                float f2 = (float) i4;
                this.l = (int) ((((f2 / 2.0f) + ((float) i3)) * f2) / ((float) computeVerticalScrollRange));
                this.k = Math.min(i4, (i4 * i4) / computeVerticalScrollRange);
            }
            if (this.u) {
                float f3 = (float) i5;
                this.o = (int) ((((f3 / 2.0f) + ((float) i2)) * f3) / ((float) computeHorizontalScrollRange));
                this.n = Math.min(i5, (i5 * i5) / computeHorizontalScrollRange);
            }
            int i6 = this.v;
            if (i6 == 0 || i6 == 1) {
                n(1);
            }
        } else if (this.v != 0) {
            n(0);
        }
    }
}
