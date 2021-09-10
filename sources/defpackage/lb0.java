package defpackage;

import android.text.TextUtils;

/* renamed from: lb0  reason: default package */
public class lb0 {
    private String a;
    private jb0 b;
    private String c;

    public lb0(String str, String str2, jb0 jb0) {
        if (!TextUtils.isEmpty(str2)) {
            this.a = str;
            this.b = jb0;
            this.c = str2;
            return;
        }
        throw new IllegalArgumentException("Please set ADRequestList.ORDER_NULL as param.");
    }

    public jb0 a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.c;
    }
}
