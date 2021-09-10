package defpackage;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* renamed from: zj0  reason: default package */
public interface zj0 extends rk0, ReadableByteChannel {
    boolean E(long j, ak0 ak0);

    String F(Charset charset);

    boolean K(long j);

    String O();

    int P();

    byte[] Q(long j);

    short W();

    long Y(qk0 qk0);

    @Deprecated
    xj0 a();

    void c0(long j);

    long e0(byte b);

    ak0 f(long j);

    long f0();

    InputStream g0();

    int h0(kk0 kk0);

    byte[] q();

    byte readByte();

    void readFully(byte[] bArr);

    int readInt();

    short readShort();

    void skip(long j);

    boolean t();

    long w(ak0 ak0);

    String y(long j);
}
