package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class TrustManagerDecorator implements X509TrustManager {
    private final X509TrustManager trustManager;
    private final TrustStrategy trustStrategy;

    TrustManagerDecorator(X509TrustManager x509TrustManager, TrustStrategy trustStrategy2) {
        this.trustManager = x509TrustManager;
        this.trustStrategy = trustStrategy2;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        this.trustManager.checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (!this.trustStrategy.isTrusted(x509CertificateArr, str)) {
            this.trustManager.checkServerTrusted(x509CertificateArr, str);
        }
    }

    public X509Certificate[] getAcceptedIssuers() {
        return this.trustManager.getAcceptedIssuers();
    }
}
