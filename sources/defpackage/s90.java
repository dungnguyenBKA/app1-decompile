package defpackage;

import android.text.TextUtils;

/* renamed from: s90  reason: default package */
public class s90 {
    private final String a;
    private final String b;

    private s90(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static s90 a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Name is null or empty");
        } else if (!TextUtils.isEmpty(str2)) {
            return new s90(str, str2);
        } else {
            throw new IllegalArgumentException("Version is null or empty");
        }
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }
}
