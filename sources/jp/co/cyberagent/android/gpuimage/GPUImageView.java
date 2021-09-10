package jp.co.cyberagent.android.gpuimage;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;

public class GPUImageView extends GLSurfaceView {
    private b b;

    public GPUImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b bVar = new b(getContext());
        this.b = bVar;
        bVar.d(this);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setBackgroundColor(int i) {
        this.b.a.r(i);
    }
}
