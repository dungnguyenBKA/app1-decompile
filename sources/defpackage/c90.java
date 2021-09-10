package defpackage;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: c90  reason: default package */
public class c90 implements Closeable, Flushable {
    private static final String[] k = new String[128];
    private static final String[] l;
    private final Writer b;
    private int[] c = new int[32];
    private int d = 0;
    private String e;
    private String f;
    private boolean g;
    private boolean h;
    private String i;
    private boolean j;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            k[i2] = String.format("\\u%04x", Integer.valueOf(i2));
        }
        String[] strArr = k;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        l = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c90(Writer writer) {
        p0(6);
        this.f = ":";
        this.j = true;
        Objects.requireNonNull(writer, "out == null");
        this.b = writer;
    }

    private void B0() {
        if (this.i != null) {
            int o0 = o0();
            if (o0 == 5) {
                this.b.write(44);
            } else if (o0 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            m0();
            q0(4);
            v0(this.i);
            this.i = null;
        }
    }

    private c90 S(int i2, int i3, char c2) {
        int o0 = o0();
        if (o0 != i3 && o0 != i2) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.i == null) {
            this.d--;
            if (o0 == i3) {
                m0();
            }
            this.b.write(c2);
            return this;
        } else {
            StringBuilder q = ic.q("Dangling name: ");
            q.append(this.i);
            throw new IllegalStateException(q.toString());
        }
    }

    private void j() {
        int o0 = o0();
        if (o0 == 1) {
            q0(2);
            m0();
        } else if (o0 == 2) {
            this.b.append(',');
            m0();
        } else if (o0 != 4) {
            if (o0 != 6) {
                if (o0 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.g) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            q0(7);
        } else {
            this.b.append((CharSequence) this.f);
            q0(5);
        }
    }

    private void m0() {
        if (this.e != null) {
            this.b.write(10);
            int i2 = this.d;
            for (int i3 = 1; i3 < i2; i3++) {
                this.b.write(this.e);
            }
        }
    }

    private int o0() {
        int i2 = this.d;
        if (i2 != 0) {
            return this.c[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void p0(int i2) {
        int i3 = this.d;
        int[] iArr = this.c;
        if (i3 == iArr.length) {
            this.c = Arrays.copyOf(iArr, i3 * 2);
        }
        int[] iArr2 = this.c;
        int i4 = this.d;
        this.d = i4 + 1;
        iArr2[i4] = i2;
    }

    private void q0(int i2) {
        this.c[this.d - 1] = i2;
    }

    private void v0(String str) {
        String str2;
        String[] strArr = this.h ? l : k;
        this.b.write(34);
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
            } else if (charAt == 8232) {
                str2 = "\\u2028";
            } else if (charAt == 8233) {
                str2 = "\\u2029";
            }
            if (i2 < i3) {
                this.b.write(str, i2, i3 - i2);
            }
            this.b.write(str2);
            i2 = i3 + 1;
        }
        if (i2 < length) {
            this.b.write(str, i2, length - i2);
        }
        this.b.write(34);
    }

    public c90 A0(boolean z) {
        B0();
        j();
        this.b.write(z ? "true" : "false");
        return this;
    }

    public c90 L() {
        B0();
        j();
        p0(3);
        this.b.write(123);
        return this;
    }

    public c90 V() {
        S(1, 2, ']');
        return this;
    }

    public c90 b0() {
        S(3, 5, '}');
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
        int i2 = this.d;
        if (i2 > 1 || (i2 == 1 && this.c[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.d = 0;
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.d != 0) {
            this.b.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final boolean i0() {
        return this.j;
    }

    public final boolean j0() {
        return this.h;
    }

    public boolean k0() {
        return this.g;
    }

    public c90 l0(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.i != null) {
            throw new IllegalStateException();
        } else if (this.d != 0) {
            this.i = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    public c90 n0() {
        if (this.i != null) {
            if (this.j) {
                B0();
            } else {
                this.i = null;
                return this;
            }
        }
        j();
        this.b.write("null");
        return this;
    }

    public c90 o() {
        B0();
        j();
        p0(1);
        this.b.write(91);
        return this;
    }

    public final void r0(boolean z) {
        this.h = z;
    }

    public final void s0(String str) {
        if (str.length() == 0) {
            this.e = null;
            this.f = ":";
            return;
        }
        this.e = str;
        this.f = ": ";
    }

    public final void t0(boolean z) {
        this.g = z;
    }

    public final void u0(boolean z) {
        this.j = z;
    }

    public c90 w0(long j2) {
        B0();
        j();
        this.b.write(Long.toString(j2));
        return this;
    }

    public c90 x0(Boolean bool) {
        if (bool == null) {
            return n0();
        }
        B0();
        j();
        this.b.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c90 y0(Number number) {
        if (number == null) {
            return n0();
        }
        B0();
        String obj = number.toString();
        if (this.g || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            j();
            this.b.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public c90 z0(String str) {
        if (str == null) {
            return n0();
        }
        B0();
        j();
        v0(str);
        return this;
    }
}
