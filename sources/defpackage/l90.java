package defpackage;

import android.view.View;
import androidx.core.app.b;

/* renamed from: l90  reason: default package */
public abstract class l90 {
    public static l90 a(m90 m90, n90 n90) {
        if (e90.b()) {
            b.a(m90, "AdSessionConfiguration is null");
            b.a(n90, "AdSessionContext is null");
            return new u90(m90, n90);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void b();

    public abstract void c(View view);

    public abstract void d();
}
