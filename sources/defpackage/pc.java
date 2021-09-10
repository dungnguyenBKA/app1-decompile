package defpackage;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: pc  reason: default package */
public class pc {
    private final byte[] a = new byte[256];
    private ByteBuffer b;
    private oc c;
    private int d = 0;

    private boolean b() {
        return this.c.b != 0;
    }

    private int d() {
        try {
            return this.b.get() & 255;
        } catch (Exception unused) {
            this.c.b = 1;
            return 0;
        }
    }

    private void e() {
        int d2 = d();
        this.d = d2;
        if (d2 > 0) {
            int i = 0;
            while (true) {
                try {
                    int i2 = this.d;
                    if (i < i2) {
                        int i3 = i2 - i;
                        this.b.get(this.a, i, i3);
                        i += i3;
                    } else {
                        return;
                    }
                } catch (Exception unused) {
                    Log.isLoggable("GifHeaderParser", 3);
                    this.c.b = 1;
                    return;
                }
            }
        }
    }

    private int[] f(int i) {
        byte[] bArr = new byte[(i * 3)];
        int[] iArr = null;
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = i4 + 1;
                int i6 = i5 + 1;
                int i7 = i2 + 1;
                iArr[i2] = ((bArr[i3] & 255) << 16) | -16777216 | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i6;
                i2 = i7;
            }
        } catch (BufferUnderflowException unused) {
            Log.isLoggable("GifHeaderParser", 3);
            this.c.b = 1;
        }
        return iArr;
    }

    private int g() {
        return this.b.getShort();
    }

    private void i() {
        int d2;
        do {
            d2 = d();
            this.b.position(Math.min(this.b.position() + d2, this.b.limit()));
        } while (d2 > 0);
    }

    public void a() {
        this.b = null;
        this.c = null;
    }

    public oc c() {
        if (this.b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (b()) {
            return this.c;
        } else {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 6; i++) {
                sb.append((char) d());
            }
            if (!sb.toString().startsWith("GIF")) {
                this.c.b = 1;
            } else {
                this.c.f = g();
                this.c.g = g();
                int d2 = d();
                oc ocVar = this.c;
                ocVar.h = (d2 & 128) != 0;
                ocVar.i = (int) Math.pow(2.0d, (double) ((d2 & 7) + 1));
                this.c.j = d();
                oc ocVar2 = this.c;
                d();
                Objects.requireNonNull(ocVar2);
                if (this.c.h && !b()) {
                    oc ocVar3 = this.c;
                    ocVar3.a = f(ocVar3.i);
                    oc ocVar4 = this.c;
                    ocVar4.k = ocVar4.a[ocVar4.j];
                }
            }
            if (!b()) {
                boolean z = false;
                while (!z && !b() && this.c.c <= Integer.MAX_VALUE) {
                    int d3 = d();
                    if (d3 == 33) {
                        int d4 = d();
                        if (d4 == 1) {
                            i();
                        } else if (d4 == 249) {
                            this.c.d = new nc();
                            d();
                            int d5 = d();
                            nc ncVar = this.c.d;
                            int i2 = (d5 & 28) >> 2;
                            ncVar.g = i2;
                            if (i2 == 0) {
                                ncVar.g = 1;
                            }
                            ncVar.f = (d5 & 1) != 0;
                            int g = g();
                            if (g < 2) {
                                g = 10;
                            }
                            nc ncVar2 = this.c.d;
                            ncVar2.i = g * 10;
                            ncVar2.h = d();
                            d();
                        } else if (d4 == 254) {
                            i();
                        } else if (d4 != 255) {
                            i();
                        } else {
                            e();
                            StringBuilder sb2 = new StringBuilder();
                            for (int i3 = 0; i3 < 11; i3++) {
                                sb2.append((char) this.a[i3]);
                            }
                            if (sb2.toString().equals("NETSCAPE2.0")) {
                                do {
                                    e();
                                    byte[] bArr = this.a;
                                    if (bArr[0] == 1) {
                                        byte b2 = bArr[1];
                                        byte b3 = bArr[2];
                                        Objects.requireNonNull(this.c);
                                    }
                                    if (this.d <= 0) {
                                        break;
                                    }
                                } while (!b());
                            } else {
                                i();
                            }
                        }
                    } else if (d3 == 44) {
                        oc ocVar5 = this.c;
                        if (ocVar5.d == null) {
                            ocVar5.d = new nc();
                        }
                        ocVar5.d.a = g();
                        this.c.d.b = g();
                        this.c.d.c = g();
                        this.c.d.d = g();
                        int d6 = d();
                        boolean z2 = (d6 & 128) != 0;
                        int pow = (int) Math.pow(2.0d, (double) ((d6 & 7) + 1));
                        nc ncVar3 = this.c.d;
                        ncVar3.e = (d6 & 64) != 0;
                        if (z2) {
                            ncVar3.k = f(pow);
                        } else {
                            ncVar3.k = null;
                        }
                        this.c.d.j = this.b.position();
                        d();
                        i();
                        if (!b()) {
                            oc ocVar6 = this.c;
                            ocVar6.c++;
                            ocVar6.e.add(ocVar6.d);
                        }
                    } else if (d3 != 59) {
                        this.c.b = 1;
                    } else {
                        z = true;
                    }
                }
                oc ocVar7 = this.c;
                if (ocVar7.c < 0) {
                    ocVar7.b = 1;
                }
            }
            return this.c;
        }
    }

    public pc h(ByteBuffer byteBuffer) {
        this.b = null;
        Arrays.fill(this.a, (byte) 0);
        this.c = new oc();
        this.d = 0;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
