package defpackage;

import com.airbnb.lottie.j;
import java.util.Objects;

/* renamed from: zb  reason: default package */
public class zb {
    private static j a = new yb();

    public static void a(String str) {
        Objects.requireNonNull((yb) a);
    }

    public static void b(String str) {
        ((yb) a).a(str);
    }

    public static void c(String str, Throwable th) {
        ((yb) a).b(str, th);
    }
}
