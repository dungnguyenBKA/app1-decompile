package defpackage;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* renamed from: ep  reason: default package */
public abstract class ep {
    protected boolean a;
    protected MotionEvent b;
    protected MotionEvent c;
    protected float d;
    protected float e;
    protected float f;
    protected float g;
    protected float h;
    protected float i;

    public ep(Context context) {
        ViewConfiguration.get(context).getScaledEdgeSlop();
    }

    /* access modifiers changed from: protected */
    public void a(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = this.c;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.c = null;
        }
        this.c = MotionEvent.obtain(motionEvent);
        int actionIndex = motionEvent.getActionMasked() == 1 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            if (actionIndex != i2) {
                motionEvent.getX(i2);
                motionEvent.getY(i2);
            }
        }
        if (motionEvent2 != null) {
            this.e = motionEvent2.getPressure(motionEvent2.getActionIndex());
            motionEvent.getEventTime();
            motionEvent2.getEventTime();
            this.d = motionEvent.getPressure(motionEvent.getActionIndex());
        }
        MotionEvent motionEvent3 = this.b;
        try {
            float x = motionEvent3.getX(0);
            float y = motionEvent3.getY(0);
            if (motionEvent3.getPointerCount() > 1) {
                this.f = motionEvent3.getX(1) - x;
                this.g = motionEvent3.getY(1) - y;
            }
            float x2 = motionEvent.getX(0);
            float y2 = motionEvent.getY(0);
            if (motionEvent.getPointerCount() > 1) {
                this.h = motionEvent.getX(1) - x2;
                this.i = motionEvent.getY(1) - y2;
            }
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        }
    }
}
