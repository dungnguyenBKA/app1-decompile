package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.bT  reason: case insensitive filesystem */
public final class C1098bT implements HI {
    public static String[] A04;
    public long A00;
    public boolean A01;
    public final HG A02;
    public final HI A03;

    static {
        A00();
    }

    public static void A00() {
        A04 = new String[]{"jlvJAgNeHWnJa3dPhRRd4EpOWMdB4X8x", "basxIWwUdkqjCj33WkHPX1XLcRlnz9UL", "EJ8jlkQXjQdwyr2PvL7NnSmrIKvSoKH9", "vRfpY4dXxgFvSAkqLCYO6SFKljAHuCzv", "ygfsCaK9ODNV1JdDOAbtF6as7T2mwjea", "kZYhIpAIarjEuyurYojB34Vr8jYSU6r4", "j4JmDL8bElApoe2AoNbHhKsqdvNkVwQT", "xpYPLrN7DnWMQWubBysNzF9"};
    }

    public C1098bT(HI hi, HG hg) {
        this.A03 = (HI) C0551Hx.A01(hi);
        this.A02 = (HG) C0551Hx.A01(hg);
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final Uri A7R() {
        return this.A03.A7R();
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final long ACC(HM dataSpec) throws IOException {
        this.A00 = this.A03.ACC(dataSpec);
        if (this.A00 == 0) {
            return 0;
        }
        int i = (dataSpec.A02 > -1 ? 1 : (dataSpec.A02 == -1 ? 0 : -1));
        if (A04[4].charAt(25) != 'd') {
            A04[4] = "5eBqCtKJCfmd3joSOHW3VJl5u39JA8K8";
            if (i == 0 && this.A00 != -1) {
                dataSpec = new HM(dataSpec.A04, dataSpec.A01, dataSpec.A03, this.A00, dataSpec.A05, dataSpec.A00);
            }
            this.A01 = true;
            this.A02.ACE(dataSpec);
            return this.A00;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final void close() throws IOException {
        try {
            this.A03.close();
        } finally {
            if (this.A01) {
                this.A01 = false;
                this.A02.close();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.A00 == 0) {
            return -1;
        }
        int read = this.A03.read(bArr, i, i2);
        if (read > 0) {
            this.A02.write(bArr, i, read);
            long j = this.A00;
            if (j != -1) {
                long j2 = (long) read;
                if (A04[2].charAt(20) != 'R') {
                    String[] strArr = A04;
                    strArr[0] = "pjLm1ZauVMrHAqpQAI7gN0n14eRh7O52";
                    strArr[5] = "T96N4GskjcbGLsEcsrwL44bvdnkYKV6X";
                    this.A00 = j - j2;
                } else {
                    throw new RuntimeException();
                }
            }
        }
        return read;
    }
}
