package defpackage;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* renamed from: ak0  reason: default package */
public class ak0 implements Serializable, Comparable<ak0> {
    static final char[] e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ak0 f = i(new byte[0]);
    final byte[] b;
    transient int c;
    transient String d;

    ak0(byte[] bArr) {
        this.b = bArr;
    }

    public static ak0 b(String str) {
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((c(str.charAt(i2)) << 4) + c(str.charAt(i2 + 1)));
            }
            return i(bArr);
        }
        throw new IllegalArgumentException(ic.i("Unexpected hex string: ", str));
    }

    private static int c(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c2);
            }
        }
        return (c2 - c3) + 10;
    }

    private ak0 d(String str) {
        try {
            return i(MessageDigest.getInstance(str).digest(this.b));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static ak0 e(String str) {
        if (str != null) {
            ak0 ak0 = new ak0(str.getBytes(tk0.a));
            ak0.d = str;
            return ak0;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static ak0 i(byte... bArr) {
        if (bArr != null) {
            return new ak0((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public String a() {
        return wj0.a(this.b);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0027 A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0029 A[RETURN, SYNTHETIC] */
    @Override // java.lang.Comparable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int compareTo(defpackage.ak0 r10) {
        /*
            r9 = this;
            ak0 r10 = (defpackage.ak0) r10
            int r0 = r9.m()
            int r1 = r10.m()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L_0x0010:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L_0x002b
            byte r7 = r9.f(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.f(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L_0x0025
            int r4 = r4 + 1
            goto L_0x0010
        L_0x0025:
            if (r7 >= r8) goto L_0x0029
        L_0x0027:
            r3 = -1
            goto L_0x0031
        L_0x0029:
            r3 = 1
            goto L_0x0031
        L_0x002b:
            if (r0 != r1) goto L_0x002e
            goto L_0x0031
        L_0x002e:
            if (r0 >= r1) goto L_0x0029
            goto L_0x0027
        L_0x0031:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ak0.compareTo(java.lang.Object):int");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ak0) {
            ak0 ak0 = (ak0) obj;
            int m = ak0.m();
            byte[] bArr = this.b;
            if (m != bArr.length || !ak0.k(0, bArr, 0, bArr.length)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public byte f(int i) {
        return this.b[i];
    }

    public String g() {
        byte[] bArr = this.b;
        char[] cArr = new char[(bArr.length * 2)];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = e;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    /* access modifiers changed from: package-private */
    public byte[] h() {
        return this.b;
    }

    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.b);
        this.c = hashCode;
        return hashCode;
    }

    public boolean j(int i, ak0 ak0, int i2, int i3) {
        return ak0.k(i2, this.b, i, i3);
    }

    public boolean k(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.b;
            return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && tk0.a(bArr2, i, bArr, i2, i3);
        }
    }

    public ak0 l() {
        return d("SHA-256");
    }

    public int m() {
        return this.b.length;
    }

    public ak0 n(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.b;
            if (i2 <= bArr.length) {
                int i3 = i2 - i;
                if (i3 < 0) {
                    throw new IllegalArgumentException("endIndex < beginIndex");
                } else if (i == 0 && i2 == bArr.length) {
                    return this;
                } else {
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, i, bArr2, 0, i3);
                    return new ak0(bArr2);
                }
            } else {
                throw new IllegalArgumentException(ic.k(ic.q("endIndex > length("), this.b.length, ")"));
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0");
        }
    }

    public ak0 o() {
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i2] = (byte) (b3 + 32);
                    }
                }
                return new ak0(bArr2);
            }
        }
    }

    public byte[] p() {
        return (byte[]) this.b.clone();
    }

    public String q() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.b, tk0.a);
        this.d = str2;
        return str2;
    }

    /* access modifiers changed from: package-private */
    public void r(xj0 xj0) {
        byte[] bArr = this.b;
        xj0.t0(bArr, 0, bArr.length);
    }

    public String toString() {
        if (this.b.length == 0) {
            return "[size=0]";
        }
        String q = q();
        int length = q.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                i = q.length();
                break;
            } else if (i2 == 64) {
                break;
            } else {
                int codePointAt = q.codePointAt(i);
                if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                    i2++;
                    i += Character.charCount(codePointAt);
                }
            }
        }
        i = -1;
        if (i != -1) {
            String replace = q.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (i >= q.length()) {
                return ic.j("[text=", replace, "]");
            }
            StringBuilder q2 = ic.q("[size=");
            q2.append(this.b.length);
            q2.append(" text=");
            q2.append(replace);
            q2.append("…]");
            return q2.toString();
        } else if (this.b.length <= 64) {
            StringBuilder q3 = ic.q("[hex=");
            q3.append(g());
            q3.append("]");
            return q3.toString();
        } else {
            StringBuilder q4 = ic.q("[size=");
            q4.append(this.b.length);
            q4.append(" hex=");
            q4.append(n(0, 64).g());
            q4.append("…]");
            return q4.toString();
        }
    }
}
