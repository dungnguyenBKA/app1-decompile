package com.google.android.gms.internal.ads;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;

final class zzbcd extends SSLSocketFactory {
    private SSLSocketFactory zzenp = ((SSLSocketFactory) SSLSocketFactory.getDefault());
    private final /* synthetic */ zzbce zzenq;

    zzbcd(zzbce zzbce) {
        this.zzenq = zzbce;
    }

    private final Socket zza(Socket socket) {
        if (zzbce.zza(this.zzenq) > 0) {
            socket.setReceiveBufferSize(zzbce.zza(this.zzenq));
        }
        zzbce.zza(this.zzenq, socket);
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return zza(this.zzenp.createSocket(socket, str, i, z));
    }

    public final String[] getDefaultCipherSuites() {
        return this.zzenp.getDefaultCipherSuites();
    }

    public final String[] getSupportedCipherSuites() {
        return this.zzenp.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return zza(this.zzenp.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return zza(this.zzenp.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return zza(this.zzenp.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return zza(this.zzenp.createSocket(inetAddress, i, inetAddress2, i2));
    }
}
