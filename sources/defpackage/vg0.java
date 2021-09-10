package defpackage;

import com.facebook.ads.AdError;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* renamed from: vg0  reason: default package */
public final class vg0 {
    private static final Pattern j = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern l = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private final String a;
    private final String b;
    private final long c;
    private final String d;
    private final String e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final boolean i;

    private vg0(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.i = z3;
        this.h = z4;
    }

    private static int a(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x01ad, code lost:
        if (r2 == false) goto L_0x01f0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d6, code lost:
        if (r19 <= 0) goto L_0x00eb;
     */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x01f4  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x01ff A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<defpackage.vg0> c(defpackage.dh0 r33, defpackage.ch0 r34) {
        /*
        // Method dump skipped, instructions count: 527
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vg0.c(dh0, ch0):java.util.List");
    }

    private static long d(String str, int i2, int i3) {
        int a2 = a(str, i2, i3, false);
        Matcher matcher = m.matcher(str);
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        while (a2 < i3) {
            int a3 = a(str, a2 + 1, i3, true);
            matcher.region(a2, a3);
            if (i5 == -1 && matcher.usePattern(m).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
                i8 = Integer.parseInt(matcher.group(2));
                i9 = Integer.parseInt(matcher.group(3));
            } else if (i6 != -1 || !matcher.usePattern(l).matches()) {
                if (i7 == -1) {
                    Pattern pattern = k;
                    if (matcher.usePattern(pattern).matches()) {
                        i7 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                    }
                }
                if (i4 == -1 && matcher.usePattern(j).matches()) {
                    i4 = Integer.parseInt(matcher.group(1));
                }
            } else {
                i6 = Integer.parseInt(matcher.group(1));
            }
            a2 = a(str, a3 + 1, i3, false);
        }
        if (i4 >= 70 && i4 <= 99) {
            i4 += 1900;
        }
        if (i4 >= 0 && i4 <= 69) {
            i4 += AdError.SERVER_ERROR_CODE;
        }
        if (i4 < 1601) {
            throw new IllegalArgumentException();
        } else if (i7 == -1) {
            throw new IllegalArgumentException();
        } else if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        } else if (i5 < 0 || i5 > 23) {
            throw new IllegalArgumentException();
        } else if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        } else if (i9 < 0 || i9 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(rh0.n);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i4);
            gregorianCalendar.set(2, i7 - 1);
            gregorianCalendar.set(5, i6);
            gregorianCalendar.set(11, i5);
            gregorianCalendar.set(12, i8);
            gregorianCalendar.set(13, i9);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    public String b() {
        return this.a;
    }

    public String e() {
        return this.b;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof vg0)) {
            return false;
        }
        vg0 vg0 = (vg0) obj;
        if (vg0.a.equals(this.a) && vg0.b.equals(this.b) && vg0.d.equals(this.d) && vg0.e.equals(this.e) && vg0.c == this.c && vg0.f == this.f && vg0.g == this.g && vg0.h == this.h && vg0.i == this.i) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int w = ic.w(this.e, ic.w(this.d, ic.w(this.b, ic.w(this.a, 527, 31), 31), 31), 31);
        long j2 = this.c;
        return ((((((((w + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (!this.f ? 1 : 0)) * 31) + (!this.g ? 1 : 0)) * 31) + (!this.h ? 1 : 0)) * 31) + (!this.i ? 1 : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            if (this.c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(hi0.a(new Date(this.c)));
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
