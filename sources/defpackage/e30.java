package defpackage;

import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* renamed from: e30  reason: default package */
final /* synthetic */ class e30 implements zr {
    private static final e30 a = new e30();

    private e30() {
    }

    public static zr a() {
        return a;
    }

    @Override // defpackage.zr
    public Object apply(Object obj) {
        return f30.b.m((i20) obj).getBytes(Charset.forName(HTTP.UTF_8));
    }
}
