package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

public final class LE {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 3);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{58, 43, 43, 55, 50, 56, 58, 47, 50, 52, 53, 116, 43, 63, 61, 119, 123, 112, 113, 45, 44, 58, 42, 59, 32, 57, 61, 32, 38, 39, 9, 14, 16};
    }

    public static String A01(int i, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(15, 4, 23), i);
            jSONObject.put(A00(19, 11, 74), str);
            jSONObject.put(A00(30, 3, 127), str2).toString();
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    @Nullable
    public static String A02(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String A002 = A00(0, 0, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
        if (isEmpty) {
            return A002;
        }
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return A002;
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    public static boolean A04(String str) {
        return A00(0, 15, 88).equalsIgnoreCase(A02(str));
    }
}
