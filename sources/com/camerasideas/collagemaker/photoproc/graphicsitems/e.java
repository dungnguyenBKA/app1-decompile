package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.content.Context;
import android.graphics.DrawFilter;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PointF;
import android.graphics.RectF;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;

public abstract class e extends b {
    protected int q;
    protected int r;
    protected int s;
    protected RectF t = new RectF();
    protected PointF u = new PointF();
    private RectF v = new RectF();
    protected DrawFilter w = new PaintFlagsDrawFilter(0, 7);

    public e() {
        Context b = CollageMakerApplication.b();
        this.b = b;
        this.q = c2.b(b, 5.0f);
        this.r = c2.b(this.b, 2.0f);
        this.s = c2.b(this.b, 2.0f);
    }

    public boolean B(RectF rectF) {
        if (rectF == null || rectF.isEmpty()) {
            return false;
        }
        this.v.set(k());
        this.v.inset(100.0f, 100.0f);
        if (RectF.intersects(rectF, this.v)) {
            return false;
        }
        PointF e = e();
        this.u = e;
        if (e.x < rectF.left - (this.v.width() / 2.0f)) {
            this.u.x = rectF.left - (this.v.width() / 2.0f);
        } else {
            if (this.u.x > (this.v.width() / 2.0f) + rectF.right) {
                this.u.x = (this.v.width() / 2.0f) + rectF.right;
            }
        }
        if (this.u.y < rectF.top - (this.v.height() / 2.0f)) {
            this.u.y = rectF.top - (this.v.height() / 2.0f);
            return true;
        }
        if (this.u.y <= (this.v.height() / 2.0f) + rectF.bottom) {
            return true;
        }
        this.u.y = (this.v.height() / 2.0f) + rectF.bottom;
        return true;
    }

    public PointF C() {
        return this.u;
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public RectF m() {
        this.t.set(0.0f, 0.0f, (float) this.g, (float) this.h);
        return this.t;
    }
}
