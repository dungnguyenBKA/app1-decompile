package defpackage;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: rg0  reason: default package */
public final class rg0 {
    static final Comparator<String> b = new a();
    private static final Map<String, rg0> c;
    public static final rg0 d;
    public static final rg0 e;
    public static final rg0 f;
    public static final rg0 g;
    public static final rg0 h;
    public static final rg0 i;
    public static final rg0 j;
    public static final rg0 k;
    public static final rg0 l;
    public static final rg0 m;
    public static final rg0 n;
    public static final rg0 o;
    public static final rg0 p;
    public static final rg0 q;
    public static final rg0 r;
    public static final rg0 s;
    public static final rg0 t;
    public static final rg0 u;
    final String a;

    /* renamed from: rg0$a */
    class a implements Comparator<String> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            int min = Math.min(str3.length(), str4.length());
            int i = 4;
            while (true) {
                if (i < min) {
                    char charAt = str3.charAt(i);
                    char charAt2 = str4.charAt(i);
                    if (charAt == charAt2) {
                        i++;
                    } else if (charAt < charAt2) {
                        return -1;
                    }
                } else {
                    int length = str3.length();
                    int length2 = str4.length();
                    if (length == length2) {
                        return 0;
                    }
                    if (length < length2) {
                        return -1;
                    }
                }
            }
            return 1;
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c = linkedHashMap;
        linkedHashMap.put("SSL_RSA_WITH_NULL_MD5", new rg0("SSL_RSA_WITH_NULL_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_NULL_SHA", new rg0("SSL_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("SSL_RSA_EXPORT_WITH_RC4_40_MD5", new rg0("SSL_RSA_EXPORT_WITH_RC4_40_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_RC4_128_MD5", new rg0("SSL_RSA_WITH_RC4_128_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_RC4_128_SHA", new rg0("SSL_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", new rg0("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_RSA_WITH_DES_CBC_SHA", new rg0("SSL_RSA_WITH_DES_CBC_SHA"));
        rg0 rg0 = new rg0("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        linkedHashMap.put("SSL_RSA_WITH_3DES_EDE_CBC_SHA", rg0);
        d = rg0;
        linkedHashMap.put("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", new rg0("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_DSS_WITH_DES_CBC_SHA", new rg0("SSL_DHE_DSS_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", new rg0("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", new rg0("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_WITH_DES_CBC_SHA", new rg0("SSL_DHE_RSA_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", new rg0("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", new rg0("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"));
        linkedHashMap.put("SSL_DH_anon_WITH_RC4_128_MD5", new rg0("SSL_DH_anon_WITH_RC4_128_MD5"));
        linkedHashMap.put("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", new rg0("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_WITH_DES_CBC_SHA", new rg0("SSL_DH_anon_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", new rg0("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_DES_CBC_SHA", new rg0("TLS_KRB5_WITH_DES_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_KRB5_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_RC4_128_SHA", new rg0("TLS_KRB5_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_DES_CBC_MD5", new rg0("TLS_KRB5_WITH_DES_CBC_MD5"));
        linkedHashMap.put("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", new rg0("TLS_KRB5_WITH_3DES_EDE_CBC_MD5"));
        linkedHashMap.put("TLS_KRB5_WITH_RC4_128_MD5", new rg0("TLS_KRB5_WITH_RC4_128_MD5"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", new rg0("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", new rg0("TLS_KRB5_EXPORT_WITH_RC4_40_SHA"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", new rg0("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", new rg0("TLS_KRB5_EXPORT_WITH_RC4_40_MD5"));
        rg0 rg02 = new rg0("TLS_RSA_WITH_AES_128_CBC_SHA");
        linkedHashMap.put("TLS_RSA_WITH_AES_128_CBC_SHA", rg02);
        e = rg02;
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", new rg0("TLS_DHE_DSS_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", new rg0("TLS_DHE_RSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_CBC_SHA", new rg0("TLS_DH_anon_WITH_AES_128_CBC_SHA"));
        rg0 rg03 = new rg0("TLS_RSA_WITH_AES_256_CBC_SHA");
        linkedHashMap.put("TLS_RSA_WITH_AES_256_CBC_SHA", rg03);
        f = rg03;
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", new rg0("TLS_DHE_DSS_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", new rg0("TLS_DHE_RSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_CBC_SHA", new rg0("TLS_DH_anon_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_RSA_WITH_NULL_SHA256", new rg0("TLS_RSA_WITH_NULL_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_AES_256_CBC_SHA256", new rg0("TLS_RSA_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", new rg0("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", new rg0("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", new rg0("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", new rg0("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", new rg0("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", new rg0("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_CBC_SHA256", new rg0("TLS_DH_anon_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_CBC_SHA256", new rg0("TLS_DH_anon_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", new rg0("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", new rg0("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", new rg0("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_RC4_128_SHA", new rg0("TLS_PSK_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_PSK_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_AES_128_CBC_SHA", new rg0("TLS_PSK_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_AES_256_CBC_SHA", new rg0("TLS_PSK_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_RSA_WITH_SEED_CBC_SHA", new rg0("TLS_RSA_WITH_SEED_CBC_SHA"));
        rg0 rg04 = new rg0("TLS_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_RSA_WITH_AES_128_GCM_SHA256", rg04);
        g = rg04;
        rg0 rg05 = new rg0("TLS_RSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_RSA_WITH_AES_256_GCM_SHA384", rg05);
        h = rg05;
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", new rg0("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", new rg0("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", new rg0("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", new rg0("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_GCM_SHA256", new rg0("TLS_DH_anon_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_GCM_SHA384", new rg0("TLS_DH_anon_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", new rg0("TLS_EMPTY_RENEGOTIATION_INFO_SCSV"));
        linkedHashMap.put("TLS_FALLBACK_SCSV", new rg0("TLS_FALLBACK_SCSV"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_NULL_SHA", new rg0("TLS_ECDH_ECDSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", new rg0("TLS_ECDH_ECDSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", new rg0("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", new rg0("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_NULL_SHA", new rg0("TLS_ECDHE_ECDSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", new rg0("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", new rg0("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", new rg0("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_NULL_SHA", new rg0("TLS_ECDH_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_RC4_128_SHA", new rg0("TLS_ECDH_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", new rg0("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", new rg0("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_NULL_SHA", new rg0("TLS_ECDHE_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_RC4_128_SHA", new rg0("TLS_ECDHE_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"));
        rg0 rg06 = new rg0("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", rg06);
        i = rg06;
        rg0 rg07 = new rg0("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", rg07);
        j = rg07;
        linkedHashMap.put("TLS_ECDH_anon_WITH_NULL_SHA", new rg0("TLS_ECDH_anon_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_RC4_128_SHA", new rg0("TLS_ECDH_anon_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", new rg0("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", new rg0("TLS_ECDH_anon_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", new rg0("TLS_ECDH_anon_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", new rg0("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", new rg0("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", new rg0("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", new rg0("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", new rg0("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"));
        rg0 rg08 = new rg0("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", rg08);
        k = rg08;
        rg0 rg09 = new rg0("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", rg09);
        l = rg09;
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", new rg0("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", new rg0("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"));
        rg0 rg010 = new rg0("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", rg010);
        m = rg010;
        rg0 rg011 = new rg0("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", rg011);
        n = rg011;
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", new rg0("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", new rg0("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", new rg0("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", new rg0("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"));
        rg0 rg012 = new rg0("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", rg012);
        o = rg012;
        rg0 rg013 = new rg0("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", rg013);
        p = rg013;
        linkedHashMap.put("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", new rg0("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", new rg0("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"));
        rg0 rg014 = new rg0("TLS_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_AES_128_GCM_SHA256", rg014);
        q = rg014;
        rg0 rg015 = new rg0("TLS_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_AES_256_GCM_SHA384", rg015);
        r = rg015;
        rg0 rg016 = new rg0("TLS_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_CHACHA20_POLY1305_SHA256", rg016);
        s = rg016;
        rg0 rg017 = new rg0("TLS_AES_128_CCM_SHA256");
        linkedHashMap.put("TLS_AES_128_CCM_SHA256", rg017);
        t = rg017;
        rg0 rg018 = new rg0("TLS_AES_256_CCM_8_SHA256");
        linkedHashMap.put("TLS_AES_256_CCM_8_SHA256", rg018);
        u = rg018;
    }

    private rg0(String str) {
        Objects.requireNonNull(str);
        this.a = str;
    }

    public static synchronized rg0 a(String str) {
        rg0 rg0;
        synchronized (rg0.class) {
            Map<String, rg0> map = c;
            rg0 = map.get(str);
            if (rg0 == null) {
                rg0 = map.get(b(str));
                if (rg0 == null) {
                    rg0 = new rg0(str);
                }
                map.put(str, rg0);
            }
        }
        return rg0;
    }

    private static String b(String str) {
        if (str.startsWith("TLS_")) {
            StringBuilder q2 = ic.q("SSL_");
            q2.append(str.substring(4));
            return q2.toString();
        } else if (!str.startsWith("SSL_")) {
            return str;
        } else {
            StringBuilder q3 = ic.q("TLS_");
            q3.append(str.substring(4));
            return q3.toString();
        }
    }

    public String toString() {
        return this.a;
    }
}
