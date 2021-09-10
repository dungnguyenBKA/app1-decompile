package defpackage;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@SuppressLint({"NewApi"})
/* renamed from: gj0  reason: default package */
class gj0 extends hj0 {
    gj0(Class<?> cls) {
        super(cls, null, null, null, null);
    }

    @Override // defpackage.mj0, defpackage.hj0
    @SuppressLint({"NewApi"})
    @IgnoreJRERequirement
    public void f(SSLSocket sSLSocket, String str, List<hh0> list) {
        try {
            if (SSLSockets.isSupportedSocket(sSLSocket)) {
                SSLSockets.setUseSessionTickets(sSLSocket, true);
            }
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            sSLParameters.setApplicationProtocols((String[]) ((ArrayList) mj0.b(list)).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override // defpackage.mj0, defpackage.hj0
    @Nullable
    @IgnoreJRERequirement
    public String j(SSLSocket sSLSocket) {
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.isEmpty()) {
            return null;
        }
        return applicationProtocol;
    }
}
