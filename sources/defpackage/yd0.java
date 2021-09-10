package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.Objects;

/* renamed from: yd0  reason: default package */
public final class yd0 {
    private static final xd0 a;

    /* renamed from: yd0$a */
    private static final class a {
        static final xd0 a = new zd0(new Handler(Looper.getMainLooper()));
    }

    static {
        try {
            xd0 xd0 = a.a;
            if (xd0 != null) {
                a = xd0;
                return;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw kf0.a(th);
        }
    }

    public static xd0 a() {
        xd0 xd0 = a;
        Objects.requireNonNull(xd0, "scheduler == null");
        return xd0;
    }
}
