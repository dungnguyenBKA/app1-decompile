package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class f0 extends ContextWrapper {
    private static final Object c = new Object();
    private static ArrayList<WeakReference<f0>> d;
    private final Resources a;
    private final Resources.Theme b;

    private f0(Context context) {
        super(context);
        if (o0.b()) {
            o0 o0Var = new o0(this, context.getResources());
            this.a = o0Var;
            Resources.Theme newTheme = o0Var.newTheme();
            this.b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.a = new h0(this, context.getResources());
        this.b = null;
    }

    public static Context a(Context context) {
        boolean z = false;
        if (!(context instanceof f0) && !(context.getResources() instanceof h0) && !(context.getResources() instanceof o0) && (Build.VERSION.SDK_INT < 21 || o0.b())) {
            z = true;
        }
        if (!z) {
            return context;
        }
        synchronized (c) {
            ArrayList<WeakReference<f0>> arrayList = d;
            if (arrayList == null) {
                d = new ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    WeakReference<f0> weakReference = d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        d.remove(size);
                    }
                }
                for (int size2 = d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<f0> weakReference2 = d.get(size2);
                    f0 f0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (f0Var != null && f0Var.getBaseContext() == context) {
                        return f0Var;
                    }
                }
            }
            f0 f0Var2 = new f0(context);
            d.add(new WeakReference<>(f0Var2));
            return f0Var2;
        }
    }

    public AssetManager getAssets() {
        return this.a.getAssets();
    }

    public Resources getResources() {
        return this.a;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        return theme == null ? super.getTheme() : theme;
    }

    public void setTheme(int i) {
        Resources.Theme theme = this.b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
