package com.google.android.gms.measurement.internal;

import android.os.Bundle;

public final class f {
    public static final f c = new f(null, null);
    private final Boolean a;
    private final Boolean b;

    public f(Boolean bool, Boolean bool2) {
        this.a = bool;
        this.b = bool2;
    }

    public static String a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string != null && o(string) == null) {
            return string;
        }
        String string2 = bundle.getString("analytics_storage");
        if (string2 == null || o(string2) != null) {
            return null;
        }
        return string2;
    }

    public static f b(Bundle bundle) {
        if (bundle == null) {
            return c;
        }
        return new f(o(bundle.getString("ad_storage")), o(bundle.getString("analytics_storage")));
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.measurement.internal.f c(java.lang.String r7) {
        /*
            r0 = 0
            if (r7 == 0) goto L_0x0038
            int r1 = r7.length()
            r2 = 49
            r3 = 48
            r4 = 3
            if (r1 < r4) goto L_0x001e
            r1 = 2
            char r1 = r7.charAt(r1)
            if (r1 == r3) goto L_0x001b
            if (r1 == r2) goto L_0x0018
            goto L_0x001e
        L_0x0018:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            goto L_0x001f
        L_0x001b:
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            goto L_0x001f
        L_0x001e:
            r1 = r0
        L_0x001f:
            int r5 = r7.length()
            r6 = 4
            if (r5 < r6) goto L_0x0035
            char r7 = r7.charAt(r4)
            if (r7 == r3) goto L_0x0032
            if (r7 == r2) goto L_0x002f
            goto L_0x0035
        L_0x002f:
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            goto L_0x0034
        L_0x0032:
            java.lang.Boolean r7 = java.lang.Boolean.FALSE
        L_0x0034:
            r0 = r7
        L_0x0035:
            r7 = r0
            r0 = r1
            goto L_0x0039
        L_0x0038:
            r7 = r0
        L_0x0039:
            com.google.android.gms.measurement.internal.f r1 = new com.google.android.gms.measurement.internal.f
            r1.<init>(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.f.c(java.lang.String):com.google.android.gms.measurement.internal.f");
    }

    static Boolean j(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue() && bool2.booleanValue()) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static boolean m(int i, int i2) {
        return i <= i2;
    }

    static final int n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    private static Boolean o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final String d() {
        char c2;
        StringBuilder sb = new StringBuilder("G1");
        Boolean bool = this.a;
        char c3 = '0';
        if (bool == null) {
            c2 = '-';
        } else {
            c2 = bool.booleanValue() ? '1' : '0';
        }
        sb.append(c2);
        Boolean bool2 = this.b;
        if (bool2 == null) {
            c3 = '-';
        } else if (bool2.booleanValue()) {
            c3 = '1';
        }
        sb.append(c3);
        return sb.toString();
    }

    public final Boolean e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (n(this.a) == n(fVar.a) && n(this.b) == n(fVar.b)) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        Boolean bool = this.a;
        return bool == null || bool.booleanValue();
    }

    public final Boolean g() {
        return this.b;
    }

    public final boolean h() {
        Boolean bool = this.b;
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        return ((n(this.a) + 527) * 31) + n(this.b);
    }

    public final boolean i(f fVar) {
        Boolean bool = this.a;
        Boolean bool2 = Boolean.FALSE;
        if (bool != bool2 || fVar.a == bool2) {
            return this.b == bool2 && fVar.b != bool2;
        }
        return true;
    }

    public final f k(f fVar) {
        return new f(j(this.a, fVar.a), j(this.b, fVar.b));
    }

    public final f l(f fVar) {
        Boolean bool = this.a;
        if (bool == null) {
            bool = fVar.a;
        }
        Boolean bool2 = this.b;
        if (bool2 == null) {
            bool2 = fVar.b;
        }
        return new f(bool, bool2);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.a;
        String str2 = "denied";
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            if (true != bool.booleanValue()) {
                str = str2;
            } else {
                str = "granted";
            }
            sb.append(str);
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            if (true == bool2.booleanValue()) {
                str2 = "granted";
            }
            sb.append(str2);
        }
        return sb.toString();
    }
}
