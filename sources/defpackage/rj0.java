package defpackage;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* renamed from: rj0  reason: default package */
public final class rj0 implements HostnameVerifier {
    public static final rj0 a = new rj0();

    private rj0() {
    }

    public static List<String> a(X509Certificate x509Certificate) {
        List<String> b = b(x509Certificate, 7);
        List<String> b2 = b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(b2.size() + b.size());
        arrayList.addAll(b);
        arrayList.addAll(b2);
        return arrayList;
    }

    private static List<String> b(X509Certificate x509Certificate, int i) {
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null) {
                    if (list.size() >= 2) {
                        Integer num = (Integer) list.get(0);
                        if (num != null) {
                            if (num.intValue() == i && (str = (String) list.get(1)) != null) {
                                arrayList.add(str);
                            }
                        }
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x0020 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(java.lang.String r10, java.security.cert.X509Certificate r11) {
        /*
        // Method dump skipped, instructions count: 253
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rj0.c(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
