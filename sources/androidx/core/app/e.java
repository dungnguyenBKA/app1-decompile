package androidx.core.app;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

public class e {
    final Bundle a;
    private IconCompat b;
    private final l[] c;
    private final l[] d;
    private boolean e;
    boolean f;
    private final int g;
    private final boolean h;
    @Deprecated
    public int i;
    public CharSequence j;
    public PendingIntent k;

    public e(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        IconCompat a2 = i2 == 0 ? null : IconCompat.a(null, "", i2);
        Bundle bundle = new Bundle();
        this.f = true;
        this.b = a2;
        if (a2 != null && a2.d() == 2) {
            this.i = a2.b();
        }
        this.j = g.b(charSequence);
        this.k = pendingIntent;
        this.a = bundle;
        this.c = null;
        this.d = null;
        this.e = true;
        this.g = 0;
        this.f = true;
        this.h = false;
    }

    public boolean a() {
        return this.e;
    }

    public l[] b() {
        return this.d;
    }

    public IconCompat c() {
        int i2;
        if (this.b == null && (i2 = this.i) != 0) {
            this.b = IconCompat.a(null, "", i2);
        }
        return this.b;
    }

    public l[] d() {
        return this.c;
    }

    public int e() {
        return this.g;
    }

    public boolean f() {
        return this.h;
    }
}
