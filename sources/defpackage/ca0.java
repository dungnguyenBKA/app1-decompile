package defpackage;

import android.content.Context;
import androidx.core.app.b;

/* renamed from: ca0  reason: default package */
public class ca0 {
    private boolean a;

    /* access modifiers changed from: package-private */
    public void a(Context context) {
        b.a(context, "Application Context cannot be null");
        if (!this.a) {
            this.a = true;
            ba0.a().c(context);
            context.getApplicationContext();
            ha0.c(context);
            y90.a().b(context);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.a;
    }
}
