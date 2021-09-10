package defpackage;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* renamed from: qg0  reason: default package */
public final class qg0 {
    public static final qg0 c = new a().a();
    private final Set<b> a;
    @Nullable
    private final qj0 b;

    /* renamed from: qg0$a */
    public static final class a {
        private final List<b> a = new ArrayList();

        public qg0 a() {
            return new qg0(new LinkedHashSet(this.a), null);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: qg0$b */
    public static final class b {
        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            Objects.requireNonNull((b) obj);
            throw null;
        }

        public int hashCode() {
            throw null;
        }

        public String toString() {
            new StringBuilder().append((String) null);
            throw null;
        }
    }

    qg0(Set<b> set, @Nullable qj0 qj0) {
        this.a = set;
        this.b = qj0;
    }

    public static String b(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            StringBuilder q = ic.q("sha256/");
            q.append(ak0.i(((X509Certificate) certificate).getPublicKey().getEncoded()).l().a());
            return q.toString();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public void a(String str, List<Certificate> list) {
        List emptyList = Collections.emptyList();
        Iterator<b> it = this.a.iterator();
        if (it.hasNext()) {
            Objects.requireNonNull(it.next());
            throw null;
        } else if (!emptyList.isEmpty()) {
            qj0 qj0 = this.b;
            if (qj0 != null) {
                list = qj0.a(list, str);
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i);
                if (emptyList.size() > 0) {
                    Objects.requireNonNull((b) emptyList.get(0));
                    throw null;
                }
            }
            StringBuilder r = ic.r("Certificate pinning failure!", "\n  Peer certificate chain:");
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                X509Certificate x509Certificate2 = (X509Certificate) list.get(i2);
                r.append("\n    ");
                r.append(b(x509Certificate2));
                r.append(": ");
                r.append(x509Certificate2.getSubjectDN().getName());
            }
            r.append("\n  Pinned certificates for ");
            r.append(str);
            r.append(":");
            int size3 = emptyList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                r.append("\n    ");
                r.append((b) emptyList.get(i3));
            }
            throw new SSLPeerUnverifiedException(r.toString());
        }
    }

    /* access modifiers changed from: package-private */
    public qg0 c(@Nullable qj0 qj0) {
        return rh0.n(this.b, qj0) ? this : new qg0(this.a, qj0);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof qg0) {
            qg0 qg0 = (qg0) obj;
            if (!rh0.n(this.b, qg0.b) || !this.a.equals(qg0.a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        qj0 qj0 = this.b;
        return this.a.hashCode() + ((qj0 != null ? qj0.hashCode() : 0) * 31);
    }
}
