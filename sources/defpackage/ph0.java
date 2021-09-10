package defpackage;

import defpackage.ch0;
import defpackage.lh0;
import java.io.IOException;
import java.net.Socket;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* renamed from: ph0  reason: default package */
public abstract class ph0 {
    public static ph0 a;

    public abstract void a(ch0.a aVar, String str);

    public abstract void b(ch0.a aVar, String str, String str2);

    public abstract void c(ug0 ug0, SSLSocket sSLSocket, boolean z);

    public abstract int d(lh0.a aVar);

    public abstract boolean e(tg0 tg0, zh0 zh0);

    public abstract Socket f(tg0 tg0, kg0 kg0, di0 di0);

    public abstract boolean g(kg0 kg0, kg0 kg02);

    public abstract zh0 h(tg0 tg0, kg0 kg0, di0 di0, nh0 nh0);

    public abstract void i(tg0 tg0, zh0 zh0);

    public abstract ai0 j(tg0 tg0);

    @Nullable
    public abstract IOException k(og0 og0, @Nullable IOException iOException);
}
