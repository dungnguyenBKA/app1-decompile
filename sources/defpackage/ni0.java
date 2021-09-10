package defpackage;

import java.net.ProtocolException;

/* renamed from: ni0  reason: default package */
public final class ni0 {
    public final hh0 a;
    public final int b;
    public final String c;

    public ni0(hh0 hh0, int i, String str) {
        this.a = hh0;
        this.b = i;
        this.c = str;
    }

    public static ni0 a(String str) {
        String str2;
        hh0 hh0 = hh0.HTTP_1_0;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(ic.i("Unexpected status line: ", str));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt != 0) {
                if (charAt == 1) {
                    hh0 = hh0.HTTP_1_1;
                } else {
                    throw new ProtocolException(ic.i("Unexpected status line: ", str));
                }
            }
        } else if (str.startsWith("ICY ")) {
            i = 4;
        } else {
            throw new ProtocolException(ic.i("Unexpected status line: ", str));
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) == ' ') {
                    str2 = str.substring(i + 4);
                } else {
                    throw new ProtocolException(ic.i("Unexpected status line: ", str));
                }
                return new ni0(hh0, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException(ic.i("Unexpected status line: ", str));
            }
        } else {
            throw new ProtocolException(ic.i("Unexpected status line: ", str));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a == hh0.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.b);
        if (this.c != null) {
            sb.append(' ');
            sb.append(this.c);
        }
        return sb.toString();
    }
}
