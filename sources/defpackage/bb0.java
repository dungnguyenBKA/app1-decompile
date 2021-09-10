package defpackage;

import android.os.Build;
import android.text.TextUtils;

/* renamed from: bb0  reason: default package */
public class bb0 {
    private static bb0 b;
    ab0 a;

    private bb0() {
    }

    public static bb0 a() {
        if (b == null) {
            synchronized (bb0.class) {
                b = new bb0();
            }
        }
        return b;
    }

    public ab0 b() {
        ab0 ab0 = this.a;
        if (ab0 != null) {
            return ab0;
        }
        String lowerCase = Build.MANUFACTURER.toLowerCase();
        if (TextUtils.equals(lowerCase, "huawei")) {
            this.a = new eb0();
        } else if (TextUtils.equals(lowerCase, "xiaomi")) {
            this.a = new ib0();
        } else if (TextUtils.equals(lowerCase, "oppo")) {
            this.a = new fb0();
        } else if (TextUtils.equals(lowerCase, "vivo")) {
            this.a = new hb0();
        } else if (TextUtils.equals(lowerCase, "smartisan")) {
            this.a = new gb0();
        } else {
            this.a = new db0();
        }
        return this.a;
    }
}
