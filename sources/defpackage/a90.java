package defpackage;

import com.vungle.warren.error.VungleException;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: a90  reason: default package */
public class a90 implements Closeable {
    private static final char[] q = ")]}'\n".toCharArray();
    private final Reader b;
    private boolean c = false;
    private final char[] d = new char[1024];
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    int i = 0;
    private long j;
    private int k;
    private String l;
    private int[] m;
    private int n;
    private String[] o;
    private int[] p;

    /* renamed from: a90$a */
    class a extends t70 {
        a() {
        }

        @Override // defpackage.t70
        public void a(a90 a90) {
            if (a90 instanceof i80) {
                ((i80) a90).I0();
                return;
            }
            int i = a90.i;
            if (i == 0) {
                i = a90.S();
            }
            if (i == 13) {
                a90.i = 9;
            } else if (i == 12) {
                a90.i = 8;
            } else if (i == 14) {
                a90.i = 10;
            } else {
                StringBuilder q = ic.q("Expected a name but was ");
                q.append(a90.x0());
                q.append(a90.m0());
                throw new IllegalStateException(q.toString());
            }
        }
    }

    static {
        t70.a = new a();
    }

    public a90(Reader reader) {
        int[] iArr = new int[32];
        this.m = iArr;
        this.n = 0;
        this.n = 0 + 1;
        iArr[0] = 6;
        this.o = new String[32];
        this.p = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.b = reader;
    }

    private void B0(char c2) {
        char[] cArr = this.d;
        do {
            int i2 = this.e;
            int i3 = this.f;
            while (i2 < i3) {
                int i4 = i2 + 1;
                char c3 = cArr[i2];
                if (c3 == c2) {
                    this.e = i4;
                    return;
                } else if (c3 == '\\') {
                    this.e = i4;
                    z0();
                    i2 = this.e;
                    i3 = this.f;
                } else {
                    if (c3 == '\n') {
                        this.g++;
                        this.h = i4;
                    }
                    i2 = i4;
                }
            }
            this.e = i2;
        } while (i0(1));
        E0("Unterminated string");
        throw null;
    }

    private void C0() {
        char c2;
        do {
            if (this.e < this.f || i0(1)) {
                char[] cArr = this.d;
                int i2 = this.e;
                int i3 = i2 + 1;
                this.e = i3;
                c2 = cArr[i2];
                if (c2 == '\n') {
                    this.g++;
                    this.h = i3;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != '\r');
    }

    private IOException E0(String str) {
        StringBuilder q2 = ic.q(str);
        q2.append(m0());
        throw new d90(q2.toString());
    }

    private void L() {
        if (!this.c) {
            E0("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    private boolean i0(int i2) {
        int i3;
        int i4;
        char[] cArr = this.d;
        int i5 = this.h;
        int i6 = this.e;
        this.h = i5 - i6;
        int i7 = this.f;
        if (i7 != i6) {
            int i8 = i7 - i6;
            this.f = i8;
            System.arraycopy(cArr, i6, cArr, 0, i8);
        } else {
            this.f = 0;
        }
        this.e = 0;
        do {
            Reader reader = this.b;
            int i9 = this.f;
            int read = reader.read(cArr, i9, cArr.length - i9);
            if (read == -1) {
                return false;
            }
            i3 = this.f + read;
            this.f = i3;
            if (this.g == 0 && (i4 = this.h) == 0 && i3 > 0 && cArr[0] == 65279) {
                this.e++;
                this.h = i4 + 1;
                i2++;
                continue;
            }
        } while (i3 < i2);
        return true;
    }

    private boolean l0(char c2) {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (!(c2 == '/' || c2 == '=')) {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        L();
        return false;
    }

    private int s0(boolean z) {
        char[] cArr = this.d;
        int i2 = this.e;
        int i3 = this.f;
        while (true) {
            boolean z2 = true;
            if (i2 == i3) {
                this.e = i2;
                if (i0(1)) {
                    i2 = this.e;
                    i3 = this.f;
                } else if (!z) {
                    return -1;
                } else {
                    StringBuilder q2 = ic.q("End of input");
                    q2.append(m0());
                    throw new EOFException(q2.toString());
                }
            }
            int i4 = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == '\n') {
                this.g++;
                this.h = i4;
            } else if (!(c2 == ' ' || c2 == '\r' || c2 == '\t')) {
                if (c2 == '/') {
                    this.e = i4;
                    if (i4 == i3) {
                        this.e = i4 - 1;
                        boolean i0 = i0(2);
                        this.e++;
                        if (!i0) {
                            return c2;
                        }
                    }
                    L();
                    int i5 = this.e;
                    char c3 = cArr[i5];
                    if (c3 == '*') {
                        this.e = i5 + 1;
                        while (true) {
                            if (this.e + 2 > this.f && !i0(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.d;
                            int i6 = this.e;
                            if (cArr2[i6] != '\n') {
                                for (int i7 = 0; i7 < 2; i7++) {
                                    if (this.d[this.e + i7] == "*/".charAt(i7)) {
                                    }
                                }
                                break;
                            }
                            this.g++;
                            this.h = i6 + 1;
                            this.e++;
                        }
                        if (z2) {
                            i2 = this.e + 2;
                            i3 = this.f;
                        } else {
                            E0("Unterminated comment");
                            throw null;
                        }
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.e = i5 + 1;
                        C0();
                        i2 = this.e;
                        i3 = this.f;
                    }
                } else if (c2 == '#') {
                    this.e = i4;
                    L();
                    C0();
                    i2 = this.e;
                    i3 = this.f;
                } else {
                    this.e = i4;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005d, code lost:
        if (r2 != null) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005f, code lost:
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r3) * 2, 16));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006d, code lost:
        r2.append(r0, r3, r3 - r3);
        r10.e = r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String u0(char r11) {
        /*
        // Method dump skipped, instructions count: 131
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a90.u0(char):java.lang.String");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x004a, code lost:
        L();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String w0() {
        /*
        // Method dump skipped, instructions count: 166
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a90.w0():java.lang.String");
    }

    private void y0(int i2) {
        int i3 = this.n;
        int[] iArr = this.m;
        if (i3 == iArr.length) {
            int i4 = i3 * 2;
            this.m = Arrays.copyOf(iArr, i4);
            this.p = Arrays.copyOf(this.p, i4);
            this.o = (String[]) Arrays.copyOf(this.o, i4);
        }
        int[] iArr2 = this.m;
        int i5 = this.n;
        this.n = i5 + 1;
        iArr2[i5] = i2;
    }

    private char z0() {
        int i2;
        int i3;
        if (this.e != this.f || i0(1)) {
            char[] cArr = this.d;
            int i4 = this.e;
            int i5 = i4 + 1;
            this.e = i5;
            char c2 = cArr[i4];
            if (c2 == '\n') {
                this.g++;
                this.h = i5;
            } else if (!(c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\')) {
                if (c2 == 'b') {
                    return '\b';
                }
                if (c2 == 'f') {
                    return '\f';
                }
                if (c2 == 'n') {
                    return '\n';
                }
                if (c2 == 'r') {
                    return '\r';
                }
                if (c2 == 't') {
                    return '\t';
                }
                if (c2 != 'u') {
                    E0("Invalid escape sequence");
                    throw null;
                } else if (i5 + 4 <= this.f || i0(4)) {
                    char c3 = 0;
                    int i6 = this.e;
                    int i7 = i6 + 4;
                    while (i6 < i7) {
                        char c4 = this.d[i6];
                        char c5 = (char) (c3 << 4);
                        if (c4 < '0' || c4 > '9') {
                            if (c4 >= 'a' && c4 <= 'f') {
                                i3 = c4 - 'a';
                            } else if (c4 < 'A' || c4 > 'F') {
                                StringBuilder q2 = ic.q("\\u");
                                q2.append(new String(this.d, this.e, 4));
                                throw new NumberFormatException(q2.toString());
                            } else {
                                i3 = c4 - 'A';
                            }
                            i2 = i3 + 10;
                        } else {
                            i2 = c4 - '0';
                        }
                        c3 = (char) (i2 + c5);
                        i6++;
                    }
                    this.e += 4;
                    return c3;
                } else {
                    E0("Unterminated escape sequence");
                    throw null;
                }
            }
            return c2;
        }
        E0("Unterminated escape sequence");
        throw null;
    }

    public final void A0(boolean z) {
        this.c = z;
    }

    public void D0() {
        int i2;
        int i3 = 0;
        do {
            int i4 = this.i;
            if (i4 == 0) {
                i4 = S();
            }
            if (i4 == 3) {
                y0(1);
            } else if (i4 == 1) {
                y0(3);
            } else {
                if (i4 == 4) {
                    this.n--;
                } else if (i4 == 2) {
                    this.n--;
                } else if (i4 == 14 || i4 == 10) {
                    while (true) {
                        i2 = 0;
                        while (true) {
                            int i5 = this.e + i2;
                            if (i5 < this.f) {
                                char c2 = this.d[i5];
                                if (!(c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ')) {
                                    if (c2 != '#') {
                                        if (c2 != ',') {
                                            if (!(c2 == '/' || c2 == '=')) {
                                                if (!(c2 == '{' || c2 == '}' || c2 == ':')) {
                                                    if (c2 != ';') {
                                                        switch (c2) {
                                                            case '[':
                                                            case ']':
                                                                break;
                                                            case '\\':
                                                                break;
                                                            default:
                                                                i2++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                this.e = i5;
                                if (!i0(1)) {
                                }
                            }
                        }
                    }
                    L();
                    this.e += i2;
                    this.i = 0;
                } else if (i4 == 8 || i4 == 12) {
                    B0('\'');
                    this.i = 0;
                } else if (i4 == 9 || i4 == 13) {
                    B0('\"');
                    this.i = 0;
                } else {
                    if (i4 == 16) {
                        this.e += this.k;
                    }
                    this.i = 0;
                }
                i3--;
                this.i = 0;
            }
            i3++;
            this.i = 0;
        } while (i3 != 0);
        int[] iArr = this.p;
        int i6 = this.n;
        int i7 = i6 - 1;
        iArr[i7] = iArr[i7] + 1;
        this.o[i6 - 1] = "null";
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0205, code lost:
        if (l0(r6) != false) goto L_0x018a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x0207, code lost:
        if (r13 != 2) goto L_0x022b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0209, code lost:
        if (r15 == false) goto L_0x022b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x020f, code lost:
        if (r10 != Long.MIN_VALUE) goto L_0x0213;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x0211, code lost:
        if (r16 == false) goto L_0x022b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x0217, code lost:
        if (r10 != 0) goto L_0x021b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x0219, code lost:
        if (r16 != false) goto L_0x022b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x021b, code lost:
        if (r16 == false) goto L_0x021e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x021e, code lost:
        r10 = -r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x021f, code lost:
        r19.j = r10;
        r19.e += r9;
        r6 = 15;
        r19.i = 15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x022b, code lost:
        if (r13 == 2) goto L_0x0233;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x022e, code lost:
        if (r13 == 4) goto L_0x0233;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x0231, code lost:
        if (r13 != 7) goto L_0x018a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x0233, code lost:
        r19.k = r9;
        r6 = 16;
        r19.i = 16;
     */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0174 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0175  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int S() {
        /*
        // Method dump skipped, instructions count: 795
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a90.S():int");
    }

    public void V() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 4) {
            int i3 = this.n - 1;
            this.n = i3;
            int[] iArr = this.p;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected END_ARRAY but was ");
        q2.append(x0());
        q2.append(m0());
        throw new IllegalStateException(q2.toString());
    }

    public void b0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 2) {
            int i3 = this.n - 1;
            this.n = i3;
            this.o[i3] = null;
            int[] iArr = this.p;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected END_OBJECT but was ");
        q2.append(x0());
        q2.append(m0());
        throw new IllegalStateException(q2.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.b.close();
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = this.n;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.m[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.p[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.o;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public void j() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 3) {
            y0(1);
            this.p[this.n - 1] = 0;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected BEGIN_ARRAY but was ");
        q2.append(x0());
        q2.append(m0());
        throw new IllegalStateException(q2.toString());
    }

    public boolean j0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final boolean k0() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public String m0() {
        return " at line " + (this.g + 1) + " column " + ((this.e - this.h) + 1) + " path " + getPath();
    }

    public boolean n0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 5) {
            this.i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.i = 0;
            int[] iArr2 = this.p;
            int i4 = this.n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            StringBuilder q2 = ic.q("Expected a boolean but was ");
            q2.append(x0());
            q2.append(m0());
            throw new IllegalStateException(q2.toString());
        }
    }

    public void o() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 1) {
            y0(3);
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected BEGIN_OBJECT but was ");
        q2.append(x0());
        q2.append(m0());
        throw new IllegalStateException(q2.toString());
    }

    public double o0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 15) {
            this.i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return (double) this.j;
        }
        if (i2 == 16) {
            this.l = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else if (i2 == 8 || i2 == 9) {
            this.l = u0(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.l = w0();
        } else if (i2 != 11) {
            StringBuilder q2 = ic.q("Expected a double but was ");
            q2.append(x0());
            q2.append(m0());
            throw new IllegalStateException(q2.toString());
        }
        this.i = 11;
        double parseDouble = Double.parseDouble(this.l);
        if (this.c || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.l = null;
            this.i = 0;
            int[] iArr2 = this.p;
            int i4 = this.n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new d90("JSON forbids NaN and infinities: " + parseDouble + m0());
    }

    public int p0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 15) {
            long j2 = this.j;
            int i3 = (int) j2;
            if (j2 == ((long) i3)) {
                this.i = 0;
                int[] iArr = this.p;
                int i4 = this.n - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            StringBuilder q2 = ic.q("Expected an int but was ");
            q2.append(this.j);
            q2.append(m0());
            throw new NumberFormatException(q2.toString());
        }
        if (i2 == 16) {
            this.l = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.l = w0();
            } else {
                this.l = u0(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.l);
                this.i = 0;
                int[] iArr2 = this.p;
                int i5 = this.n - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else {
            StringBuilder q3 = ic.q("Expected an int but was ");
            q3.append(x0());
            q3.append(m0());
            throw new IllegalStateException(q3.toString());
        }
        this.i = 11;
        double parseDouble = Double.parseDouble(this.l);
        int i6 = (int) parseDouble;
        if (((double) i6) == parseDouble) {
            this.l = null;
            this.i = 0;
            int[] iArr3 = this.p;
            int i7 = this.n - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        StringBuilder q4 = ic.q("Expected an int but was ");
        q4.append(this.l);
        q4.append(m0());
        throw new NumberFormatException(q4.toString());
    }

    public long q0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 15) {
            this.i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.j;
        }
        if (i2 == 16) {
            this.l = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.l = w0();
            } else {
                this.l = u0(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.l);
                this.i = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else {
            StringBuilder q2 = ic.q("Expected a long but was ");
            q2.append(x0());
            q2.append(m0());
            throw new IllegalStateException(q2.toString());
        }
        this.i = 11;
        double parseDouble = Double.parseDouble(this.l);
        long j2 = (long) parseDouble;
        if (((double) j2) == parseDouble) {
            this.l = null;
            this.i = 0;
            int[] iArr3 = this.p;
            int i5 = this.n - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j2;
        }
        StringBuilder q3 = ic.q("Expected a long but was ");
        q3.append(this.l);
        q3.append(m0());
        throw new NumberFormatException(q3.toString());
    }

    public String r0() {
        String str;
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 14) {
            str = w0();
        } else if (i2 == 12) {
            str = u0('\'');
        } else if (i2 == 13) {
            str = u0('\"');
        } else {
            StringBuilder q2 = ic.q("Expected a name but was ");
            q2.append(x0());
            q2.append(m0());
            throw new IllegalStateException(q2.toString());
        }
        this.i = 0;
        this.o[this.n - 1] = str;
        return str;
    }

    public void t0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 7) {
            this.i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        StringBuilder q2 = ic.q("Expected null but was ");
        q2.append(x0());
        q2.append(m0());
        throw new IllegalStateException(q2.toString());
    }

    public String toString() {
        return getClass().getSimpleName() + m0();
    }

    public String v0() {
        String str;
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        if (i2 == 10) {
            str = w0();
        } else if (i2 == 8) {
            str = u0('\'');
        } else if (i2 == 9) {
            str = u0('\"');
        } else if (i2 == 11) {
            str = this.l;
            this.l = null;
        } else if (i2 == 15) {
            str = Long.toString(this.j);
        } else if (i2 == 16) {
            str = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else {
            StringBuilder q2 = ic.q("Expected a string but was ");
            q2.append(x0());
            q2.append(m0());
            throw new IllegalStateException(q2.toString());
        }
        this.i = 0;
        int[] iArr = this.p;
        int i3 = this.n - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public b90 x0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = S();
        }
        switch (i2) {
            case 1:
                return b90.BEGIN_OBJECT;
            case 2:
                return b90.END_OBJECT;
            case 3:
                return b90.BEGIN_ARRAY;
            case 4:
                return b90.END_ARRAY;
            case 5:
            case 6:
                return b90.BOOLEAN;
            case 7:
                return b90.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b90.STRING;
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            case 13:
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return b90.NAME;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return b90.NUMBER;
            case 17:
                return b90.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }
}
