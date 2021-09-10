package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class ParticlesView extends View {
    private List<nc0> b = new ArrayList();
    private boolean c;
    private Handler d = new a();

    class a extends Handler {
        a() {
        }

        public void handleMessage(Message message) {
            ParticlesView.this.invalidate();
            ParticlesView.this.d.sendEmptyMessageDelayed(0, 10);
        }
    }

    public ParticlesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void b(List<nc0> list) {
        if (list != null) {
            this.b.addAll(list);
        }
    }

    public void c() {
        if (!this.b.isEmpty()) {
            for (nc0 nc0 : this.b) {
                nc0.a();
            }
        }
    }

    public void d() {
        if (!this.b.isEmpty()) {
            for (nc0 nc0 : this.b) {
                nc0.start();
            }
            this.d.removeMessages(0);
            this.d.sendEmptyMessageDelayed(0, 10);
            return;
        }
        throw new IllegalStateException("Must add at least one animator");
    }

    public void e() {
        this.d.removeMessages(0);
        if (!this.b.isEmpty()) {
            for (nc0 nc0 : this.b) {
                nc0.cancel();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c = true;
        if (!this.b.isEmpty()) {
            d();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c = false;
        e();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        for (nc0 nc0 : this.b) {
            nc0.c(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.c) {
            if (i != 0) {
                e();
            } else if (!this.b.isEmpty()) {
                d();
            }
        }
    }

    public ParticlesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
