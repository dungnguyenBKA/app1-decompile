package defpackage;

import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

/* renamed from: pj0  reason: default package */
public final class pj0 implements sj0 {
    private final Map<X500Principal, Set<X509Certificate>> a = new LinkedHashMap();

    public pj0(X509Certificate... x509CertificateArr) {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            Set<X509Certificate> set = this.a.get(subjectX500Principal);
            if (set == null) {
                set = new LinkedHashSet<>(1);
                this.a.put(subjectX500Principal, set);
            }
            set.add(x509Certificate);
        }
    }

    @Override // defpackage.sj0
    public X509Certificate a(X509Certificate x509Certificate) {
        Set<X509Certificate> set = this.a.get(x509Certificate.getIssuerX500Principal());
        if (set == null) {
            return null;
        }
        for (X509Certificate x509Certificate2 : set) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pj0) || !((pj0) obj).a.equals(this.a)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
