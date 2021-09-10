package defpackage;

import android.graphics.PointF;
import android.view.MotionEvent;

/* renamed from: dp  reason: default package */
public class dp {
    private a a;
    private PointF b = new PointF();
    private b c = b.IDLE;

    /* renamed from: dp$a */
    public interface a {
        boolean a();

        void b(float f, float f2);

        void c();
    }

    /* access modifiers changed from: private */
    /* renamed from: dp$b */
    public enum b {
        IN_PROGRESS,
        IDLE
    }

    public dp(a aVar) {
        this.a = aVar;
    }

    public boolean a(MotionEvent motionEvent) {
        b bVar = b.IDLE;
        b bVar2 = b.IN_PROGRESS;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            this.b.set(motionEvent.getX(0), motionEvent.getY(0));
            if (this.a.a()) {
                this.c = bVar2;
            } else {
                this.c = bVar;
            }
            return true;
        } else if (this.c != bVar2) {
            return false;
        } else {
            if (actionMasked != 2) {
                this.c = bVar;
                this.a.c();
            } else if (actionIndex != 0) {
                return false;
            } else {
                this.a.b(motionEvent.getX() - this.b.x, motionEvent.getY() - this.b.y);
                this.b.set(motionEvent.getX(), motionEvent.getY());
            }
            return true;
        }
    }
}
