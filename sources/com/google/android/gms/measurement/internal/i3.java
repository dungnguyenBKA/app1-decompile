package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

public final class i3 extends e5 {
    private char c = 0;
    private long d = -1;
    private String e;
    private final g3 f = new g3(this, 6, false, false);
    private final g3 g = new g3(this, 6, true, false);
    private final g3 h = new g3(this, 6, false, true);
    private final g3 i = new g3(this, 5, false, false);
    private final g3 j = new g3(this, 5, true, false);
    private final g3 k = new g3(this, 5, false, true);
    private final g3 l = new g3(this, 4, false, false);
    private final g3 m = new g3(this, 3, false, false);
    private final g3 n = new g3(this, 2, false, false);

    i3(j4 j4Var) {
        super(j4Var);
    }

    static String A(boolean z, Object obj) {
        String className;
        String str = "";
        if (obj == null) {
            return str;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l2 = (Long) obj;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(obj);
            }
            if (String.valueOf(obj).charAt(0) == '-') {
                str = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1)));
            long round2 = Math.round(Math.pow(10.0d, (double) valueOf.length()) - 4.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (obj instanceof Throwable) {
                Throwable th = (Throwable) obj;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String F = F(j4.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && F(className).equals(F)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i2++;
                }
                return sb2.toString();
            } else if (obj instanceof h3) {
                return h3.a((h3) obj);
            } else {
                if (z) {
                    return "-";
                }
                return String.valueOf(obj);
            }
        }
    }

    private static String F(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }

    protected static Object w(String str) {
        if (str == null) {
            return null;
        }
        return new h3(str);
    }

    static String z(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        String A = A(z, obj);
        String A2 = A(z, obj2);
        String A3 = A(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(A)) {
            sb.append(str2);
            sb.append(A);
            str2 = str3;
        }
        if (!TextUtils.isEmpty(A2)) {
            sb.append(str2);
            sb.append(A2);
        } else {
            str3 = str2;
        }
        if (!TextUtils.isEmpty(A3)) {
            sb.append(str3);
            sb.append(A3);
        }
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        return false;
    }

    public final g3 n() {
        return this.f;
    }

    public final g3 o() {
        return this.g;
    }

    public final g3 p() {
        return this.h;
    }

    public final g3 q() {
        return this.i;
    }

    public final g3 r() {
        return this.j;
    }

    public final g3 s() {
        return this.k;
    }

    public final g3 t() {
        return this.l;
    }

    public final g3 u() {
        return this.m;
    }

    public final g3 v() {
        return this.n;
    }

    /* access modifiers changed from: protected */
    public final void x(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(y(), i2)) {
            Log.println(i2, y(), z(false, str, obj, obj2, obj3));
        }
        if (!z2 && i2 >= 5) {
            Objects.requireNonNull(str, "null reference");
            g4 C = this.a.C();
            if (C == null) {
                Log.println(6, y(), "Scheduler not set. Not logging error/warn");
            } else if (!C.j()) {
                Log.println(6, y(), "Scheduler not initialized. Not logging error/warn");
            } else {
                C.q(new f3(this, i2 >= 9 ? 8 : i2, str, obj, obj2, obj3));
            }
        }
    }

    /* access modifiers changed from: protected */
    @EnsuresNonNull({"logTagDoNotUseDirectly"})
    public final String y() {
        String str;
        synchronized (this) {
            if (this.e == null) {
                if (this.a.L() != null) {
                    this.e = this.a.L();
                } else {
                    this.a.x().a.zzas();
                    this.e = "FA";
                }
            }
            Objects.requireNonNull(this.e, "null reference");
            str = this.e;
        }
        return str;
    }
}
