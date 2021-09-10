package com.google.firebase.installations;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class o {
    public static final long b = TimeUnit.HOURS.toSeconds(1);
    private static final Pattern c = Pattern.compile("\\AA[\\w-]{38}\\z");
    private static o d;
    public static final /* synthetic */ int e = 0;
    private final p50 a;

    private o(p50 p50) {
        this.a = p50;
    }

    public static o c() {
        p50 a2 = p50.a();
        if (d == null) {
            d = new o(a2);
        }
        return d;
    }

    static boolean e(String str) {
        return c.matcher(str).matches();
    }

    public long a() {
        Objects.requireNonNull(this.a);
        return System.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public boolean d(i50 i50) {
        if (TextUtils.isEmpty(i50.a())) {
            return true;
        }
        if (i50.b() + i50.g() < b() + b) {
            return true;
        }
        return false;
    }
}
