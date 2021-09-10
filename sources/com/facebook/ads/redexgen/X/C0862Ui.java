package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.pm.Signature;
import java.io.ByteArrayInputStream;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Ui  reason: case insensitive filesystem */
public class C0862Ui implements AbstractC02876l<Integer> {
    public static byte[] A02;
    public final String A00;
    public final String A01;

    static {
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 37);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-38, -80, -73, -78, -69, -77, 113, 12, -53};
    }

    public C0862Ui(Signature signature) throws CertificateException, NoSuchAlgorithmException {
        this.A00 = A01(signature, AnonymousClass71.A05);
        this.A01 = A01(signature, AnonymousClass71.A06);
    }

    public static String A01(Signature signature, AnonymousClass71 r4) throws NoSuchAlgorithmException, CertificateException {
        return AnonymousClass72.A08(((X509Certificate) CertificateFactory.getInstance(A00(0, 5, 93)).generateCertificate(new ByteArrayInputStream(signature.toByteArray()))).getEncoded(), r4);
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final JSONObject AEK(Integer num, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A00(5, 2, 27), this.A00);
        jSONObject2.put(A00(7, 2, 116), this.A01);
        jSONObject.put(Integer.toString(num.intValue()), jSONObject2);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    public final boolean A80(Object obj) {
        String str;
        C0862Ui ui = (C0862Ui) obj;
        String str2 = this.A00;
        if (str2 == null || !str2.equals(ui.A00) || (str = this.A01) == null || !str.equals(ui.A01)) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int ADz() {
        int i;
        String str = this.A01;
        int i2 = 0;
        if (str != null) {
            i = str.length();
        } else {
            i = 0;
        }
        String str2 = this.A00;
        if (str2 != null) {
            i2 = str2.length();
        }
        return i + i2;
    }
}
