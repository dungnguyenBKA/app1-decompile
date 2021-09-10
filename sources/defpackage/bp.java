package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* access modifiers changed from: package-private */
/* renamed from: bp  reason: default package */
public class bp extends GestureDetector.SimpleOnGestureListener {
    final /* synthetic */ cp a;

    bp(cp cpVar) {
        this.a = cpVar;
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.a.q = motionEvent.getX();
        this.a.r = motionEvent.getY();
        this.a.s = 1;
        return true;
    }
}
