package defpackage;

import java.util.List;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.protocol.HTTP;

/* renamed from: ii0  reason: default package */
public final class ii0 {
    static {
        ak0.e(BasicHeaderValueFormatter.UNSAFE_CHARS);
        ak0.e("\t ,=");
    }

    public static long a(lh0 lh0) {
        String c = lh0.b0().c("Content-Length");
        if (c != null) {
            try {
                return Long.parseLong(c);
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public static boolean b(lh0 lh0) {
        if (lh0.n0().f().equals(HttpHead.METHOD_NAME)) {
            return false;
        }
        int L = lh0.L();
        if (((L >= 100 && L < 200) || L == 204 || L == 304) && a(lh0) == -1 && !HTTP.CHUNK_CODING.equalsIgnoreCase(lh0.V("Transfer-Encoding"))) {
            return false;
        }
        return true;
    }

    public static int c(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static void d(wg0 wg0, dh0 dh0, ch0 ch0) {
        if (wg0 != wg0.a) {
            List<vg0> c = vg0.c(dh0, ch0);
            if (!c.isEmpty()) {
                wg0.a(dh0, c);
            }
        }
    }

    public static int e(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }
}
