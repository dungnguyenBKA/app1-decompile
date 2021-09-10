package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

public class o0 extends Resources {
    private static boolean b = false;
    private final WeakReference<Context> a;

    public o0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.a = new WeakReference<>(context);
    }

    public static void a(boolean z) {
        b = z;
    }

    public static boolean b() {
        return b && Build.VERSION.SDK_INT <= 20;
    }

    /* access modifiers changed from: package-private */
    public final Drawable c(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.a.get();
        if (context != null) {
            return v.d().l(context, this, i);
        }
        return super.getDrawable(i);
    }
}
