package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;

public final class CL {
    public final IM A00 = new IM(10);

    @Nullable
    public final Metadata A00(CH ch, @Nullable E6 e6) throws IOException, InterruptedException {
        int i = 0;
        Metadata metadata = null;
        while (true) {
            try {
                ch.ACM(this.A00.A00, 0, 10);
                this.A00.A0Z(0);
                if (this.A00.A0H() != C1010a1.A03) {
                    break;
                }
                this.A00.A0a(3);
                int A0E = this.A00.A0E();
                int i2 = A0E + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.A00.A00, 0, bArr, 0, 10);
                    ch.ACM(bArr, 10, A0E);
                    metadata = new C1010a1(e6).A0P(bArr, i2);
                } else {
                    ch.A3N(A0E);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        ch.ADN();
        ch.A3N(i);
        return metadata;
    }
}
