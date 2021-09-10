package defpackage;

import com.vungle.warren.error.VungleException;
import defpackage.ub;
import java.io.EOFException;
import java.util.Objects;
import org.apache.http.message.BasicHeaderValueFormatter;

/* access modifiers changed from: package-private */
/* renamed from: vb  reason: default package */
public final class vb extends ub {
    private static final ak0 m = ak0.e("'\\");
    private static final ak0 n = ak0.e(BasicHeaderValueFormatter.UNSAFE_CHARS);
    private static final ak0 o = ak0.e("{}[]:, \n\t\r\f/\\;#=");
    private static final ak0 p = ak0.e("\n\r");
    private static final ak0 q = ak0.e("*/");
    private final zj0 g;
    private final xj0 h;
    private int i = 0;
    private long j;
    private int k;
    private String l;

    vb(zj0 zj0) {
        Objects.requireNonNull(zj0, "source == null");
        this.g = zj0;
        this.h = zj0.a();
        p0(6);
    }

    private String A0() {
        long w = this.g.w(o);
        return w != -1 ? this.h.m0(w) : this.h.l0();
    }

    private char B0() {
        int i2;
        int i3;
        if (this.g.K(1)) {
            byte readByte = this.h.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte == 98) {
                return '\b';
            }
            if (readByte == 102) {
                return '\f';
            }
            if (readByte == 110) {
                return '\n';
            }
            if (readByte == 114) {
                return '\r';
            }
            if (readByte == 116) {
                return '\t';
            }
            if (readByte != 117) {
                StringBuilder q2 = ic.q("Invalid escape sequence: \\");
                q2.append((char) readByte);
                t0(q2.toString());
                throw null;
            } else if (this.g.K(4)) {
                char c = 0;
                for (int i4 = 0; i4 < 4; i4++) {
                    byte V = this.h.V((long) i4);
                    char c2 = (char) (c << 4);
                    if (V < 48 || V > 57) {
                        if (V >= 97 && V <= 102) {
                            i3 = V - 97;
                        } else if (V < 65 || V > 70) {
                            StringBuilder q3 = ic.q("\\u");
                            q3.append(this.h.m0(4));
                            t0(q3.toString());
                            throw null;
                        } else {
                            i3 = V - 65;
                        }
                        i2 = i3 + 10;
                    } else {
                        i2 = V - 48;
                    }
                    c = (char) (i2 + c2);
                }
                this.h.skip(4);
                return c;
            } else {
                StringBuilder q4 = ic.q("Unterminated escape sequence at path ");
                q4.append(getPath());
                throw new EOFException(q4.toString());
            }
        } else {
            t0("Unterminated escape sequence");
            throw null;
        }
    }

    private void C0(ak0 ak0) {
        while (true) {
            long w = this.g.w(ak0);
            if (w == -1) {
                t0("Unterminated string");
                throw null;
            } else if (this.h.V(w) == 92) {
                this.h.skip(w + 1);
                B0();
            } else {
                this.h.skip(w + 1);
                return;
            }
        }
    }

    private void D0() {
        long w = this.g.w(o);
        xj0 xj0 = this.h;
        if (w == -1) {
            w = xj0.size();
        }
        xj0.skip(w);
    }

    private void u0() {
        t0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:122:0x01aa, code lost:
        if (x0(r2) != false) goto L_0x0210;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x01ad, code lost:
        if (r1 != 2) goto L_0x01d3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x01af, code lost:
        if (r6 == false) goto L_0x01d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x01b5, code lost:
        if (r7 != Long.MIN_VALUE) goto L_0x01b9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x01b7, code lost:
        if (r9 == false) goto L_0x01d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x01bd, code lost:
        if (r7 != 0) goto L_0x01c1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x01bf, code lost:
        if (r9 != false) goto L_0x01d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x01c1, code lost:
        if (r9 == false) goto L_0x01c4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x01c4, code lost:
        r7 = -r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x01c5, code lost:
        r17.j = r7;
        r17.h.skip((long) r5);
        r15 = 16;
        r17.i = 16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x01d2, code lost:
        r2 = 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x01d3, code lost:
        if (r1 == r2) goto L_0x01db;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x01d6, code lost:
        if (r1 == 4) goto L_0x01db;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x01d9, code lost:
        if (r1 != 7) goto L_0x0210;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x01db, code lost:
        r17.k = r5;
        r15 = 17;
        r17.i = 17;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0131, code lost:
        r2 = 2;
     */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0120 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0121  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int v0() {
        /*
        // Method dump skipped, instructions count: 713
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vb.v0():int");
    }

    private int w0(String str, ub.a aVar) {
        int length = aVar.a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(aVar.a[i2])) {
                this.i = 0;
                this.d[this.b - 1] = str;
                return i2;
            }
        }
        return -1;
    }

    private boolean x0(int i2) {
        if (i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13 || i2 == 32) {
            return false;
        }
        if (i2 != 35) {
            if (i2 == 44) {
                return false;
            }
            if (!(i2 == 47 || i2 == 61)) {
                if (i2 == 123 || i2 == 125 || i2 == 58) {
                    return false;
                }
                if (i2 != 59) {
                    switch (i2) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        u0();
        throw null;
    }

    private int y0(boolean z) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (this.g.K((long) i3)) {
                byte V = this.h.V((long) i2);
                if (V == 10 || V == 32 || V == 13 || V == 9) {
                    i2 = i3;
                } else {
                    this.h.skip((long) (i3 - 1));
                    if (V == 47) {
                        if (!this.g.K(2)) {
                            return V;
                        }
                        u0();
                        throw null;
                    } else if (V != 35) {
                        return V;
                    } else {
                        u0();
                        throw null;
                    }
                }
            } else if (!z) {
                return -1;
            } else {
                throw new EOFException("End of input");
            }
        }
    }

    private String z0(ak0 ak0) {
        StringBuilder sb = null;
        while (true) {
            long w = this.g.w(ak0);
            if (w == -1) {
                t0("Unterminated string");
                throw null;
            } else if (this.h.V(w) == 92) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.h.m0(w));
                this.h.readByte();
                sb.append(B0());
            } else if (sb == null) {
                String m0 = this.h.m0(w);
                this.h.readByte();
                return m0;
            } else {
                sb.append(this.h.m0(w));
                this.h.readByte();
                return sb.toString();
            }
        }
    }

    @Override // defpackage.ub
    public void L() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 1) {
            p0(3);
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected BEGIN_OBJECT but was ");
        q2.append(o0());
        q2.append(" at path ");
        q2.append(getPath());
        throw new sb(q2.toString());
    }

    @Override // defpackage.ub
    public void S() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 4) {
            int i3 = this.b - 1;
            this.b = i3;
            int[] iArr = this.e;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected END_ARRAY but was ");
        q2.append(o0());
        q2.append(" at path ");
        q2.append(getPath());
        throw new sb(q2.toString());
    }

    @Override // defpackage.ub
    public void V() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 2) {
            int i3 = this.b - 1;
            this.b = i3;
            this.d[i3] = null;
            int[] iArr = this.e;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected END_OBJECT but was ");
        q2.append(o0());
        q2.append(" at path ");
        q2.append(getPath());
        throw new sb(q2.toString());
    }

    @Override // defpackage.ub
    public boolean b0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        return (i2 == 2 || i2 == 4 || i2 == 18) ? false : true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.i = 0;
        this.c[0] = 8;
        this.b = 1;
        this.h.j();
        this.g.close();
    }

    @Override // defpackage.ub
    public boolean i0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 5) {
            this.i = 0;
            int[] iArr = this.e;
            int i3 = this.b - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.i = 0;
            int[] iArr2 = this.e;
            int i4 = this.b - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            StringBuilder q2 = ic.q("Expected a boolean but was ");
            q2.append(o0());
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
    }

    @Override // defpackage.ub
    public double j0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 16) {
            this.i = 0;
            int[] iArr = this.e;
            int i3 = this.b - 1;
            iArr[i3] = iArr[i3] + 1;
            return (double) this.j;
        }
        if (i2 == 17) {
            this.l = this.h.m0((long) this.k);
        } else if (i2 == 9) {
            this.l = z0(n);
        } else if (i2 == 8) {
            this.l = z0(m);
        } else if (i2 == 10) {
            this.l = A0();
        } else if (i2 != 11) {
            StringBuilder q2 = ic.q("Expected a double but was ");
            q2.append(o0());
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
        this.i = 11;
        try {
            double parseDouble = Double.parseDouble(this.l);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new tb("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.l = null;
            this.i = 0;
            int[] iArr2 = this.e;
            int i4 = this.b - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            StringBuilder q3 = ic.q("Expected a double but was ");
            q3.append(this.l);
            q3.append(" at path ");
            q3.append(getPath());
            throw new sb(q3.toString());
        }
    }

    @Override // defpackage.ub
    public int k0() {
        String str;
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 16) {
            long j2 = this.j;
            int i3 = (int) j2;
            if (j2 == ((long) i3)) {
                this.i = 0;
                int[] iArr = this.e;
                int i4 = this.b - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            StringBuilder q2 = ic.q("Expected an int but was ");
            q2.append(this.j);
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
        if (i2 == 17) {
            this.l = this.h.m0((long) this.k);
        } else if (i2 == 9 || i2 == 8) {
            if (i2 == 9) {
                str = z0(n);
            } else {
                str = z0(m);
            }
            this.l = str;
            try {
                int parseInt = Integer.parseInt(str);
                this.i = 0;
                int[] iArr2 = this.e;
                int i5 = this.b - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i2 != 11) {
            StringBuilder q3 = ic.q("Expected an int but was ");
            q3.append(o0());
            q3.append(" at path ");
            q3.append(getPath());
            throw new sb(q3.toString());
        }
        this.i = 11;
        try {
            double parseDouble = Double.parseDouble(this.l);
            int i6 = (int) parseDouble;
            if (((double) i6) == parseDouble) {
                this.l = null;
                this.i = 0;
                int[] iArr3 = this.e;
                int i7 = this.b - 1;
                iArr3[i7] = iArr3[i7] + 1;
                return i6;
            }
            StringBuilder q4 = ic.q("Expected an int but was ");
            q4.append(this.l);
            q4.append(" at path ");
            q4.append(getPath());
            throw new sb(q4.toString());
        } catch (NumberFormatException unused2) {
            StringBuilder q5 = ic.q("Expected an int but was ");
            q5.append(this.l);
            q5.append(" at path ");
            q5.append(getPath());
            throw new sb(q5.toString());
        }
    }

    @Override // defpackage.ub
    public String l0() {
        String str;
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 14) {
            str = A0();
        } else if (i2 == 13) {
            str = z0(n);
        } else if (i2 == 12) {
            str = z0(m);
        } else if (i2 == 15) {
            str = this.l;
        } else {
            StringBuilder q2 = ic.q("Expected a name but was ");
            q2.append(o0());
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
        this.i = 0;
        this.d[this.b - 1] = str;
        return str;
    }

    @Override // defpackage.ub
    public String m0() {
        String str;
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 10) {
            str = A0();
        } else if (i2 == 9) {
            str = z0(n);
        } else if (i2 == 8) {
            str = z0(m);
        } else if (i2 == 11) {
            str = this.l;
            this.l = null;
        } else if (i2 == 16) {
            str = Long.toString(this.j);
        } else if (i2 == 17) {
            str = this.h.m0((long) this.k);
        } else {
            StringBuilder q2 = ic.q("Expected a string but was ");
            q2.append(o0());
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
        this.i = 0;
        int[] iArr = this.e;
        int i3 = this.b - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    @Override // defpackage.ub
    public void o() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 3) {
            p0(1);
            this.e[this.b - 1] = 0;
            this.i = 0;
            return;
        }
        StringBuilder q2 = ic.q("Expected BEGIN_ARRAY but was ");
        q2.append(o0());
        q2.append(" at path ");
        q2.append(getPath());
        throw new sb(q2.toString());
    }

    @Override // defpackage.ub
    public ub.b o0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        switch (i2) {
            case 1:
                return ub.b.BEGIN_OBJECT;
            case 2:
                return ub.b.END_OBJECT;
            case 3:
                return ub.b.BEGIN_ARRAY;
            case 4:
                return ub.b.END_ARRAY;
            case 5:
            case 6:
                return ub.b.BOOLEAN;
            case 7:
                return ub.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return ub.b.STRING;
            case VungleException.NO_AUTO_CACHED_PLACEMENT:
            case 13:
            case VungleException.SERVER_RETRY_ERROR:
            case VungleException.ALREADY_PLAYING_ANOTHER_AD:
                return ub.b.NAME;
            case VungleException.NO_SPACE_TO_INIT:
            case 17:
                return ub.b.NUMBER;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED:
                return ub.b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // defpackage.ub
    public int q0(ub.a aVar) {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 < 12 || i2 > 15) {
            return -1;
        }
        if (i2 == 15) {
            return w0(this.l, aVar);
        }
        int h0 = this.g.h0(aVar.b);
        if (h0 != -1) {
            this.i = 0;
            this.d[this.b - 1] = aVar.a[h0];
            return h0;
        }
        String str = this.d[this.b - 1];
        String l0 = l0();
        int w0 = w0(l0, aVar);
        if (w0 == -1) {
            this.i = 15;
            this.l = l0;
            this.d[this.b - 1] = str;
        }
        return w0;
    }

    @Override // defpackage.ub
    public void r0() {
        int i2 = this.i;
        if (i2 == 0) {
            i2 = v0();
        }
        if (i2 == 14) {
            D0();
        } else if (i2 == 13) {
            C0(n);
        } else if (i2 == 12) {
            C0(m);
        } else if (i2 != 15) {
            StringBuilder q2 = ic.q("Expected a name but was ");
            q2.append(o0());
            q2.append(" at path ");
            q2.append(getPath());
            throw new sb(q2.toString());
        }
        this.i = 0;
        this.d[this.b - 1] = "null";
    }

    @Override // defpackage.ub
    public void s0() {
        int i2 = 0;
        do {
            int i3 = this.i;
            if (i3 == 0) {
                i3 = v0();
            }
            if (i3 == 3) {
                p0(1);
            } else if (i3 == 1) {
                p0(3);
            } else {
                if (i3 == 4) {
                    i2--;
                    if (i2 >= 0) {
                        this.b--;
                    } else {
                        StringBuilder q2 = ic.q("Expected a value but was ");
                        q2.append(o0());
                        q2.append(" at path ");
                        q2.append(getPath());
                        throw new sb(q2.toString());
                    }
                } else if (i3 == 2) {
                    i2--;
                    if (i2 >= 0) {
                        this.b--;
                    } else {
                        StringBuilder q3 = ic.q("Expected a value but was ");
                        q3.append(o0());
                        q3.append(" at path ");
                        q3.append(getPath());
                        throw new sb(q3.toString());
                    }
                } else if (i3 == 14 || i3 == 10) {
                    D0();
                } else if (i3 == 9 || i3 == 13) {
                    C0(n);
                } else if (i3 == 8 || i3 == 12) {
                    C0(m);
                } else if (i3 == 17) {
                    this.h.skip((long) this.k);
                } else if (i3 == 18) {
                    StringBuilder q4 = ic.q("Expected a value but was ");
                    q4.append(o0());
                    q4.append(" at path ");
                    q4.append(getPath());
                    throw new sb(q4.toString());
                }
                this.i = 0;
            }
            i2++;
            this.i = 0;
        } while (i2 != 0);
        int[] iArr = this.e;
        int i4 = this.b;
        int i5 = i4 - 1;
        iArr[i5] = iArr[i5] + 1;
        this.d[i4 - 1] = "null";
    }

    public String toString() {
        StringBuilder q2 = ic.q("JsonReader(");
        q2.append(this.g);
        q2.append(")");
        return q2.toString();
    }
}
