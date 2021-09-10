package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;

public interface zzepn extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long position();

    int read(ByteBuffer byteBuffer);

    long size();

    void zzfc(long j);

    ByteBuffer zzh(long j, long j2);
}
