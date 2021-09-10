package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

public final class OV {
    public static byte[] A00;
    public static String[] A01;

    static {
        A05();
        A04();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 91);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-119, -68, -8, -14, -50, -16, -16, -14, -3, 1, -70, -33, -18, -5, -12, -14, 0, -46, -2, -3, 3, -12, -3, 3, -68, -37, -12, -3, -10, 3, -9, -17, 27, 26, 32, 17, 26, 32, -39, -2, 13, 26, 19, 17, -71, -75, -49, -32, -15, -13, -24, -32, -21, -97, -62, -18, -19, -13, -28, -19, -13, 9, 30, 9, 17, 20, 9, 10, 20, 13, -7, 16, 11, -4, 10, -50, -27, -32, -47, -33, -116, 4, 16, 5, 6, -15, -2, -2, -5, -2, 21, 28, 19, 19, -7, -24, -11, -18, -20};
    }

    public static void A05() {
        A01 = new String[]{"CXRchRuqobcH0303RF", "0PvsG2xJSmQLgGTcWH9EYe7sEgRs7pRt", "Ep2muPcKb5OPprn584rkOKVS7ZwPor7u", "ESdTFl6hgzo0PrNou", "ifIc3126Iu24LMQAqXU9MKX3mrrg1qWL", "gYyPZy3RrUjZ7", "cRp6DEQTFSLuVCLvwOm8", "Iag0U1Rq9Q0ZydVPffrz8fjunI2ky4CH"};
    }

    /* JADX INFO: Multiple debug info for r15v0 com.facebook.ads.redexgen.X.XJ: [D('e' java.io.IOException), D('e' java.lang.NumberFormatException), D('parseResult' com.facebook.ads.redexgen.X.OU)] */
    @Nullable
    @RequiresApi(api = VungleException.SERVER_ERROR)
    public static WebResourceResponse A00(XJ xj, WebResourceRequest webResourceRequest, Uri uri, String str, HashMap<String, String> hashMap) throws IOException {
        int rangeEnd;
        String A02;
        String A022 = A02(85, 5, 49);
        try {
            OW ow = new OW(uri, Q2.A05(xj).A0E(xj));
            int available = ow.available();
            if (available <= 0) {
                A06(xj, 1, new Pair[]{new Pair(A02(61, 9, 77), String.valueOf(available))});
                return null;
            }
            String A03 = A03(webResourceRequest.getRequestHeaders());
            if (A03 != null) {
                try {
                    OU A012 = A01(A03);
                    boolean z = A012.A03;
                    if (A01[7].charAt(0) != '8') {
                        String[] strArr = A01;
                        strArr[5] = "V65aPOMRpqA07";
                        strArr[6] = "uUbGIz9l3eQBVw2CYc6n";
                        if (!z) {
                            Pair[] pairArr = new Pair[1];
                            if (A012.A02 != null) {
                                A02 = A012.A02;
                            } else {
                                A02 = A02(90, 4, 76);
                            }
                            pairArr[0] = new Pair(A02(94, 5, 44), A02);
                            A06(xj, 0, pairArr);
                            return null;
                        }
                        int i = A012.A01;
                        if (A012.A00 == -1) {
                            rangeEnd = available - 1;
                        } else {
                            rangeEnd = A012.A00;
                        }
                        A07(hashMap, available);
                        hashMap.put(A02(31, 13, 81), A02(75, 6, 17) + i + A02(1, 1, 52) + rangeEnd + A02(2, 1, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD) + available);
                        xj.A0A().A52();
                        return new WebResourceResponse(str, null, HttpStatus.SC_PARTIAL_CONTENT, A02(46, 15, 36), hashMap, ow);
                    }
                    throw new RuntimeException();
                } catch (NumberFormatException e) {
                    A06(xj, 3, new Pair[]{new Pair(A022, e.toString())});
                    return null;
                }
            } else {
                xj.A0A().A52();
                A07(hashMap, available);
                return new WebResourceResponse(str, null, HttpStatus.SC_OK, A02(44, 2, 15), hashMap, ow);
            }
        } catch (IOException e2) {
            A06(xj, 2, new Pair[]{new Pair(A022, e2.toString())});
            return null;
        }
    }

    @RequiresApi(api = VungleException.SERVER_ERROR)
    public static OU A01(String str) {
        int i = 0;
        if (str == null) {
            OU ou = new OU();
            ou.A03 = false;
            ou.A02 = null;
            return ou;
        }
        String[] split = str.split(A02(3, 1, 90));
        if (split.length >= 2) {
            if (A02(70, 5, 60).equals(split[0].toLowerCase(Locale.US).trim())) {
                if (split[1].trim().split(A02(0, 1, 2)).length != 1) {
                    OU ou2 = new OU();
                    ou2.A03 = false;
                    ou2.A02 = str;
                    return ou2;
                }
                String[] split2 = split[1].trim().split(A02(1, 1, 52));
                OU ou3 = new OU();
                ou3.A03 = true;
                ou3.A02 = str;
                if (!TextUtils.isEmpty(split2[0])) {
                    i = Integer.parseInt(split2[0]);
                }
                ou3.A01 = i;
                int i2 = -1;
                if (split2.length > 1) {
                    if (!TextUtils.isEmpty(split2[1])) {
                        i2 = Integer.parseInt(split2[1]);
                    }
                    ou3.A00 = i2;
                } else {
                    ou3.A00 = -1;
                }
                return ou3;
            }
        }
        OU ou4 = new OU();
        ou4.A03 = false;
        ou4.A02 = str;
        return ou4;
    }

    @Nullable
    public static String A03(Map<String, String> map) {
        for (String str : map.keySet()) {
            if (A02(94, 5, 44).equals(str.toLowerCase(Locale.US))) {
                return map.get(str);
            }
        }
        return null;
    }

    public static void A06(XJ xj, int i, Pair<String, String>[] pairArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(81, 4, 70), i);
            for (Pair<String, String> pair : pairArr) {
                jSONObject.put((String) pair.first, pair.second);
            }
        } catch (JSONException unused) {
        }
        xj.A0A().A51(jSONObject.toString());
    }

    public static void A07(HashMap<String, String> hashMap, int i) {
        hashMap.put(A02(4, 13, 50), A02(70, 5, 60));
        hashMap.put(A02(17, 14, 52), String.valueOf(i));
    }
}
