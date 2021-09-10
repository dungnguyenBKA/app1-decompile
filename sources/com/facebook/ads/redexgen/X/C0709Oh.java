package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashMap;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Oh  reason: case insensitive filesystem */
public final class C0709Oh {
    public static byte[] A00;
    public static String[] A01;
    public static final String A02 = C0709Oh.class.getSimpleName();

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 105);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        byte[] bArr = {21, 51, 53, 58, 55, -14, 63, 59, 69, 69, -14, 56, 65, 68, -14, 56, 59, 62, 55, -14, 71, 68, 62, 12, -14, -61, -31, -29, -24, -27, -96, -19, -23, -13, -13, -96, -26, -17, -14, -96, -23, -19, -31, -25, -27, -96, -11, -14, -20, -70, -96, 34, 79, 79, 76, 79, -3, 76, 77, 66, 75, 70, 75, 68, -3, 64, 62, 64, 69, 66, 65, -3, 67, 70, 73, 66, -3, 67, 76, 79, -3, 82, 79, 73, 23, -3, -45, -49, -50, 2, -15, -10, -14, -5, -16, -14, -37, -14, 1, 4, -4, -1, -8, -17, -21, -60, -26, -29, -41, -39, -25, -25, -35, -30, -37, -108, -38, -35, -32, -39, -108, -23, -26, -32, -82, -108, -56, -22, -25, -37, -35, -21, -21, -31, -26, -33, -104, -31, -27, -39, -33, -35, -104, -19, -22, -28, -78, -104, -2, 32, 29, 17, 19, 33, 33, 23, 28, 21, -50, 36, 23, 18, 19, 29, -50, 35, 32, 26, -24, -50};
        String[] strArr = A01;
        if (strArr[7].charAt(12) != strArr[2].charAt(12)) {
            throw new RuntimeException();
        }
        A01[1] = "7l6kM9ADseoG9RLfCJpKjz7J";
        A00 = bArr;
    }

    public static void A05() {
        A01 = new String[]{"qzld4Qy39Azn7KYrj1sXbPZPr2qv6GgB", "1yyYiWnNu", "Zg1voNH89a01plQdKkVOTIE3hJJ00If9", "AO", "oO", "LhD7lTYtuMCYkgD1PnemOg5ERT23PX0", "YB3LukNHUN2DaV56yaS9yy46zwl6QYin", "pfYbPlfLNAe5pcAyURRpn9lPUi7k7Z7a"};
    }

    static {
        A05();
        A04();
    }

    @Nullable
    @RequiresApi(api = VungleException.SERVER_ERROR)
    public static WebResourceResponse A00(XJ xj, AnonymousClass7D r9, WebResourceRequest webResourceRequest, C0706Oe oe, AbstractC0708Og og, boolean z) {
        String uri = webResourceRequest.getUrl().toString();
        if (oe.A05) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(uri);
            if (oe.A01.contains(uri)) {
                String str = A03(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 21, 11) + uri;
                File A0K = r9.A0K(uri);
                if (A0K == null) {
                    String str2 = A03(0, 25, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS) + uri;
                } else if (!z || !uri.equals(oe.A00)) {
                    return A01(hashMap, guessContentTypeFromName, A0K);
                } else {
                    return A02(hashMap, guessContentTypeFromName, new OY(xj.A00(), new FileInputStream(A0K), new XV(og)));
                }
            }
            if (oe.A02.contains(uri)) {
                String str3 = A03(126, 22, 15) + uri;
                File A0L = r9.A0L(uri);
                if (A0L != null) {
                    return A01(hashMap, guessContentTypeFromName, A0L);
                }
                String str4 = A03(25, 26, 23) + uri;
            }
            if (oe.A03.contains(uri)) {
                String str5 = A03(148, 22, 69) + uri;
                return OV.A00(xj, webResourceRequest, webResourceRequest.getUrl(), guessContentTypeFromName, hashMap);
            }
        } catch (IOException e) {
            Log.e(A03(86, 17, 36), A03(51, 35, 116) + uri, e);
        }
        return null;
    }

    @RequiresApi(api = VungleException.SERVER_ERROR)
    public static WebResourceResponse A01(HashMap<String, String> hashMap, String str, File file) throws FileNotFoundException {
        return A02(hashMap, str, new FileInputStream(file));
    }

    @RequiresApi(api = VungleException.SERVER_ERROR)
    public static WebResourceResponse A02(HashMap<String, String> hashMap, String str, InputStream inputStream) {
        return new WebResourceResponse(str, null, HttpStatus.SC_OK, A03(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 2, 55), hashMap, inputStream);
    }
}
