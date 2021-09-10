package defpackage;

import java.util.concurrent.ScheduledExecutorService;

@Deprecated
/* renamed from: uv  reason: default package */
public class uv {
    private static a a;

    /* renamed from: uv$a */
    public interface a {
        @Deprecated
        ScheduledExecutorService a();
    }

    @Deprecated
    public static synchronized a a() {
        a aVar;
        synchronized (uv.class) {
            if (a == null) {
                a = new vv();
            }
            aVar = a;
        }
        return aVar;
    }
}
