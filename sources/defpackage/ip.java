package defpackage;

import android.graphics.PointF;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.camerasideas.collagemaker.photoproc.graphicsitems.e;
import org.apache.http.HttpStatus;

/* renamed from: ip  reason: default package */
public class ip implements Runnable {
    protected final View b;
    protected final float c;
    protected final float d;
    protected final long e;
    private final Interpolator f = new AccelerateDecelerateInterpolator();
    private e g;
    private float h;
    private float i;

    public ip(View view, e eVar) {
        eVar.h();
        eVar.h();
        float centerX = eVar.k().centerX();
        float centerY = eVar.k().centerY();
        this.b = view;
        this.c = centerX;
        this.d = centerY;
        this.e = System.currentTimeMillis();
        this.g = eVar;
        PointF C = eVar.C();
        float f2 = 0.0f;
        this.h = C != null ? C.x : 0.0f;
        this.i = C != null ? C.y : f2;
    }

    public void run() {
        if (this.g != null && this.b != null) {
            float interpolation = this.f.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.e)) * 1.0f) / ((float) HttpStatus.SC_OK)));
            RectF k = this.g.k();
            this.g.w(((this.h - this.c) * interpolation) - (k.centerX() - this.c), ((this.i - this.d) * interpolation) - (k.centerY() - this.d));
            this.b.invalidate();
            if (interpolation < 1.0f) {
                this.b.postOnAnimation(this);
            }
        }
    }
}
