package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;

final class zztq extends PushbackInputStream {
    private final /* synthetic */ zztp zzbwc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zztq(zztp zztp, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zzbwc = zztp;
    }

    @Override // java.io.FilterInputStream, java.io.PushbackInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final synchronized void close() {
        this.zzbwc.zzbvu.disconnect();
        super.close();
    }
}
