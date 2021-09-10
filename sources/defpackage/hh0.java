package defpackage;

import java.io.IOException;

/* renamed from: hh0  reason: default package */
public enum hh0 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    
    private final String b;

    private hh0(String str) {
        this.b = str;
    }

    public static hh0 a(String str) {
        hh0 hh0 = HTTP_1_0;
        if (str.equals("http/1.0")) {
            return hh0;
        }
        hh0 hh02 = HTTP_1_1;
        if (str.equals("http/1.1")) {
            return hh02;
        }
        hh0 hh03 = H2_PRIOR_KNOWLEDGE;
        if (str.equals("h2_prior_knowledge")) {
            return hh03;
        }
        hh0 hh04 = HTTP_2;
        if (str.equals("h2")) {
            return hh04;
        }
        hh0 hh05 = SPDY_3;
        if (str.equals("spdy/3.1")) {
            return hh05;
        }
        hh0 hh06 = QUIC;
        if (str.equals("quic")) {
            return hh06;
        }
        throw new IOException(ic.i("Unexpected protocol: ", str));
    }

    public String toString() {
        return this.b;
    }
}
