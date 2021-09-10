package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public interface QZ {
    boolean AA9(QX qx);

    HttpURLConnection ACF(String str) throws IOException;

    InputStream ACG(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream ACH(HttpURLConnection httpURLConnection) throws IOException;

    void ACX(HttpURLConnection httpURLConnection, QV qv, String str) throws IOException;

    byte[] ACr(InputStream inputStream) throws IOException;

    void AEn(OutputStream outputStream, byte[] bArr) throws IOException;
}
