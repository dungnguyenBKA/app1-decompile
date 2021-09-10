package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* access modifiers changed from: package-private */
public final class zzbcw implements zzepn {
    private final ByteBuffer zzamk;

    zzbcw(ByteBuffer byteBuffer) {
        this.zzamk = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzepn, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final long position() {
        return (long) this.zzamk.position();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final int read(ByteBuffer byteBuffer) {
        if (this.zzamk.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), this.zzamk.remaining());
        byte[] bArr = new byte[min];
        this.zzamk.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final long size() {
        return (long) this.zzamk.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final void zzfc(long j) {
        this.zzamk.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzepn
    public final ByteBuffer zzh(long j, long j2) {
        int position = this.zzamk.position();
        this.zzamk.position((int) j);
        ByteBuffer slice = this.zzamk.slice();
        slice.limit((int) j2);
        this.zzamk.position(position);
        return slice;
    }
}
