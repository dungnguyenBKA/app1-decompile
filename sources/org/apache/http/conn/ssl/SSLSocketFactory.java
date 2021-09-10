package org.apache.http.conn.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.KeyStore;
import java.security.SecureRandom;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.HostNameResolver;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

@ThreadSafe
public class SSLSocketFactory implements LayeredSchemeSocketFactory, LayeredSocketFactory {
    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifier();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();
    public static final String TLS = "TLS";
    private volatile X509HostnameVerifier hostnameVerifier;
    private final HostNameResolver nameResolver;
    private final javax.net.ssl.SSLSocketFactory socketfactory;

    @Deprecated
    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, HostNameResolver hostNameResolver) {
        this(createSSLContext(str, keyStore, str2, keyStore2, secureRandom, null), hostNameResolver);
    }

    private static SSLContext createDefaultSSLContext() {
        try {
            return createSSLContext(TLS, null, null, null, null, null);
        } catch (Exception e) {
            throw new IllegalStateException("Failure initializing default SSL context", e);
        }
    }

    private static SSLContext createSSLContext(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, TrustStrategy trustStrategy) {
        if (str == null) {
            str = TLS;
        }
        KeyManagerFactory instance = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        instance.init(keyStore, str2 != null ? str2.toCharArray() : null);
        KeyManager[] keyManagers = instance.getKeyManagers();
        TrustManagerFactory instance2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        instance2.init(keyStore2);
        TrustManager[] trustManagers = instance2.getTrustManagers();
        if (!(trustManagers == null || trustStrategy == null)) {
            for (int i = 0; i < trustManagers.length; i++) {
                TrustManager trustManager = trustManagers[i];
                if (trustManager instanceof X509TrustManager) {
                    trustManagers[i] = new TrustManagerDecorator((X509TrustManager) trustManager, trustStrategy);
                }
            }
        }
        SSLContext instance3 = SSLContext.getInstance(str);
        instance3.init(keyManagers, trustManagers, secureRandom);
        return instance3;
    }

    public static SSLSocketFactory getSocketFactory() {
        return new SSLSocketFactory();
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket connectSocket(Socket socket, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpParams httpParams) {
        SSLSocket sSLSocket;
        if (inetSocketAddress == null) {
            throw new IllegalArgumentException("Remote address may not be null");
        } else if (httpParams != null) {
            if (socket == null) {
                socket = new Socket();
            }
            if (inetSocketAddress2 != null) {
                socket.setReuseAddress(HttpConnectionParams.getSoReuseaddr(httpParams));
                socket.bind(inetSocketAddress2);
            }
            int connectionTimeout = HttpConnectionParams.getConnectionTimeout(httpParams);
            try {
                socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpParams));
                socket.connect(inetSocketAddress, connectionTimeout);
                String inetSocketAddress3 = inetSocketAddress.toString();
                int port = inetSocketAddress.getPort();
                String f = ic.f(":", port);
                if (inetSocketAddress3.endsWith(f)) {
                    inetSocketAddress3 = inetSocketAddress3.substring(0, inetSocketAddress3.length() - f.length());
                }
                if (socket instanceof SSLSocket) {
                    sSLSocket = (SSLSocket) socket;
                } else {
                    sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, inetSocketAddress3, port, true);
                }
                if (this.hostnameVerifier != null) {
                    try {
                        this.hostnameVerifier.verify(inetSocketAddress3, sSLSocket);
                    } catch (IOException e) {
                        try {
                            sSLSocket.close();
                        } catch (Exception unused) {
                        }
                        throw e;
                    }
                }
                return sSLSocket;
            } catch (SocketTimeoutException unused2) {
                throw new ConnectTimeoutException("Connect to " + inetSocketAddress + " timed out");
            }
        } else {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
    }

    @Override // org.apache.http.conn.scheme.LayeredSchemeSocketFactory
    public Socket createLayeredSocket(Socket socket, String str, int i, boolean z) {
        SSLSocket sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, str, i, z);
        if (this.hostnameVerifier != null) {
            this.hostnameVerifier.verify(str, sSLSocket);
        }
        return sSLSocket;
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory
    public Socket createSocket(HttpParams httpParams) {
        return this.socketfactory.createSocket();
    }

    public X509HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    @Override // org.apache.http.conn.scheme.SchemeSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public boolean isSecure(Socket socket) {
        if (socket == null) {
            throw new IllegalArgumentException("Socket may not be null");
        } else if (!(socket instanceof SSLSocket)) {
            throw new IllegalArgumentException("Socket not created by this factory");
        } else if (!socket.isClosed()) {
            return true;
        } else {
            throw new IllegalArgumentException("Socket is closed");
        }
    }

    @Deprecated
    public void setHostnameVerifier(X509HostnameVerifier x509HostnameVerifier) {
        if (x509HostnameVerifier != null) {
            this.hostnameVerifier = x509HostnameVerifier;
            return;
        }
        throw new IllegalArgumentException("Hostname verifier may not be null");
    }

    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, X509HostnameVerifier x509HostnameVerifier) {
        this(createSSLContext(str, keyStore, str2, keyStore2, secureRandom, null), x509HostnameVerifier);
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    @Deprecated
    public Socket createSocket() {
        return this.socketfactory.createSocket();
    }

    public SSLSocketFactory(String str, KeyStore keyStore, String str2, KeyStore keyStore2, SecureRandom secureRandom, TrustStrategy trustStrategy, X509HostnameVerifier x509HostnameVerifier) {
        this(createSSLContext(str, keyStore, str2, keyStore2, secureRandom, trustStrategy), x509HostnameVerifier);
    }

    @Override // org.apache.http.conn.scheme.LayeredSocketFactory
    @Deprecated
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return createLayeredSocket(socket, str, i, z);
    }

    public SSLSocketFactory(KeyStore keyStore, String str, KeyStore keyStore2) {
        this(TLS, keyStore, str, keyStore2, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keyStore, String str) {
        this(TLS, keyStore, str, null, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keyStore) {
        this(TLS, null, null, keyStore, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(TrustStrategy trustStrategy, X509HostnameVerifier x509HostnameVerifier) {
        this(TLS, null, null, null, null, trustStrategy, x509HostnameVerifier);
    }

    public SSLSocketFactory(TrustStrategy trustStrategy) {
        this(TLS, null, null, null, null, trustStrategy, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sSLContext) {
        this(sSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    @Deprecated
    public SSLSocketFactory(SSLContext sSLContext, HostNameResolver hostNameResolver) {
        this.socketfactory = sSLContext.getSocketFactory();
        this.hostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
        this.nameResolver = hostNameResolver;
    }

    public SSLSocketFactory(SSLContext sSLContext, X509HostnameVerifier x509HostnameVerifier) {
        this.socketfactory = sSLContext.getSocketFactory();
        this.hostnameVerifier = x509HostnameVerifier;
        this.nameResolver = null;
    }

    private SSLSocketFactory() {
        this(createDefaultSSLContext());
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    @Deprecated
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) {
        InetSocketAddress inetSocketAddress;
        InetAddress inetAddress2;
        if (inetAddress != null || i2 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            inetSocketAddress = new InetSocketAddress(inetAddress, i2);
        } else {
            inetSocketAddress = null;
        }
        HostNameResolver hostNameResolver = this.nameResolver;
        if (hostNameResolver != null) {
            inetAddress2 = hostNameResolver.resolve(str);
        } else {
            inetAddress2 = InetAddress.getByName(str);
        }
        return connectSocket(socket, new InetSocketAddress(inetAddress2, i), inetSocketAddress, httpParams);
    }
}
