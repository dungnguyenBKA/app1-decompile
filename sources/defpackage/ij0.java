package defpackage;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.conscrypt.Conscrypt;

/* renamed from: ij0  reason: default package */
public class ij0 extends mj0 {
    private ij0() {
    }

    public static ij0 p() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (!Conscrypt.isAvailable()) {
                return null;
            }
            return new ij0();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private Provider q() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }

    @Override // defpackage.mj0
    public void e(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // defpackage.mj0
    public void f(SSLSocket sSLSocket, String str, List<hh0> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) ((ArrayList) mj0.b(list)).toArray(new String[0]));
        }
    }

    @Override // defpackage.mj0
    public SSLContext i() {
        try {
            return SSLContext.getInstance("TLSv1.3", q());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS, q());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    @Override // defpackage.mj0
    @Nullable
    public String j(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }
}
