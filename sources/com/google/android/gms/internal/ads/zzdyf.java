package com.google.android.gms.internal.ads;

import java.io.OutputStream;

final class zzdyf extends OutputStream {
    zzdyf() {
    }

    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        zzdwl.checkNotNull(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        zzdwl.checkNotNull(bArr);
    }
}
