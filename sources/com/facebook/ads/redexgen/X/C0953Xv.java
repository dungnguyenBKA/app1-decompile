package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.settings.AdSharedPreferences;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.DeflaterOutputStream;
import org.apache.http.HttpStatus;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Xv  reason: case insensitive filesystem */
public final class C0953Xv implements AnonymousClass97 {
    @Nullable
    public static String A03 = null;
    public static byte[] A04;
    public static String[] A05;
    public static final L7 A06 = L8.A00();
    public static final AtomicBoolean A07 = new AtomicBoolean();
    public static final AtomicInteger A08 = new AtomicInteger(0);
    public final C02655p A00;
    public final AnonymousClass8D A01;
    public final C03328o A02;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A05[6].length() != 9) {
                String[] strArr = A05;
                strArr[1] = "AJGqtkftO03LFXDJsHlFXR4ujVWNfKsn";
                strArr[7] = "0weTThgY8dzMPuXGgH30KJvXs1017h9U";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 73);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A06() {
        A04 = new byte[]{40, 13, 21, 23, 23, 17, 7, 7, 29, 22, 29, 24, 29, 0, 13, 11, 17, 26, 21, 22, 24, 17, 16, 41, 46, 56, 45, 42, 60, 87, 98, 109, 98, 111, 108, 100, 85, 68, 68, 75, 89, 93, 90, 75, 71, 80, 95, 75, 66, 81, 70, 71, 93, 91, 90, 78, 92, 71, 78, 92, 44, 62, 36, 41, 86, 67, 67, 69, 94, 85, 66, 67, 94, 88, 89, 72, 94, 83, 106, 97, 108, 108, 109, 122, 119, 124, 103, 99, 109, 102, 119, 109, 112, 124, 122, 105, 123, 62, 41, 50, 56, 48, 57, 79, 77, 92, 92, 73, 72, 83, 69, 72, 95, 21, 23, 4, 4, 31, 19, 4, 67, 70, 83, 70, 88, 87, 85, 72, 68, 66, 84, 84, 78, 73, 64, 88, 72, 87, 83, 78, 72, 73, 84, 92, 89, 76, 89, 71, 72, 74, 87, 91, 93, 75, 75, 81, 86, 95, 71, 87, 72, 76, 81, 87, 86, 75, 71, 91, 87, 77, 86, 76, 74, 65, 111, 106, Byte.MAX_VALUE, 106, 116, 123, 121, 100, 104, 110, 120, 120, 98, 101, 108, 116, 100, 123, Byte.MAX_VALUE, 98, 100, 101, 120, 116, 120, Byte.MAX_VALUE, 106, Byte.MAX_VALUE, 110, 28, 29, 22, 11, 17, 12, 1, 13, 30, 5, 5, 14, 7, 20, 8, 4, 25, 14, 20, 14, 29, 14, 5, 31, 24, 48, 35, 56, 56, 51, 58, 41, 58, 57, 49, 49, 51, 50, 30, 57, 49, 52, 61, 60, 120, 44, 55, 120, 58, 45, 49, 52, 60, 120, 45, 43, 61, 42, 120, 44, 55, 51, 61, 54, 95, 86, 68, 72, 82, 79, 88, 71, 91, 86, 78, 82, 69, 52, 57, 59, 60, 48, 61, 38, 58, 56, 58, 49, 60, 38, 45, 42, 38, 52, 42, 37, 40, 51, 63, 35, 57, 62, 47, 41, 47, 40, 53, 50, 39, 42, 42, 35, 52, 75, 72, 68, 70, 75, 66, 109, 97, 107, 101, 5, 13, 12, 1, 9, 28, 1, 7, 6, 23, 27, 13, 26, 30, 1, 11, 13, 72, 67, 82, 81, 73, 84, 77, 89, 82, 95, 86, 67, 93, 64, 64, 91, 74, 75, 14, 30, 15, 24, 24, 19, 2, 21, 24, 20, 26, 21, 9, 97, 113, 96, 119, 119, 124, 109, 101, 123, 118, 102, 122, 97, 118, 121, 109, 113, 115, 98, 115, 112, 123, 126, 123, 102, 107, 63, 41, 63, 63, 37, 35, 34, 51, 56, 37, 33, 41, 121, 98, 101, 120, 117, 51, 53, 35, 52, 57, 39, 33, 35, 40, 50, 25, 14, 3, 31, 14, 29, 14, 2, 28, 116, 118, 125, 118, 97, 122, 112, 25, 2, 27, 27};
    }

    public static void A07() {
        A05 = new String[]{"rjWu3o3XUIKJimpXtRLH", "N3hUjd9gC1zTrolrzHWDwio6K0KaeF7v", "V8BOZxTrBek9nlJry76rEN1tEiA1lgnf", "2kaCuDD1e44XjFqxj97oS3bW7Y4jUXps", "VcJxC1jbHxk7XwGyeCWvHwY9E4qRcx1x", "dO6RHNbAuKw0kDbwpnJR", "8jPNINbp0cYAxxIn", "ugIdyp1aSJPFHYCiUHctz2XPYC5YD6Ud"};
    }

    static {
        A07();
        A06();
    }

    public C0953Xv(AnonymousClass8D r2, boolean z, C02655p r4) {
        this.A01 = r2;
        this.A02 = new C03328o(r2);
        this.A00 = r4;
        A08(r2, z);
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static String A02(AnonymousClass8D r4, String str) {
        try {
            return LD.A02(r4.getPackageManager().getApplicationInfo(str, 0).sourceDir);
        } catch (Exception e) {
            if (!A07.compareAndSet(false, true)) {
                return null;
            }
            r4.A04().A8V(A01(436, 7, 90), C03228e.A18, new C03238f(e));
            return null;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A08(AnonymousClass8D r7, boolean z) {
        if (A08.compareAndSet(0, 1)) {
            try {
                SharedPreferences sharedPreferences = AdSharedPreferences.getSharedPreferences(r7);
                C03328o r5 = new C03328o(r7);
                String str = A01(26, 4, 37) + r5.A06();
                A03 = sharedPreferences.getString(str, null);
                FutureTask futureTask = new FutureTask(new AnonymousClass99(r7, sharedPreferences, str));
                Executors.newSingleThreadExecutor().submit(futureTask);
                if (z) {
                    futureTask.get();
                }
            } catch (Exception unused) {
                AtomicInteger atomicInteger = A08;
                if (A05[2].charAt(4) != '1') {
                    String[] strArr = A05;
                    strArr[0] = "BG3uZRuA0Chr9fB7D4fD";
                    strArr[5] = "ED3rHXlImwDD4lq5TiwH";
                    atomicInteger.set(0);
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:39:0x034f, code lost:
        if (r3 != null) goto L_0x01b7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x01b5, code lost:
        if (r3 != null) goto L_0x01b7;
     */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.String, java.lang.String> A6N() {
        /*
        // Method dump skipped, instructions count: 899
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0953Xv.A6N():java.util.Map");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final String A7H() {
        return A7I(AnonymousClass96.A00());
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public final String A7I(AnonymousClass95 r9) {
        A08(this.A01, true);
        ByteArrayOutputStream byteArrayOutputStream = null;
        Base64OutputStream base64OutputStream = null;
        DeflaterOutputStream deflaterOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream2 = new Base64OutputStream(byteArrayOutputStream2, 0);
            DeflaterOutputStream deflaterOutputStream2 = new DeflaterOutputStream(base64OutputStream2);
            Map<String, String> A6N = A6N();
            if (TextUtils.isEmpty(C02525b.A00().A03())) {
                C02525b.A08(this.A01);
            }
            A6N.put(A01(280, 4, 52), C02525b.A00().A03());
            A6N.put(A01(HttpStatus.SC_EXPECTATION_FAILED, 10, 47), AnonymousClass9C.A06(this.A02, this.A01, false));
            if (J4.A1C(this.A01)) {
                A6N.put(A01(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 10, 69), C01420u.A00());
            }
            Iterator<Map.Entry<String, String>> it = A6N.entrySet().iterator();
            while (it.hasNext()) {
                if (!r9.A2O(it.next().getKey())) {
                    it.remove();
                }
            }
            deflaterOutputStream2.write(new JSONObject(A6N).toString().getBytes());
            deflaterOutputStream2.close();
            String replaceAll = byteArrayOutputStream2.toString().replaceAll(A01(0, 1, FacebookMediationAdapter.ERROR_NULL_CONTEXT), A01(0, 0, 37));
            try {
                deflaterOutputStream2.close();
                base64OutputStream2.close();
                byteArrayOutputStream2.close();
            } catch (IOException unused) {
            }
            return replaceAll;
        } catch (IOException e) {
            throw new RuntimeException(A01(241, 26, 17), e);
        } catch (Throwable th) {
            String[] strArr = A05;
            if (strArr[1].charAt(17) != strArr[7].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[0] = "tBEywTa582eygB6ZDfuZ";
            strArr2[5] = "t5OASyUSxnrvHDDzBp0B";
            if (0 != 0) {
                try {
                    deflaterOutputStream.close();
                } catch (IOException unused2) {
                    throw th;
                }
            }
            if (0 != 0) {
                base64OutputStream.close();
            }
            if (0 != 0) {
                byteArrayOutputStream.close();
            }
            throw th;
        }
    }
}
