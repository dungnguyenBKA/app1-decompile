package com.facebook.ads.redexgen.X;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class IT extends BufferedOutputStream {
    public boolean A00;

    public IT(OutputStream outputStream) {
        super(outputStream);
    }

    public IT(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    public final void A00(OutputStream outputStream) {
        C0551Hx.A04(this.A00);
        this.out = outputStream;
        this.count = 0;
        this.A00 = false;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.io.FilterOutputStream, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A00 = true;
        Throwable th = null;
        try {
            flush();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.out.close();
        } catch (Throwable e) {
            if (th == null) {
                th = e;
            }
        }
        if (th != null) {
            C0556Ic.A0Z(th);
        }
    }
}
