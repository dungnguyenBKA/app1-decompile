package defpackage;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* renamed from: bh0  reason: default package */
public final class bh0 {
    private final oh0 a;
    private final rg0 b;
    private final List<Certificate> c;
    private final List<Certificate> d;

    private bh0(oh0 oh0, rg0 rg0, List<Certificate> list, List<Certificate> list2) {
        this.a = oh0;
        this.b = rg0;
        this.c = list;
        this.d = list2;
    }

    public static bh0 b(SSLSession sSLSession) {
        Certificate[] certificateArr;
        List list;
        List list2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        } else if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            rg0 a2 = rg0.a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            } else if (!"NONE".equals(protocol)) {
                oh0 a3 = oh0.a(protocol);
                try {
                    certificateArr = sSLSession.getPeerCertificates();
                } catch (SSLPeerUnverifiedException unused) {
                    certificateArr = null;
                }
                if (certificateArr != null) {
                    list = rh0.r(certificateArr);
                } else {
                    list = Collections.emptyList();
                }
                Certificate[] localCertificates = sSLSession.getLocalCertificates();
                if (localCertificates != null) {
                    list2 = rh0.r(localCertificates);
                } else {
                    list2 = Collections.emptyList();
                }
                return new bh0(a3, a2, list, list2);
            } else {
                throw new IOException("tlsVersion == NONE");
            }
        } else {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
    }

    public rg0 a() {
        return this.b;
    }

    public List<Certificate> c() {
        return this.c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof bh0)) {
            return false;
        }
        bh0 bh0 = (bh0) obj;
        if (!this.a.equals(bh0.a) || !this.b.equals(bh0.b) || !this.c.equals(bh0.c) || !this.d.equals(bh0.d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        int hashCode2 = this.c.hashCode();
        return this.d.hashCode() + ((hashCode2 + ((hashCode + ((this.a.hashCode() + 527) * 31)) * 31)) * 31);
    }
}
