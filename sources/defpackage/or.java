package defpackage;

import android.content.Context;
import android.util.TypedValue;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: or  reason: default package */
public abstract class or {
    private Context a;

    public or(Context context) {
        this.a = context;
    }

    /* access modifiers changed from: protected */
    public int a(float f) {
        return (int) TypedValue.applyDimension(1, f, this.a.getResources().getDisplayMetrics());
    }

    public int b() {
        return this.a.getResources().getDimensionPixelOffset(R.dimen.p_);
    }

    /* access modifiers changed from: protected */
    public int c(float f) {
        return (int) TypedValue.applyDimension(2, f, this.a.getResources().getDisplayMetrics());
    }
}
