package com.facebook.ads.redexgen.X;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: com.facebook.ads.redexgen.X.bW  reason: case insensitive filesystem */
public final class C1101bW implements HG {
    public static String[] A0B;
    public long A00;
    public long A01;
    public HM A02;
    public IT A03;
    public File A04;
    public FileOutputStream A05;
    public OutputStream A06;
    public final int A07;
    public final long A08;
    public final AbstractC0535Hh A09;
    public final boolean A0A;

    static {
        A02();
    }

    public static void A02() {
        A0B = new String[]{"w20bAWjYMNQBWlbon1lxwLvvC2Wc6aDw", "lwUY3oAzCyDGvzazHVXOHQ3zY7kbNweW", "UaweMkDBVxVyODuJAIk0oAizBiXulMgw", "HCwWhWYnSwS9lU8hovQ66gM", "BSrpyguVpFJpaQafc1NdT7mO3uIgLmFW", "PMiNqiQ4kgs0VWuHsJy6tm47yNuoSJAG", "LFxM2Smyc2PeWHZihlec1nFmzNKIeMAJ", "CwFpegEhQfdxfTMnj3Ot7m2"};
    }

    public C1101bW(AbstractC0535Hh hh, long j) {
        this(hh, j, 20480, true);
    }

    public C1101bW(AbstractC0535Hh hh, long j, int i, boolean z) {
        this.A09 = (AbstractC0535Hh) C0551Hx.A01(hh);
        this.A08 = j;
        this.A07 = i;
        this.A0A = z;
    }

    private void A00() throws IOException {
        File file;
        OutputStream outputStream = this.A06;
        if (outputStream != null) {
            boolean z = false;
            try {
                outputStream.flush();
                if (this.A0A) {
                    this.A05.getFD().sync();
                }
                z = true;
                if (!z) {
                    file.delete();
                }
            } finally {
                C0556Ic.A0Y(this.A06);
                this.A06 = null;
                file = this.A04;
                this.A04 = null;
                if (z) {
                    this.A09.A45(file);
                } else {
                    file.delete();
                }
            }
        }
    }

    private void A01() throws IOException {
        long min;
        if (this.A02.A02 == -1) {
            min = this.A08;
        } else {
            min = Math.min(this.A02.A02 - this.A00, this.A08);
        }
        this.A04 = this.A09.AE6(this.A02.A05, this.A00 + this.A02.A01, min);
        this.A05 = new FileOutputStream(this.A04);
        int i = this.A07;
        if (i > 0) {
            IT it = this.A03;
            if (it == null) {
                this.A03 = new IT(this.A05, i);
            } else {
                it.A00(this.A05);
            }
            this.A06 = this.A03;
        } else {
            this.A06 = this.A05;
        }
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.HG
    public final void ACE(HM hm) throws C1100bV {
        if (hm.A02 != -1 || hm.A02(2)) {
            this.A02 = hm;
            this.A00 = 0;
            try {
                A01();
            } catch (IOException e) {
                throw new C1100bV(e);
            }
        } else {
            this.A02 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.HG
    public final void close() throws C1100bV {
        if (this.A02 != null) {
            try {
                A00();
            } catch (IOException e) {
                throw new C1100bV(e);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.HG
    public final void write(byte[] bArr, int bytesToWrite, int i) throws C1100bV {
        if (this.A02 != null) {
            int i2 = 0;
            while (i2 < i) {
                try {
                    int i3 = (this.A01 > this.A08 ? 1 : (this.A01 == this.A08 ? 0 : -1));
                    if (A0B[0].charAt(30) != 'D') {
                        throw new RuntimeException();
                    }
                    A0B[6] = "jgYsfafqQwydOQ8BdugE0IR3OVOgVMqo";
                    if (i3 == 0) {
                        A00();
                        A01();
                    }
                    int min = (int) Math.min((long) (i - i2), this.A08 - this.A01);
                    this.A06.write(bArr, bytesToWrite + i2, min);
                    i2 += min;
                    this.A01 += (long) min;
                    this.A00 += (long) min;
                } catch (IOException e) {
                    throw new C1100bV(e);
                }
            }
        }
    }
}
