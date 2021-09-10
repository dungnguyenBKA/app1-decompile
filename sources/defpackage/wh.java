package defpackage;

import android.media.MediaDataSource;
import defpackage.vh;
import java.nio.ByteBuffer;

/* renamed from: wh  reason: default package */
class wh extends MediaDataSource {
    final /* synthetic */ ByteBuffer b;

    wh(vh.d dVar, ByteBuffer byteBuffer) {
        this.b = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        return (long) this.b.limit();
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) {
        if (j >= ((long) this.b.limit())) {
            return -1;
        }
        this.b.position((int) j);
        int min = Math.min(i2, this.b.remaining());
        this.b.get(bArr, i, min);
        return min;
    }
}
