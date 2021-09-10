package defpackage;

import android.content.Context;
import com.google.firebase.components.d;
import com.google.firebase.components.q;

/* renamed from: x50  reason: default package */
public class x50 {

    /* renamed from: x50$a */
    public interface a<T> {
        String a(T t);
    }

    public static d<?> a(String str, String str2) {
        return d.f(new r50(str, str2), v50.class);
    }

    public static d<?> b(String str, a<Context> aVar) {
        d.b g = d.g(v50.class);
        g.b(q.h(Context.class));
        g.e(w50.b(str, aVar));
        return g.c();
    }
}
