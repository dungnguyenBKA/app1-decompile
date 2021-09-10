package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;

/* renamed from: xj0  reason: default package */
public final class xj0 implements zj0, yj0, Cloneable, ByteChannel {
    private static final byte[] d = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable
    nk0 b;
    long c;

    /* renamed from: xj0$a */
    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(xj0.this.c, 2147483647L);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            xj0 xj0 = xj0.this;
            if (xj0.c > 0) {
                return xj0.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return xj0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return xj0.this.read(bArr, i, i2);
        }
    }

    public xj0 A0(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException(ic.f("beginIndex < 0: ", i));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            while (i < i2) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    nk0 q0 = q0(1);
                    byte[] bArr = q0.a;
                    int i3 = q0.c - i;
                    int min = Math.min(i2, 8192 - i3);
                    int i4 = i + 1;
                    bArr[i + i3] = (byte) charAt2;
                    while (true) {
                        i = i4;
                        if (i >= min || (charAt = str.charAt(i)) >= 128) {
                            int i5 = q0.c;
                            int i6 = (i3 + i) - i5;
                            q0.c = i5 + i6;
                            this.c += (long) i6;
                        } else {
                            i4 = i + 1;
                            bArr[i + i3] = (byte) charAt;
                        }
                    }
                    int i52 = q0.c;
                    int i62 = (i3 + i) - i52;
                    q0.c = i52 + i62;
                    this.c += (long) i62;
                } else {
                    if (charAt2 < 2048) {
                        u0((charAt2 >> 6) | 192);
                        u0((charAt2 & '?') | 128);
                    } else if (charAt2 < 55296 || charAt2 > 57343) {
                        u0((charAt2 >> '\f') | 224);
                        u0(((charAt2 >> 6) & 63) | 128);
                        u0((charAt2 & '?') | 128);
                    } else {
                        int i7 = i + 1;
                        char charAt3 = i7 < i2 ? str.charAt(i7) : 0;
                        if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                            u0(63);
                            i = i7;
                        } else {
                            int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                            u0((i8 >> 18) | 240);
                            u0(((i8 >> 12) & 63) | 128);
                            u0(((i8 >> 6) & 63) | 128);
                            u0((i8 & 63) | 128);
                            i += 2;
                        }
                    }
                    i++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
    }

    public xj0 B0(int i) {
        if (i < 128) {
            u0(i);
        } else if (i < 2048) {
            u0((i >> 6) | 192);
            u0((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                u0((i >> 12) | 224);
                u0(((i >> 6) & 63) | 128);
                u0((i & 63) | 128);
            } else {
                u0(63);
            }
        } else if (i <= 1114111) {
            u0((i >> 18) | 240);
            u0(((i >> 12) & 63) | 128);
            u0(((i >> 6) & 63) | 128);
            u0((i & 63) | 128);
        } else {
            StringBuilder q = ic.q("Unexpected code point: ");
            q.append(Integer.toHexString(i));
            throw new IllegalArgumentException(q.toString());
        }
        return this;
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 C(String str) {
        z0(str);
        return this;
    }

    @Override // defpackage.zj0
    public boolean E(long j, ak0 ak0) {
        int m = ak0.m();
        if (j < 0 || m < 0 || this.c - j < ((long) m) || ak0.m() - 0 < m) {
            return false;
        }
        for (int i = 0; i < m; i++) {
            if (V(((long) i) + j) != ak0.f(0 + i)) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.zj0
    public String F(Charset charset) {
        try {
            return k0(this.c, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.qk0
    public void H(xj0 xj0, long j) {
        nk0 nk0;
        int i;
        if (xj0 == null) {
            throw new IllegalArgumentException("source == null");
        } else if (xj0 != this) {
            tk0.b(xj0.c, 0, j);
            while (j > 0) {
                nk0 nk02 = xj0.b;
                int i2 = 0;
                if (j < ((long) (nk02.c - nk02.b))) {
                    nk0 nk03 = this.b;
                    nk0 nk04 = nk03 != null ? nk03.g : null;
                    if (nk04 != null && nk04.e) {
                        long j2 = ((long) nk04.c) + j;
                        if (nk04.d) {
                            i = 0;
                        } else {
                            i = nk04.b;
                        }
                        if (j2 - ((long) i) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            nk02.d(nk04, (int) j);
                            xj0.c -= j;
                            this.c += j;
                            return;
                        }
                    }
                    int i3 = (int) j;
                    Objects.requireNonNull(nk02);
                    if (i3 <= 0 || i3 > nk02.c - nk02.b) {
                        throw new IllegalArgumentException();
                    }
                    if (i3 >= 1024) {
                        nk0 = nk02.c();
                    } else {
                        nk0 = ok0.b();
                        System.arraycopy(nk02.a, nk02.b, nk0.a, 0, i3);
                    }
                    nk0.c = nk0.b + i3;
                    nk02.b += i3;
                    nk02.g.b(nk0);
                    xj0.b = nk0;
                }
                nk0 nk05 = xj0.b;
                long j3 = (long) (nk05.c - nk05.b);
                xj0.b = nk05.a();
                nk0 nk06 = this.b;
                if (nk06 == null) {
                    this.b = nk05;
                    nk05.g = nk05;
                    nk05.f = nk05;
                } else {
                    nk06.g.b(nk05);
                    nk0 nk07 = nk05.g;
                    if (nk07 == nk05) {
                        throw new IllegalStateException();
                    } else if (nk07.e) {
                        int i4 = nk05.c - nk05.b;
                        int i5 = 8192 - nk07.c;
                        if (!nk07.d) {
                            i2 = nk07.b;
                        }
                        if (i4 <= i5 + i2) {
                            nk05.d(nk07, i4);
                            nk05.a();
                            ok0.a(nk05);
                        }
                    }
                }
                xj0.c -= j3;
                this.c += j3;
                j -= j3;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    @Override // defpackage.yj0
    public long I(rk0 rk0) {
        if (rk0 != null) {
            long j = 0;
            while (true) {
                long read = rk0.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (read == -1) {
                    return j;
                }
                j += read;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // defpackage.zj0
    public boolean K(long j) {
        return this.c >= j;
    }

    public final long L() {
        long j = this.c;
        if (j == 0) {
            return 0;
        }
        nk0 nk0 = this.b.g;
        int i = nk0.c;
        return (i >= 8192 || !nk0.e) ? j : j - ((long) (i - nk0.b));
    }

    @Override // defpackage.zj0
    public String O() {
        return y(Long.MAX_VALUE);
    }

    @Override // defpackage.zj0
    public int P() {
        return tk0.c(readInt());
    }

    @Override // defpackage.zj0
    public byte[] Q(long j) {
        tk0.b(this.c, 0, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[((int) j)];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    public final xj0 S(xj0 xj0, long j, long j2) {
        if (xj0 != null) {
            tk0.b(this.c, j, j2);
            if (j2 == 0) {
                return this;
            }
            xj0.c += j2;
            nk0 nk0 = this.b;
            while (true) {
                int i = nk0.c;
                int i2 = nk0.b;
                if (j < ((long) (i - i2))) {
                    break;
                }
                j -= (long) (i - i2);
                nk0 = nk0.f;
            }
            while (j2 > 0) {
                nk0 c2 = nk0.c();
                int i3 = (int) (((long) c2.b) + j);
                c2.b = i3;
                c2.c = Math.min(i3 + ((int) j2), c2.c);
                nk0 nk02 = xj0.b;
                if (nk02 == null) {
                    c2.g = c2;
                    c2.f = c2;
                    xj0.b = c2;
                } else {
                    nk02.g.b(c2);
                }
                j2 -= (long) (c2.c - c2.b);
                nk0 = nk0.f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 U(ak0 ak0) {
        r0(ak0);
        return this;
    }

    public final byte V(long j) {
        int i;
        tk0.b(this.c, j, 1);
        long j2 = this.c;
        if (j2 - j > j) {
            nk0 nk0 = this.b;
            while (true) {
                int i2 = nk0.c;
                int i3 = nk0.b;
                long j3 = (long) (i2 - i3);
                if (j < j3) {
                    return nk0.a[i3 + ((int) j)];
                }
                j -= j3;
                nk0 = nk0.f;
            }
        } else {
            long j4 = j - j2;
            nk0 nk02 = this.b;
            do {
                nk02 = nk02.g;
                int i4 = nk02.c;
                i = nk02.b;
                j4 += (long) (i4 - i);
            } while (j4 < 0);
            return nk02.a[i + ((int) j4)];
        }
    }

    @Override // defpackage.zj0
    public short W() {
        short readShort = readShort();
        Charset charset = tk0.a;
        int i = readShort & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    @Override // defpackage.zj0
    public long Y(qk0 qk0) {
        long j = this.c;
        if (j > 0) {
            ((xj0) qk0).H(this, j);
        }
        return j;
    }

    @Override // defpackage.zj0, defpackage.yj0
    public xj0 a() {
        return this;
    }

    public long b0(byte b2, long j, long j2) {
        nk0 nk0;
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.c), Long.valueOf(j), Long.valueOf(j2)));
        }
        long j4 = this.c;
        long j5 = j2 > j4 ? j4 : j2;
        if (j == j5 || (nk0 = this.b) == null) {
            return -1;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                nk0 = nk0.g;
                j4 -= (long) (nk0.c - nk0.b);
            }
        } else {
            while (true) {
                long j6 = ((long) (nk0.c - nk0.b)) + j3;
                if (j6 >= j) {
                    break;
                }
                nk0 = nk0.f;
                j3 = j6;
            }
            j4 = j3;
        }
        long j7 = j;
        while (j4 < j5) {
            byte[] bArr = nk0.a;
            int min = (int) Math.min((long) nk0.c, (((long) nk0.b) + j5) - j4);
            for (int i = (int) ((((long) nk0.b) + j7) - j4); i < min; i++) {
                if (bArr[i] == b2) {
                    return ((long) (i - nk0.b)) + j4;
                }
            }
            j4 += (long) (nk0.c - nk0.b);
            nk0 = nk0.f;
            j7 = j4;
        }
        return -1;
    }

    @Override // defpackage.zj0
    public void c0(long j) {
        if (this.c < j) {
            throw new EOFException();
        }
    }

    @Override // java.lang.Object
    public Object clone() {
        xj0 xj0 = new xj0();
        if (this.c != 0) {
            nk0 c2 = this.b.c();
            xj0.b = c2;
            c2.g = c2;
            c2.f = c2;
            nk0 nk0 = this.b;
            while (true) {
                nk0 = nk0.f;
                if (nk0 == this.b) {
                    break;
                }
                xj0.b.g.b(nk0.c());
            }
            xj0.c = this.c;
        }
        return xj0;
    }

    @Override // java.lang.AutoCloseable, defpackage.rk0, java.io.Closeable, defpackage.qk0, java.nio.channels.Channel
    public void close() {
    }

    @Override // defpackage.zj0
    public long e0(byte b2) {
        return b0(b2, 0, Long.MAX_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xj0)) {
            return false;
        }
        xj0 xj0 = (xj0) obj;
        long j = this.c;
        if (j != xj0.c) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        nk0 nk0 = this.b;
        nk0 nk02 = xj0.b;
        int i = nk0.b;
        int i2 = nk02.b;
        while (j2 < this.c) {
            long min = (long) Math.min(nk0.c - i, nk02.c - i2);
            int i3 = 0;
            while (((long) i3) < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (nk0.a[i] != nk02.a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == nk0.c) {
                nk0 = nk0.f;
                i = nk0.b;
            }
            if (i2 == nk02.c) {
                nk02 = nk02.f;
                i2 = nk02.b;
            }
            j2 += min;
        }
        return true;
    }

    @Override // defpackage.zj0
    public ak0 f(long j) {
        return new ak0(Q(j));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0087, code lost:
        if (r8 != r9) goto L_0x0093;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0089, code lost:
        r15.b = r6.a();
        defpackage.ok0.a(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0093, code lost:
        r6.b = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0095, code lost:
        if (r1 != false) goto L_0x009b;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0070 A[SYNTHETIC] */
    @Override // defpackage.zj0
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long f0() {
        /*
        // Method dump skipped, instructions count: 172
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xj0.f0():long");
    }

    @Override // defpackage.qk0, defpackage.yj0, java.io.Flushable
    public void flush() {
    }

    @Override // defpackage.zj0
    public InputStream g0() {
        return new a();
    }

    @Override // defpackage.yj0
    public yj0 h() {
        return this;
    }

    @Override // defpackage.zj0
    public int h0(kk0 kk0) {
        int o0 = o0(kk0, false);
        if (o0 == -1) {
            return -1;
        }
        try {
            skip((long) kk0.b[o0].m());
            return o0;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public int hashCode() {
        nk0 nk0 = this.b;
        if (nk0 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = nk0.c;
            for (int i3 = nk0.b; i3 < i2; i3++) {
                i = (i * 31) + nk0.a[i3];
            }
            nk0 = nk0.f;
        } while (nk0 != this.b);
        return i;
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 i(int i) {
        x0(i);
        return this;
    }

    public long i0(ak0 ak0, long j) {
        int i;
        int i2;
        long j2 = 0;
        if (j >= 0) {
            nk0 nk0 = this.b;
            if (nk0 == null) {
                return -1;
            }
            long j3 = this.c;
            if (j3 - j < j) {
                while (j3 > j) {
                    nk0 = nk0.g;
                    j3 -= (long) (nk0.c - nk0.b);
                }
            } else {
                while (true) {
                    long j4 = ((long) (nk0.c - nk0.b)) + j2;
                    if (j4 >= j) {
                        break;
                    }
                    nk0 = nk0.f;
                    j2 = j4;
                }
                j3 = j2;
            }
            if (ak0.m() == 2) {
                byte f = ak0.f(0);
                byte f2 = ak0.f(1);
                while (j3 < this.c) {
                    byte[] bArr = nk0.a;
                    i = (int) ((((long) nk0.b) + j) - j3);
                    int i3 = nk0.c;
                    while (i < i3) {
                        byte b2 = bArr[i];
                        if (b2 == f || b2 == f2) {
                            i2 = nk0.b;
                        } else {
                            i++;
                        }
                    }
                    j3 += (long) (nk0.c - nk0.b);
                    nk0 = nk0.f;
                    j = j3;
                }
                return -1;
            }
            byte[] h = ak0.h();
            while (j3 < this.c) {
                byte[] bArr2 = nk0.a;
                i = (int) ((((long) nk0.b) + j) - j3);
                int i4 = nk0.c;
                while (i < i4) {
                    byte b3 = bArr2[i];
                    for (byte b4 : h) {
                        if (b3 == b4) {
                            i2 = nk0.b;
                        }
                    }
                    i++;
                }
                j3 += (long) (nk0.c - nk0.b);
                nk0 = nk0.f;
                j = j3;
            }
            return -1;
            return ((long) (i - i2)) + j3;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    public boolean isOpen() {
        return true;
    }

    public final void j() {
        try {
            skip(this.c);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public ak0 j0() {
        return new ak0(q());
    }

    public String k0(long j, Charset charset) {
        tk0.b(this.c, 0, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            nk0 nk0 = this.b;
            if (((long) nk0.b) + j > ((long) nk0.c)) {
                return new String(Q(j), charset);
            }
            String str = new String(nk0.a, nk0.b, (int) j, charset);
            int i = (int) (((long) nk0.b) + j);
            nk0.b = i;
            this.c -= j;
            if (i == nk0.c) {
                this.b = nk0.a();
                ok0.a(nk0);
            }
            return str;
        }
    }

    public String l0() {
        try {
            return k0(this.c, tk0.a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 m(int i) {
        w0(i);
        return this;
    }

    public String m0(long j) {
        return k0(j, tk0.a);
    }

    /* access modifiers changed from: package-private */
    public String n0(long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (V(j2) == 13) {
                String m0 = m0(j2);
                skip(2);
                return m0;
            }
        }
        String m02 = m0(j);
        skip(1);
        return m02;
    }

    /* access modifiers changed from: package-private */
    public int o0(kk0 kk0, boolean z) {
        int i;
        int i2;
        int i3;
        nk0 nk0;
        int i4;
        nk0 nk02 = this.b;
        int i5 = -2;
        if (nk02 != null) {
            byte[] bArr = nk02.a;
            int i6 = nk02.b;
            int i7 = nk02.c;
            int[] iArr = kk0.c;
            nk0 nk03 = nk02;
            int i8 = 0;
            int i9 = -1;
            loop0:
            while (true) {
                int i10 = i8 + 1;
                int i11 = iArr[i8];
                int i12 = i10 + 1;
                int i13 = iArr[i10];
                if (i13 != -1) {
                    i9 = i13;
                }
                if (nk03 == null) {
                    break;
                }
                if (i11 < 0) {
                    int i14 = (i11 * -1) + i12;
                    while (true) {
                        int i15 = i6 + 1;
                        int i16 = i12 + 1;
                        if ((bArr[i6] & 255) != iArr[i12]) {
                            return i9;
                        }
                        boolean z2 = i16 == i14;
                        if (i15 == i7) {
                            nk0 nk04 = nk03.f;
                            i4 = nk04.b;
                            byte[] bArr2 = nk04.a;
                            i3 = nk04.c;
                            if (nk04 != nk02) {
                                nk0 = nk04;
                                bArr = bArr2;
                            } else if (!z2) {
                                break loop0;
                            } else {
                                bArr = bArr2;
                                nk0 = null;
                            }
                        } else {
                            i3 = i7;
                            i4 = i15;
                            nk0 = nk03;
                        }
                        if (z2) {
                            i = iArr[i16];
                            i2 = i4;
                            i7 = i3;
                            nk03 = nk0;
                            break;
                        }
                        i6 = i4;
                        i7 = i3;
                        i12 = i16;
                        nk03 = nk0;
                    }
                } else {
                    int i17 = i6 + 1;
                    int i18 = bArr[i6] & 255;
                    int i19 = i12 + i11;
                    while (i12 != i19) {
                        if (i18 == iArr[i12]) {
                            i = iArr[i12 + i11];
                            if (i17 == i7) {
                                nk03 = nk03.f;
                                i2 = nk03.b;
                                bArr = nk03.a;
                                i7 = nk03.c;
                                if (nk03 == nk02) {
                                    nk03 = null;
                                }
                            } else {
                                i2 = i17;
                            }
                        } else {
                            i12++;
                        }
                    }
                    return i9;
                }
                if (i >= 0) {
                    return i;
                }
                i8 = -i;
                i6 = i2;
                i5 = -2;
            }
            return z ? i5 : i9;
        } else if (z) {
            return -2;
        } else {
            return kk0.indexOf(ak0.f);
        }
    }

    public final ak0 p0() {
        long j = this.c;
        if (j <= 2147483647L) {
            int i = (int) j;
            if (i == 0) {
                return ak0.f;
            }
            return new pk0(this, i);
        }
        StringBuilder q = ic.q("size > Integer.MAX_VALUE: ");
        q.append(this.c);
        throw new IllegalArgumentException(q.toString());
    }

    @Override // defpackage.zj0
    public byte[] q() {
        try {
            return Q(this.c);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: package-private */
    public nk0 q0(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        nk0 nk0 = this.b;
        if (nk0 == null) {
            nk0 b2 = ok0.b();
            this.b = b2;
            b2.g = b2;
            b2.f = b2;
            return b2;
        }
        nk0 nk02 = nk0.g;
        if (nk02.c + i <= 8192 && nk02.e) {
            return nk02;
        }
        nk0 b3 = ok0.b();
        nk02.b(b3);
        return b3;
    }

    public xj0 r0(ak0 ak0) {
        if (ak0 != null) {
            ak0.r(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public int read(byte[] bArr, int i, int i2) {
        tk0.b((long) bArr.length, (long) i, (long) i2);
        nk0 nk0 = this.b;
        if (nk0 == null) {
            return -1;
        }
        int min = Math.min(i2, nk0.c - nk0.b);
        System.arraycopy(nk0.a, nk0.b, bArr, i, min);
        int i3 = nk0.b + min;
        nk0.b = i3;
        this.c -= (long) min;
        if (i3 == nk0.c) {
            this.b = nk0.a();
            ok0.a(nk0);
        }
        return min;
    }

    @Override // defpackage.zj0
    public byte readByte() {
        long j = this.c;
        if (j != 0) {
            nk0 nk0 = this.b;
            int i = nk0.b;
            int i2 = nk0.c;
            int i3 = i + 1;
            byte b2 = nk0.a[i];
            this.c = j - 1;
            if (i3 == i2) {
                this.b = nk0.a();
                ok0.a(nk0);
            } else {
                nk0.b = i3;
            }
            return b2;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // defpackage.zj0
    public void readFully(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // defpackage.zj0
    public int readInt() {
        long j = this.c;
        if (j >= 4) {
            nk0 nk0 = this.b;
            int i = nk0.b;
            int i2 = nk0.c;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = nk0.a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
            int i6 = i4 + 1;
            int i7 = i5 | ((bArr[i4] & 255) << 8);
            int i8 = i6 + 1;
            int i9 = i7 | (bArr[i6] & 255);
            this.c = j - 4;
            if (i8 == i2) {
                this.b = nk0.a();
                ok0.a(nk0);
            } else {
                nk0.b = i8;
            }
            return i9;
        }
        StringBuilder q = ic.q("size < 4: ");
        q.append(this.c);
        throw new IllegalStateException(q.toString());
    }

    @Override // defpackage.zj0
    public short readShort() {
        long j = this.c;
        if (j >= 2) {
            nk0 nk0 = this.b;
            int i = nk0.b;
            int i2 = nk0.c;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = nk0.a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
            this.c = j - 2;
            if (i4 == i2) {
                this.b = nk0.a();
                ok0.a(nk0);
            } else {
                nk0.b = i4;
            }
            return (short) i5;
        }
        StringBuilder q = ic.q("size < 2: ");
        q.append(this.c);
        throw new IllegalStateException(q.toString());
    }

    @Override // defpackage.yj0
    public yj0 s(int i) {
        w0(tk0.c(i));
        return this;
    }

    public xj0 s0(byte[] bArr) {
        if (bArr != null) {
            t0(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final long size() {
        return this.c;
    }

    @Override // defpackage.zj0
    public void skip(long j) {
        while (j > 0) {
            nk0 nk0 = this.b;
            if (nk0 != null) {
                int min = (int) Math.min(j, (long) (nk0.c - nk0.b));
                long j2 = (long) min;
                this.c -= j2;
                j -= j2;
                nk0 nk02 = this.b;
                int i = nk02.b + min;
                nk02.b = i;
                if (i == nk02.c) {
                    this.b = nk02.a();
                    ok0.a(nk02);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // defpackage.zj0
    public boolean t() {
        return this.c == 0;
    }

    public xj0 t0(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = (long) i2;
            tk0.b((long) bArr.length, (long) i, j);
            int i3 = i2 + i;
            while (i < i3) {
                nk0 q0 = q0(1);
                int min = Math.min(i3 - i, 8192 - q0.c);
                System.arraycopy(bArr, i, q0.a, q0.c, min);
                i += min;
                q0.c += min;
            }
            this.c += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // defpackage.rk0, defpackage.qk0
    public sk0 timeout() {
        return sk0.d;
    }

    public String toString() {
        return p0().toString();
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 u(int i) {
        u0(i);
        return this;
    }

    public xj0 u0(int i) {
        nk0 q0 = q0(1);
        byte[] bArr = q0.a;
        int i2 = q0.c;
        q0.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.c++;
        return this;
    }

    /* renamed from: v0 */
    public xj0 J(long j) {
        if (j == 0) {
            u0(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        nk0 q0 = q0(numberOfTrailingZeros);
        byte[] bArr = q0.a;
        int i = q0.c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = d[(int) (15 & j)];
            j >>>= 4;
        }
        q0.c += numberOfTrailingZeros;
        this.c += (long) numberOfTrailingZeros;
        return this;
    }

    @Override // defpackage.zj0
    public long w(ak0 ak0) {
        return i0(ak0, 0);
    }

    public xj0 w0(int i) {
        nk0 q0 = q0(4);
        byte[] bArr = q0.a;
        int i2 = q0.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        q0.c = i5 + 1;
        this.c += 4;
        return this;
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 write(byte[] bArr) {
        s0(bArr);
        return this;
    }

    @Override // defpackage.yj0
    public yj0 x() {
        return this;
    }

    public xj0 x0(int i) {
        nk0 q0 = q0(2);
        byte[] bArr = q0.a;
        int i2 = q0.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        q0.c = i3 + 1;
        this.c += 2;
        return this;
    }

    @Override // defpackage.zj0
    public String y(long j) {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long b0 = b0((byte) 10, 0, j2);
            if (b0 != -1) {
                return n0(b0);
            }
            if (j2 < this.c && V(j2 - 1) == 13 && V(j2) == 10) {
                return n0(j2);
            }
            xj0 xj0 = new xj0();
            S(xj0, 0, Math.min(32L, this.c));
            StringBuilder q = ic.q("\\n not found: limit=");
            q.append(Math.min(this.c, j));
            q.append(" content=");
            q.append(xj0.j0().g());
            q.append((char) 8230);
            throw new EOFException(q.toString());
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    public xj0 y0(String str, int i, int i2, Charset charset) {
        if (i < 0) {
            throw new IllegalAccessError(ic.f("beginIndex < 0: ", i));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(tk0.a)) {
            A0(str, i, i2);
            return this;
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            t0(bytes, 0, bytes.length);
            return this;
        }
    }

    public xj0 z0(String str) {
        A0(str, 0, str.length());
        return this;
    }

    @Override // defpackage.yj0
    public /* bridge */ /* synthetic */ yj0 write(byte[] bArr, int i, int i2) {
        t0(bArr, i, i2);
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                nk0 q0 = q0(1);
                int min = Math.min(i, 8192 - q0.c);
                byteBuffer.get(q0.a, q0.c, min);
                i -= min;
                q0.c += min;
            }
            this.c += (long) remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        nk0 nk0 = this.b;
        if (nk0 == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), nk0.c - nk0.b);
        byteBuffer.put(nk0.a, nk0.b, min);
        int i = nk0.b + min;
        nk0.b = i;
        this.c -= (long) min;
        if (i == nk0.c) {
            this.b = nk0.a();
            ok0.a(nk0);
        }
        return min;
    }

    @Override // defpackage.rk0
    public long read(xj0 xj0, long j) {
        if (xj0 == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j >= 0) {
            long j2 = this.c;
            if (j2 == 0) {
                return -1;
            }
            if (j > j2) {
                j = j2;
            }
            xj0.H(this, j);
            return j;
        } else {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
    }
}
