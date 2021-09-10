package defpackage;

import android.content.Context;
import android.view.MotionEvent;

/* renamed from: ap  reason: default package */
public class ap extends ep {
    private final a j;

    /* renamed from: ap$a */
    public interface a {
        boolean a(ap apVar);

        void b(ap apVar);

        boolean c(ap apVar);
    }

    /* renamed from: ap$b */
    public static class b implements a {
        @Override // defpackage.ap.a
        public boolean a(ap apVar) {
            return true;
        }

        @Override // defpackage.ap.a
        public void b(ap apVar) {
        }
    }

    public ap(Context context, a aVar) {
        super(context);
        this.j = aVar;
    }

    public float b() {
        return (float) (((Math.atan2((double) this.g, (double) this.f) - Math.atan2((double) this.i, (double) this.h)) * 180.0d) / 3.141592653589793d);
    }

    /* access modifiers changed from: protected */
    public void c(int i, MotionEvent motionEvent) {
        if (i == 2) {
            a(motionEvent);
            if (this.d / this.e > 0.1f && this.j.c(this)) {
                this.b.recycle();
                this.b = MotionEvent.obtain(motionEvent);
            }
        } else if (i == 3) {
            this.j.b(this);
            e();
        } else if (i == 6) {
            a(motionEvent);
            this.j.b(this);
            e();
        }
    }

    /* access modifiers changed from: protected */
    public void d(int i, MotionEvent motionEvent) {
        if (i != 2 && i == 5) {
            e();
            this.b = MotionEvent.obtain(motionEvent);
            a(motionEvent);
            this.a = this.j.a(this);
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        MotionEvent motionEvent = this.b;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.b = null;
        }
        MotionEvent motionEvent2 = this.c;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.c = null;
        }
        this.a = false;
    }
}
