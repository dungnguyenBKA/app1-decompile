package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

public final class OW extends InputStream {
    public int A00;
    public long A01;
    public HI A02;
    public final Uri A03;
    public final HH A04;

    public OW(Uri uri, HH hh) throws IOException {
        this.A04 = hh;
        this.A03 = uri;
        A00(0);
    }

    private void A00(int i) throws IOException {
        HI hi = this.A02;
        if (hi != null) {
            hi.close();
        }
        this.A02 = this.A04.A4E();
        this.A01 = (long) ((int) this.A02.ACC(new HM(this.A03, (long) i, -1, null)));
    }

    @Override // java.io.InputStream
    public final int available() {
        return ((int) this.A01) - this.A00;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final void close() throws IOException {
        this.A02.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return read(new byte[1]);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.A02.read(bArr, i, i2);
        this.A00 += read;
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        long j2 = this.A01 - ((long) this.A00);
        if (j2 <= 0) {
            return 0;
        }
        if (j > j2) {
            j = j2;
        }
        this.A00 = (int) (((long) this.A00) + j);
        A00(this.A00);
        return j;
    }
}
