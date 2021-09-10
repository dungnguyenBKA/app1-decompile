package defpackage;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* renamed from: yg0  reason: default package */
public interface yg0 {
    public static final yg0 a = new a();

    /* renamed from: yg0$a */
    class a implements yg0 {
        a() {
        }

        @Override // defpackage.yg0
        public List<InetAddress> lookup(String str) {
            if (str != null) {
                try {
                    return Arrays.asList(InetAddress.getAllByName(str));
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException(ic.i("Broken system behaviour for dns lookup of ", str));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            } else {
                throw new UnknownHostException("hostname == null");
            }
        }
    }

    List<InetAddress> lookup(String str);
}
