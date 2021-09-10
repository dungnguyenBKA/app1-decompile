package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.view.LayoutInflater;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: m  reason: default package */
public class m extends ContextWrapper {
    private int a;
    private Resources.Theme b;
    private LayoutInflater c;
    private Resources d;

    public m() {
        super(null);
    }

    private void b() {
        if (this.b == null) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        this.b.applyStyle(this.a, true);
    }

    public int a() {
        return this.a;
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public Resources getResources() {
        if (this.d == null) {
            this.d = super.getResources();
        }
        return this.d;
    }

    @Override // android.content.Context, android.content.ContextWrapper
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.c == null) {
            this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.c;
    }

    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.a == 0) {
            this.a = R.style.k6;
        }
        b();
        return this.b;
    }

    public void setTheme(int i) {
        if (this.a != i) {
            this.a = i;
            b();
        }
    }

    public m(Context context, int i) {
        super(context);
        this.a = i;
    }

    public m(Context context, Resources.Theme theme) {
        super(context);
        this.b = theme;
    }
}
