package com.facebook.ads.redexgen.X;

import java.io.ByteArrayInputStream;

public final class RT implements AnonymousClass0K {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public RT(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0K
    public final void ACD(int i) throws RU {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip((long) i);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0K
    public final void close() throws RU {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0K
    public final int length() throws RU {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0K
    public final int read(byte[] bArr) throws RU {
        return this.A00.read(bArr, 0, bArr.length);
    }
}
