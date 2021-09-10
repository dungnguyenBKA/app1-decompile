package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Jw  reason: case insensitive filesystem */
public final class C0598Jw {
    public static byte[] A04;
    public static String[] A05;
    public final EnumC0597Jv A00;
    @Nullable
    public final Long A01;
    @Nullable
    public final String A02;
    @Nullable
    public final String A03;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{-13, 26, 21, -47, -42, 21, -47, 23, 32, 35, -47, 4, -11, -4, -47, 39, 22, 35, 36, 26, 32, 31, -47, -42, 36, -47, 19, 22, 26, 31, 24, -47, 38, 36, 22, 21, -47, 32, 31, -47, 4, -11, -4, -47, 39, 22, 35, 36, 26, 32, 31, -47, -42, 36, -57, -18, -23, -91, -86, -23, -91, -21, -12, -9, -91, -11, -15, -26, -24, -22, -14, -22, -13, -7, -91, -86, -8, -91, -25, -22, -18, -13, -20, -91, -6, -8, -22, -23, -91, -12, -13, -91, -11, -15, -26, -24, -22, -14, -22, -13, -7, -91, -86, -8, -14, 25, 20, -48, -43, 20, -48, 22, 31, 34, -48, 36, 21, 29, 32, 28, 17, 36, 21, -48, -43, 35, -48, 18, 21, 25, 30, 23, -48, 37, 35, 21, 20, -48, 31, 30, -48, 36, 21, 29, 32, 28, 17, 36, 21, -48, -43, 35, -57, -20, -12, -33, -22, -25, -30, -98, -64, -25, -30, -50, -33, -9, -22, -19, -33, -30, 15, 32, 40, 43, 39, 28, 47, 32, -37, -32, 46, -37, 36, 46, -37, 41, 42, 47, -37, 49, 28, 39, 36, 31, -37, 29, 28, 41, 41, 32, 45, -37, 47, 32, 40, 43, 39, 28, 47, 32, -56, -31, -26, -24, -29, -29, -30, -27, -25, -40, -41, -109, -75, -36, -41, -61, -44, -20, -33, -30, -44, -41, -109, -25, -20, -29, -40, -109, -23, -8, -15, -14, -7, -12, -17, -7, -12, 6, 13, 8, 3, 24, 13, 17, 9, 3, 24, 19, 15, 9, 18, -55, -54, -37, -50, -56, -54, -60, -50, -55, 58, 45, 59, 55, 52, 62, 45, 44, 39, 56, 52, 41, 43, 45, 53, 45, 54, 60, 39, 49, 44, 58, 43, 50, 38, 61, 44, 57, 58, 48, 54, 53, 44, 29, 37, 40, 36, 25, 44, 29, 33, 38, 29, 18};
    }

    public static void A03() {
        A05 = new String[]{"YPLhW1YthHwH", "C5pYKBzTNFhaTyoOn8CLtRZjld8VucJT", "nwsPGMG6WiL6DBh0FHrHZ0R5IXcuLobJ", "gK87iCVuQY9qRaZHEz4I1", "yLpaI56t1HZbTv34O8DVm8KvrNdbdGTz", "u7C3r8DCX9eoMUGzC5EwjUGrObNKQaYD", "hw4dG9XbulEGH2HnH1CXedNx1Lx9pLFE", "teiwDyYVI0VIQpP4hHHpy5xIPHWhYAA5"};
    }

    public C0598Jw() {
        this.A00 = EnumC0597Jv.A03;
        this.A01 = null;
        this.A03 = null;
        this.A02 = null;
    }

    public C0598Jw(XJ xj, @Nullable String str, String str2, EnumC0593Jr jr) throws C0589Jm {
        String A012 = A01(270, 21, 101);
        String A013 = A01(291, 11, 100);
        String A014 = A01(310, 4, 74);
        String A015 = A01(HttpStatus.SC_MOVED_TEMPORARILY, 8, 85);
        if (TextUtils.isEmpty(str)) {
            this.A00 = EnumC0597Jv.A03;
            this.A01 = null;
            this.A03 = null;
            this.A02 = null;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (C0596Ju.A00[EnumC0597Jv.valueOf(jSONObject.getString(A014).toUpperCase()).ordinal()] == 1) {
                this.A00 = EnumC0597Jv.A02;
                this.A01 = Long.valueOf(jSONObject.getString(A01(241, 6, 45)));
                this.A02 = jSONObject.optString(A01(247, 14, 65), null);
                this.A03 = jSONObject.getString(A01(261, 9, 2));
                if (!jSONObject.getString(A013).equals(BuildConfigApi.getVersionName(xj))) {
                    throw new C0589Jm(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(0, 54, 78), this.A01, jSONObject.getString(A013), BuildConfigApi.getVersionName(xj)));
                } else if (jSONObject.getString(A012).equals(str2)) {
                    HashSet hashSet = new HashSet(Arrays.asList(Integer.valueOf(EnumC0593Jr.A0C.A03()), Integer.valueOf(EnumC0593Jr.A0F.A03()), Integer.valueOf(EnumC0593Jr.A0D.A03()), Integer.valueOf(EnumC0593Jr.A0E.A03())));
                    if (jSONObject.getInt(A015) == jr.A03()) {
                        return;
                    }
                    if (!hashSet.contains(Integer.valueOf(jSONObject.getInt(A015))) || !hashSet.contains(Integer.valueOf(jr.A03()))) {
                        throw new C0589Jm(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 48, 77), this.A01, Integer.valueOf(jSONObject.getInt(A015)), jr));
                    }
                } else {
                    throw new C0589Jm(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(54, 50, 34), this.A01, jSONObject.getString(A012), str2));
                }
            } else {
                AdErrorType adErrorType = AdErrorType.BID_PAYLOAD_ERROR;
                throw new C0589Jm(adErrorType, A01(210, 28, 16) + jSONObject.getString(A014));
            }
        } catch (JSONException e) {
            xj.A04().A8V(A01(238, 3, 37), C03228e.A0E, new C03238f(e));
            throw new C0589Jm(AdErrorType.BID_PAYLOAD_ERROR, A01(152, 18, 27), e);
        }
    }

    @Nullable
    public static EnumC0593Jr A00(String str) throws C0589Jm {
        try {
            return EnumC0593Jr.A00(new JSONObject(str).getInt(A01(HttpStatus.SC_MOVED_TEMPORARILY, 8, 85)));
        } catch (JSONException e) {
            throw new C0589Jm(AdErrorType.BID_PAYLOAD_ERROR, A01(152, 18, 27), e);
        }
    }

    public static void A04(EnumC0593Jr jr) throws C0589Jm {
        if (!EnumC0593Jr.A0B.equals(jr) && !EnumC0593Jr.A09.equals(jr) && !EnumC0593Jr.A0A.equals(jr) && !EnumC0593Jr.A08.equals(jr)) {
            throw new C0589Jm(AdErrorType.BID_IMPRESSION_MISMATCH, String.format(Locale.US, A01(170, 40, 88), Integer.valueOf(jr.A03())));
        }
    }

    @Nullable
    public final String A05() {
        Long l = this.A01;
        if (l == null) {
            return null;
        }
        String l2 = l.toString();
        if (A05[5].charAt(0) != 'P') {
            A05[2] = "nWWGWN2JOSzWcz2EKeaa2WFuGi6FMoRa";
            return l2;
        }
        throw new RuntimeException();
    }

    @Nullable
    public final String A06() {
        return this.A02;
    }

    public final boolean A07() {
        return this.A00 != EnumC0597Jv.A03;
    }
}
