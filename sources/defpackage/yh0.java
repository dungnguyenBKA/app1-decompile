package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* renamed from: yh0  reason: default package */
public final class yh0 {
    private final List<ug0> a;
    private int b = 0;
    private boolean c;
    private boolean d;

    public yh0(List<ug0> list) {
        this.a = list;
    }

    public ug0 a(SSLSocket sSLSocket) {
        boolean z;
        ug0 ug0;
        int i = this.b;
        int size = this.a.size();
        while (true) {
            z = true;
            if (i >= size) {
                ug0 = null;
                break;
            }
            ug0 = this.a.get(i);
            if (ug0.a(sSLSocket)) {
                this.b = i + 1;
                break;
            }
            i++;
        }
        if (ug0 != null) {
            int i2 = this.b;
            while (true) {
                if (i2 >= this.a.size()) {
                    z = false;
                    break;
                } else if (this.a.get(i2).a(sSLSocket)) {
                    break;
                } else {
                    i2++;
                }
            }
            this.c = z;
            ph0.a.c(ug0, sSLSocket, this.d);
            return ug0;
        }
        StringBuilder q = ic.q("Unable to find acceptable protocols. isFallback=");
        q.append(this.d);
        q.append(", modes=");
        q.append(this.a);
        q.append(", supported protocols=");
        q.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
        throw new UnknownServiceException(q.toString());
    }

    public boolean b(IOException iOException) {
        this.d = true;
        if (!this.c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        if (z || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException)) {
            return true;
        }
        return false;
    }
}
