package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Gi  reason: case insensitive filesystem */
public final class C0511Gi implements QJ {
    public int A00;
    @Nullable
    public String A01;
    @Nullable
    public Map<String, List<String>> A02;
    @Nullable
    public byte[] A03;

    public C0511Gi(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.A00 = httpURLConnection.getResponseCode();
            this.A01 = httpURLConnection.getURL().toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.A02 = httpURLConnection.getHeaderFields();
        this.A03 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    @Nullable
    public final byte[] A5h() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    @Nullable
    public final String A5i() {
        byte[] bArr = this.A03;
        if (bArr != null) {
            return new String(bArr);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    @Nullable
    public final Map<String, List<String>> A6Z() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    public final int A7J() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.QJ
    @Nullable
    public final String getUrl() {
        return this.A01;
    }
}
