package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

public class q extends RecyclerView.x {
    protected final LinearInterpolator i = new LinearInterpolator();
    protected final DecelerateInterpolator j = new DecelerateInterpolator();
    protected PointF k;
    private final DisplayMetrics l;
    private boolean m = false;
    private float n;
    protected int o = 0;
    protected int p = 0;

    public q(Context context) {
        this.l = context.getResources().getDisplayMetrics();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.RecyclerView.x
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void i(android.view.View r11, androidx.recyclerview.widget.RecyclerView.y r12, androidx.recyclerview.widget.RecyclerView.x.a r13) {
        /*
        // Method dump skipped, instructions count: 177
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.q.i(android.view.View, androidx.recyclerview.widget.RecyclerView$y, androidx.recyclerview.widget.RecyclerView$x$a):void");
    }

    public int m(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 == 0) {
            int i7 = i4 - i2;
            if (i7 > 0) {
                return i7;
            }
            int i8 = i5 - i3;
            if (i8 < 0) {
                return i8;
            }
            return 0;
        } else if (i6 == 1) {
            return i5 - i3;
        } else {
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
    }

    /* access modifiers changed from: protected */
    public float n(DisplayMetrics displayMetrics) {
        return 25.0f / ((float) displayMetrics.densityDpi);
    }

    /* access modifiers changed from: protected */
    public int o(int i2) {
        double p2 = (double) p(i2);
        Double.isNaN(p2);
        return (int) Math.ceil(p2 / 0.3356d);
    }

    /* access modifiers changed from: protected */
    public int p(int i2) {
        float abs = (float) Math.abs(i2);
        if (!this.m) {
            this.n = n(this.l);
            this.m = true;
        }
        return (int) Math.ceil((double) (abs * this.n));
    }
}
