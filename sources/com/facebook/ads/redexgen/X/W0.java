package com.facebook.ads.redexgen.X;

import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;

public class W0 implements AbstractC02806e {
    public final /* synthetic */ W2 A00;

    public W0(W2 w2) {
        this.A00 = w2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() throws Exception {
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        HashMap hashMap = new HashMap();
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface nextElement = networkInterfaces.nextElement();
            hashMap.put(nextElement.getDisplayName(), new W1(nextElement.getInetAddresses(), null));
        }
        return this.A00.A02(hashMap);
    }
}
