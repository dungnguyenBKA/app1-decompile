package defpackage;

import android.content.Context;
import android.graphics.Color;
import androidx.core.app.b;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: tx  reason: default package */
public class tx {
    private final boolean a;
    private final int b;
    private final int c;
    private final float d;

    public tx(Context context) {
        this.a = b.w0(context, R.attr.he, false);
        this.b = b.G(context, R.attr.hd, 0);
        this.c = b.G(context, R.attr.eh, 0);
        this.d = context.getResources().getDisplayMetrics().density;
    }

    public int a(int i, float f) {
        if (!this.a) {
            return i;
        }
        if (!(k1.d(i, 255) == this.c)) {
            return i;
        }
        float f2 = this.d;
        float f3 = 0.0f;
        if (f2 > 0.0f && f > 0.0f) {
            f3 = Math.min(((((float) Math.log1p((double) (f / f2))) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        }
        return k1.d(b.g0(k1.d(i, 255), this.b, f3), Color.alpha(i));
    }

    public boolean b() {
        return this.a;
    }
}
