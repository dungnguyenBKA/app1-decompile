package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;

public final class zzbh extends ByteArrayOutputStream {
    private final zzat zzcg;

    public zzbh(zzat zzat, int i) {
        this.zzcg = zzat;
        ((ByteArrayOutputStream) this).buf = zzat.zzf(Math.max(i, 256));
    }

    private final void zzg(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i > ((ByteArrayOutputStream) this).buf.length) {
            byte[] zzf = this.zzcg.zzf((i2 + i) << 1);
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, zzf, 0, ((ByteArrayOutputStream) this).count);
            this.zzcg.zza(((ByteArrayOutputStream) this).buf);
            ((ByteArrayOutputStream) this).buf = zzf;
        }
    }

    @Override // java.io.OutputStream, java.io.ByteArrayOutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zzcg.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    @Override // java.lang.Object
    public final void finalize() {
        this.zzcg.zza(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        zzg(i2);
        super.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.ByteArrayOutputStream
    public final synchronized void write(int i) {
        zzg(1);
        super.write(i);
    }
}
