package defpackage;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.v4.media.session.PlaybackStateCompat;

/* renamed from: nc0  reason: default package */
public class nc0 extends ValueAnimator {
    private tc0[] b;
    private Paint c;
    private qc0 d;

    public nc0(qc0 qc0, Rect rect, Paint paint) {
        this.d = qc0;
        setFloatValues(0.0f, 1.0f);
        setDuration(PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID);
        this.c = paint;
        this.b = qc0.a(rect);
    }

    public void a() {
        this.d.destroy();
    }

    public void b() {
        this.b = null;
        this.d = null;
    }

    public void c(Canvas canvas) {
        if (isStarted()) {
            for (tc0 tc0 : this.b) {
                tc0.a(canvas, this.c, ((Float) getAnimatedValue()).floatValue());
            }
        }
    }
}
