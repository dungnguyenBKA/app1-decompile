package defpackage;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;

/* renamed from: p2  reason: default package */
public final class p2 {
    private final a a;

    /* access modifiers changed from: package-private */
    /* renamed from: p2$a */
    public interface a {
    }

    /* access modifiers changed from: package-private */
    /* renamed from: p2$b */
    public static class b implements a {
        private final GestureDetector a;

        b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.a = new GestureDetector(context, onGestureListener, handler);
        }

        public boolean a(MotionEvent motionEvent) {
            return this.a.onTouchEvent(motionEvent);
        }
    }

    public p2(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this.a = new b(context, onGestureListener, null);
    }

    public boolean a(MotionEvent motionEvent) {
        return ((b) this.a).a(motionEvent);
    }
}
