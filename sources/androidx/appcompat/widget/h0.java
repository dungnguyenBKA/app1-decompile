package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public class h0 extends w {
    private final WeakReference<Context> b;

    public h0(Context context, Resources resources) {
        super(resources);
        this.b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.w, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.b.get();
        if (!(drawable == null || context == null)) {
            v.d().p(context, i, drawable);
        }
        return drawable;
    }
}
