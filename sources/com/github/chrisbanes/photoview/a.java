package com.github.chrisbanes.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import com.facebook.ads.AdError;
import com.github.chrisbanes.photoview.c;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class a {
    private int a = -1;
    private int b = 0;
    private final ScaleGestureDetector c;
    private VelocityTracker d;
    private boolean e;
    private float f;
    private float g;
    private final float h;
    private final float i;
    private b j;

    /* renamed from: com.github.chrisbanes.photoview.a$a  reason: collision with other inner class name */
    class ScaleGestureDetector$OnScaleGestureListenerC0042a implements ScaleGestureDetector.OnScaleGestureListener {
        ScaleGestureDetector$OnScaleGestureListenerC0042a() {
        }

        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            ((c.a) a.this.j).a(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            return true;
        }

        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    a(Context context, b bVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.i = (float) viewConfiguration.getScaledMinimumFlingVelocity();
        this.h = (float) viewConfiguration.getScaledTouchSlop();
        this.j = bVar;
        this.c = new ScaleGestureDetector(context, new ScaleGestureDetector$OnScaleGestureListenerC0042a());
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private boolean g(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        int i2 = 0;
        if (action == 0) {
            this.a = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.d = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f = b(motionEvent);
            this.g = c(motionEvent);
            this.e = false;
        } else if (action == 1) {
            this.a = -1;
            if (this.e && this.d != null) {
                this.f = b(motionEvent);
                this.g = c(motionEvent);
                this.d.addMovement(motionEvent);
                this.d.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE);
                float xVelocity = this.d.getXVelocity();
                float yVelocity = this.d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.i) {
                    c.a aVar = (c.a) this.j;
                    c cVar = c.this;
                    cVar.s = new c.f(cVar.i.getContext());
                    c.f fVar = c.this.s;
                    c cVar2 = c.this;
                    int z = cVar2.z(cVar2.i);
                    c cVar3 = c.this;
                    fVar.b(z, cVar3.y(cVar3.i), (int) (-xVelocity), (int) (-yVelocity));
                    c.this.i.post(c.this.s);
                }
            }
            VelocityTracker velocityTracker = this.d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.d = null;
            }
        } else if (action == 2) {
            float b2 = b(motionEvent);
            float c2 = c(motionEvent);
            float f2 = b2 - this.f;
            float f3 = c2 - this.g;
            if (!this.e) {
                this.e = Math.sqrt((double) ((f3 * f3) + (f2 * f2))) >= ((double) this.h);
            }
            if (this.e) {
                c.a aVar2 = (c.a) this.j;
                if (!c.this.k.e()) {
                    Objects.requireNonNull(c.this);
                    c.this.n.postTranslate(f2, f3);
                    c.this.s();
                    ViewParent parent = c.this.i.getParent();
                    if (!c.this.g || c.this.k.e() || c.this.h) {
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    } else if ((c.this.t == 2 || ((c.this.t == 0 && f2 >= 1.0f) || (c.this.t == 1 && f2 <= -1.0f))) && parent != null) {
                        parent.requestDisallowInterceptTouchEvent(false);
                    }
                }
                this.f = b2;
                this.g = c2;
                VelocityTracker velocityTracker2 = this.d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.a = -1;
            VelocityTracker velocityTracker3 = this.d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.d = null;
            }
        } else if (action == 6) {
            int action2 = (motionEvent.getAction() & 65280) >> 8;
            if (motionEvent.getPointerId(action2) == this.a) {
                int i3 = action2 == 0 ? 1 : 0;
                this.a = motionEvent.getPointerId(i3);
                this.f = motionEvent.getX(i3);
                this.g = motionEvent.getY(i3);
            }
        }
        int i4 = this.a;
        if (i4 != -1) {
            i2 = i4;
        }
        this.b = motionEvent.findPointerIndex(i2);
        return true;
    }

    public boolean d() {
        return this.e;
    }

    public boolean e() {
        return this.c.isInProgress();
    }

    public boolean f(MotionEvent motionEvent) {
        try {
            this.c.onTouchEvent(motionEvent);
            g(motionEvent);
            return true;
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
