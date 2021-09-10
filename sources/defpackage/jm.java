package defpackage;

import android.os.SystemClock;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: jm  reason: default package */
public class jm {
    private static ConcurrentHashMap<String, Long> a = new ConcurrentHashMap<>();

    public static boolean a(String str) {
        Objects.requireNonNull(km.a());
        return b(str, 250);
    }

    public static boolean b(String str, int i) {
        Long valueOf = Long.valueOf(SystemClock.elapsedRealtime());
        Long l = a.get(str);
        boolean z = true;
        if (l != null && (l.longValue() == -1 || valueOf.longValue() - l.longValue() < ((long) i))) {
            z = false;
        }
        if (z) {
            a.put(str, valueOf);
        }
        return z;
    }
}
