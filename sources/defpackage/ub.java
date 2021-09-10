package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: ub  reason: default package */
public abstract class ub implements Closeable {
    private static final String[] f = new String[128];
    int b;
    int[] c = new int[32];
    String[] d = new String[32];
    int[] e = new int[32];

    /* renamed from: ub$a */
    public static final class a {
        final String[] a;
        final kk0 b;

        private a(String[] strArr, kk0 kk0) {
            this.a = strArr;
            this.b = kk0;
        }

        public static a a(String... strArr) {
            try {
                ak0[] ak0Arr = new ak0[strArr.length];
                xj0 xj0 = new xj0();
                for (int i = 0; i < strArr.length; i++) {
                    ub.j(xj0, strArr[i]);
                    xj0.readByte();
                    ak0Arr[i] = xj0.j0();
                }
                return new a((String[]) strArr.clone(), kk0.b(ak0Arr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: ub$b */
    public enum b {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i = 0; i <= 31; i++) {
            f[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    ub() {
    }

    static void j(yj0 yj0, String str) {
        String str2;
        String[] strArr = f;
        xj0 xj0 = (xj0) yj0;
        xj0.u0(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
            } else if (charAt == 8232) {
                str2 = "\\u2028";
            } else if (charAt == 8233) {
                str2 = "\\u2029";
            }
            if (i < i2) {
                xj0.A0(str, i, i2);
            }
            xj0.z0(str2);
            i = i2 + 1;
        }
        if (i < length) {
            xj0.A0(str, i, length);
        }
        xj0.u0(34);
    }

    public static ub n0(zj0 zj0) {
        return new vb(zj0);
    }

    public abstract void L();

    public abstract void S();

    public abstract void V();

    public abstract boolean b0();

    public final String getPath() {
        int i = this.b;
        int[] iArr = this.c;
        String[] strArr = this.d;
        int[] iArr2 = this.e;
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    public abstract boolean i0();

    public abstract double j0();

    public abstract int k0();

    public abstract String l0();

    public abstract String m0();

    public abstract void o();

    public abstract b o0();

    /* access modifiers changed from: package-private */
    public final void p0(int i) {
        int i2 = this.b;
        int[] iArr = this.c;
        if (i2 == iArr.length) {
            if (i2 != 256) {
                this.c = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.d;
                this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.e;
                this.e = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                StringBuilder q = ic.q("Nesting too deep at ");
                q.append(getPath());
                throw new sb(q.toString());
            }
        }
        int[] iArr3 = this.c;
        int i3 = this.b;
        this.b = i3 + 1;
        iArr3[i3] = i;
    }

    public abstract int q0(a aVar);

    public abstract void r0();

    public abstract void s0();

    /* access modifiers changed from: package-private */
    public final tb t0(String str) {
        StringBuilder r = ic.r(str, " at path ");
        r.append(getPath());
        throw new tb(r.toString());
    }
}
