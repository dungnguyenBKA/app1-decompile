package defpackage;

import com.airbnb.lottie.e;

/* renamed from: q8  reason: default package */
public class q8 {
    private static final q8 b = new q8();
    private final c0<String, e> a = new c0<>(20);

    q8() {
    }

    public static q8 b() {
        return b;
    }

    public e a(String str) {
        return this.a.get(str);
    }

    public void c(String str, e eVar) {
        this.a.put(str, eVar);
    }
}
