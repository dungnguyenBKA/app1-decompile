package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;

@TargetApi(5)
/* renamed from: wo  reason: default package */
public class wo extends vo {
    private int n = -1;
    private int o = 0;

    public wo(Context context) {
        super(context);
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.vo
    public float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.o);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    /* access modifiers changed from: package-private */
    @Override // defpackage.vo
    public float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.o);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    @Override // defpackage.yo, defpackage.vo
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        int i = 0;
        if (action == 0) {
            this.n = motionEvent.getPointerId(0);
        } else if (action == 1 || action == 3) {
            this.n = -1;
        } else if (action == 6) {
            int action2 = (motionEvent.getAction() & 65280) >> 8;
            if (motionEvent.getPointerId(action2) == this.n) {
                int i2 = action2 == 0 ? 1 : 0;
                this.n = motionEvent.getPointerId(i2);
                this.e = motionEvent.getX(i2);
                this.f = motionEvent.getY(i2);
            }
        }
        int i3 = this.n;
        if (i3 != -1) {
            i = i3;
        }
        this.o = motionEvent.findPointerIndex(i);
        super.onTouchEvent(motionEvent);
        return true;
    }
}
