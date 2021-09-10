package defpackage;

import android.content.Context;
import android.graphics.Rect;

/* renamed from: rc0  reason: default package */
public class rc0 implements qc0 {
    private mc0 a;
    private Context b;

    public rc0(Context context, mc0 mc0) {
        this.a = mc0;
        this.b = context;
    }

    @Override // defpackage.qc0
    public tc0[] a(Rect rect) {
        tc0[] tc0Arr = new tc0[8];
        for (int i = 0; i < 8; i++) {
            tc0Arr[i] = uc0.d(this.a, rect, this.b);
        }
        return tc0Arr;
    }

    @Override // defpackage.qc0
    public void destroy() {
        this.a.a();
    }
}
