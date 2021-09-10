package defpackage;

import android.content.Context;
import android.graphics.PointF;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.facebook.ads.AdError;
import defpackage.ap;
import java.util.Objects;

/* renamed from: vo  reason: default package */
public class vo implements yo {
    private int a = -1;
    private int b = -1;
    private float c = -1.0f;
    private float d = -1.0f;
    float e;
    float f;
    float g;
    final float h;
    protected zo i;
    private final ap j;
    private ap.a k;
    private VelocityTracker l;
    private boolean m;

    /* renamed from: vo$b */
    private class b extends ap.b {
        b(a aVar) {
        }

        @Override // defpackage.ap.b, defpackage.ap.a
        public boolean a(ap apVar) {
            if (vo.this.k == null) {
                return true;
            }
            vo.this.k.a(apVar);
            return true;
        }

        @Override // defpackage.ap.b, defpackage.ap.a
        public void b(ap apVar) {
            if (vo.this.k != null) {
                vo.this.k.b(apVar);
            }
        }

        @Override // defpackage.ap.a
        public boolean c(ap apVar) {
            if (vo.this.k == null) {
                return true;
            }
            vo.this.k.c(apVar);
            return true;
        }
    }

    public vo(Context context) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.h = (float) viewConfiguration.getScaledMinimumFlingVelocity();
        this.g = (float) viewConfiguration.getScaledTouchSlop();
        this.j = new ap(context, new b(null));
    }

    /* access modifiers changed from: package-private */
    public float b(MotionEvent motionEvent) {
        throw null;
    }

    /* access modifiers changed from: package-private */
    public float c(MotionEvent motionEvent) {
        throw null;
    }

    public void d(zo zoVar) {
        this.i = zoVar;
    }

    public void e(ap.a aVar) {
        this.k = aVar;
    }

    @Override // defpackage.yo
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ap apVar = this.j;
        Objects.requireNonNull(apVar);
        int action = motionEvent.getAction() & 255;
        if (!apVar.a) {
            apVar.d(action, motionEvent);
        } else {
            apVar.c(action, motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        if (actionMasked == 0) {
            VelocityTracker obtain = VelocityTracker.obtain();
            this.l = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            } else {
                Log.i("CupcakeGestureDetector", "Velocity tracker is null");
            }
            this.a = motionEvent.getPointerId(motionEvent.getActionIndex());
            this.e = b(motionEvent);
            this.f = c(motionEvent);
            this.m = false;
        } else if (actionMasked == 1) {
            if (this.m) {
                this.a = -1;
                this.b = -1;
                if (this.l != null) {
                    this.e = b(motionEvent);
                    this.f = c(motionEvent);
                    this.l.addMovement(motionEvent);
                    this.l.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE);
                    float xVelocity = this.l.getXVelocity();
                    float yVelocity = this.l.getYVelocity();
                    if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.h) {
                        this.i.b(motionEvent, this.e, this.f, -xVelocity, -yVelocity);
                    }
                }
            }
            VelocityTracker velocityTracker = this.l;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.l = null;
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                VelocityTracker velocityTracker2 = this.l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.l = null;
                }
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.b = motionEvent.getPointerId(actionIndex);
                this.c = motionEvent.getX(actionIndex);
                this.d = motionEvent.getY(actionIndex);
            } else if (actionMasked == 6) {
                this.b = -1;
            }
        } else if (motionEvent.getPointerCount() == 1) {
            float b2 = b(motionEvent);
            float c2 = c(motionEvent);
            float f2 = b2 - this.e;
            float f3 = c2 - this.f;
            if (!this.m) {
                if (Math.sqrt((double) ((f3 * f3) + (f2 * f2))) >= ((double) this.g)) {
                    z = true;
                }
                this.m = z;
            }
            if (this.m) {
                this.i.a(motionEvent, f2, f3);
                this.e = b2;
                this.f = c2;
                VelocityTracker velocityTracker3 = this.l;
                if (velocityTracker3 != null) {
                    velocityTracker3.addMovement(motionEvent);
                }
            }
        } else {
            int i2 = this.a;
            if (!(i2 == -1 || this.b == -1)) {
                try {
                    float x = motionEvent.getX(motionEvent.findPointerIndex(i2));
                    float y = motionEvent.getY(motionEvent.findPointerIndex(this.a));
                    float x2 = motionEvent.getX(motionEvent.findPointerIndex(this.b));
                    float y2 = motionEvent.getY(motionEvent.findPointerIndex(this.b));
                    float f4 = x - this.e;
                    float f5 = y - this.f;
                    float f6 = x2 - this.c;
                    float f7 = y2 - this.d;
                    if (Math.abs(androidx.core.app.b.f(new PointF(this.e, this.f), new PointF(x, y)) - androidx.core.app.b.f(new PointF(this.c, this.d), new PointF(x2, y2))) < 45.0f) {
                        float f8 = (f4 + f6) / 2.0f;
                        float f9 = (f5 + f7) / 2.0f;
                        if (!this.m) {
                            if (Math.sqrt((double) ((f9 * f9) + (f8 * f8))) >= ((double) this.g)) {
                                z = true;
                            }
                            this.m = z;
                        }
                        if (this.m) {
                            this.i.a(motionEvent, f8, f9);
                            this.e = x;
                            this.f = y;
                            this.c = x2;
                            this.d = y2;
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return true;
    }
}
