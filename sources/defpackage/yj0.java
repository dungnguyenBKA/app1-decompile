package defpackage;

import java.nio.channels.WritableByteChannel;

/* renamed from: yj0  reason: default package */
public interface yj0 extends qk0, WritableByteChannel {
    yj0 C(String str);

    long I(rk0 rk0);

    yj0 J(long j);

    yj0 U(ak0 ak0);

    xj0 a();

    @Override // defpackage.qk0, java.io.Flushable
    void flush();

    yj0 h();

    yj0 i(int i);

    yj0 m(int i);

    yj0 s(int i);

    yj0 u(int i);

    yj0 write(byte[] bArr);

    yj0 write(byte[] bArr, int i, int i2);

    yj0 x();
}
