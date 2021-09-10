package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;

public final class LJ implements Closeable {
    @Nullable
    public LI A00;
    public boolean A01 = false;
    public final LH A02;
    public final Runnable A03;

    public LJ(long j, Runnable runnable) {
        this.A02 = new LH(j);
        this.A02.A02();
        this.A03 = runnable;
    }

    private final synchronized void A03() {
        if (this.A00 == null) {
            if (!this.A01) {
                this.A00 = new LI(this);
            }
        }
    }

    public final LH A04() {
        return this.A02;
    }

    public final synchronized void A05() {
        if (!this.A01) {
            if (this.A00 == null) {
                this.A00 = new LI(this);
            }
            this.A00.A01();
        }
    }

    public final synchronized void A06() {
        if (this.A02.A05() && !this.A01) {
            A03();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        LI li;
        synchronized (this) {
            this.A01 = true;
            li = this.A00;
        }
        if (li != null) {
            li.close();
        }
    }
}
