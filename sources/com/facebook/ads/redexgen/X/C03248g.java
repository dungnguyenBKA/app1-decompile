package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.8g  reason: invalid class name and case insensitive filesystem */
public final class C03248g {
    public static AtomicInteger A00 = new AtomicInteger();
    public static byte[] A01;
    public static String[] A02;
    public static final Object A03 = new Object();
    public static final String A04 = C03248g.class.getName();
    public static final Map<String, Integer> A05 = Collections.synchronizedMap(new HashMap());
    public static final Set<String> A06 = Collections.synchronizedSet(new HashSet());

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A01 = new byte[]{7, 95, 83, 55, 1, 28, 3, 48, 28, 6, 29, 7, 22, 1, 73, 83, 63, 29, 18, 91, 8, 92, 24, 25, 16, 25, 8, 25, 92, 24, 25, 30, 9, 27, 92, 25, 10, 25, 18, 8, 15, 92, 26, 21, 16, 25, 82, 14, 44, 35, 106, 57, 109, 41, 40, 33, 40, 57, 40, 109, 43, 36, 33, 40, 108, 119, 118, 113, 102, 116, 108, 99, 97, 118, 117, 42, 25, 10, 1, 27, 44, 0, 26, 1, 27, 41, 45, 46, 26, 11, 6, 10, 1, 12, 10, 33, 10, 27, 24, 0, 29, 4, 31, 58, 61, 40, 42, 111, 43, 42, 45, 58, 40, 111, 42, 57, 42, 33, 59, 60, 111, 41, 38, 35, 42, 97, 69, 9, 38, 35, 42, 111, 60, 38, 53, 42, 117, 111, 111, 87, 85, 76, 76, 89, 88, 28, 89, 74, 89, 82, 72, 79, 18, 40, 16, 18, 11, 11, 18, 21, 28, 91, 24, 20, 9, 9, 14, 11, 15, 30, 31, 91, 31, 30, 25, 14, 28, 91, 30, 13, 30, 21, 15, 91, 23, 18, 21, 30, 85, 98, 68, 79, 95, 88, 81, 22, 66, 89, 22, 67, 70, 82, 87, 66, 83, 22, 67, 88, 68, 83, 85, 89, 68, 82, 83, 82, 22, 82, 83, 84, 67, 81, 122, 89, 81, 115, 64, 83, 88, 66, 24, 22, 87, 82, 82, 95, 88, 81, 22, 66, 89, 22, 121, 88, 81, 89, 95, 88, 81, 115, 64, 83, 88, 66, 24, 58, 17, 0, 8, 21, 6, 19, 19, 2, 10, 23, 19, 88, 93, 72, 93, Byte.MAX_VALUE, 126, 68, 119, 116, 124, 124, 114, 117, 124, 43, 42, 45, 58, 40, 35, 32, 40, 60, 91, 84, 83, 84, 78, 85, 88, 89, 29, 88, 75, 88, 83, 73, 29, 78, 85, 82, 72, 81, 89, 29, 83, 82, 73, 29, 95, 88, 29, 72, 77, 89, 92, 73, 88, 89, 29, 73, 82, 29, 114, 83, 90, 82, 84, 83, 90, 120, 75, 88, 83, 73, 19, 107, 102, 126, 104, 126, 126, 100, 98, 99, 82, 100, 105, 72, 94, 72, 72, 82, 84, 85, 100, 79, 82, 86, 94, 105, 113, 115, 106, 106, Byte.MAX_VALUE, 126, 95, 108, Byte.MAX_VALUE, 116, 110, 105, 58, 39, 58, 49, 55, 32, 54, 59, 50, 39, 75, 77, 90, 76, 65, 72, 93, 103, 91, 87, 92, 93, 119, 106, 110, 102, 85, 88, 81, 68};
    }

    public static void A07() {
        A02 = new String[]{"TEIgz1GSUxi0w6HxI", "WqDufwBE7AlvD41n6qdN4YbCXU2LtDad", "95AkSvnB6didgYS0", "q9Pm9O4XheyxpjJIaV85netzFUNpUTJ1", "laKi0sQOm1cRNFPmXQKezZzTFfBBOlTJ", "R9By8R7rHrFXxi8d0eZrOpOQKJFwFXXr", "DNKj97yZe49oXEmfRz7aINNiwqbkjDQZ", "HsAQREGxpVIGFVt11mTJ2r8ajNtMZb1h"};
    }

    static {
        A07();
        A06();
    }

    public static int A00(Context context) {
        return context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) - A06.size();
    }

    public static C03268i A01(String str, AnonymousClass8D r7, Map<String, String> map) {
        C03268i r5 = null;
        try {
            r5 = new C03268i(r7.A05().A01(), r7.A05().A02(), new AnonymousClass8S(str, map, true).A02());
            A0C(r5, r7);
            return r5;
        } catch (Exception unused) {
            return r5;
        }
    }

    public static JSONArray A03(AnonymousClass8D r1) {
        return A04(r1, -1);
    }

    public static JSONArray A04(AnonymousClass8D r10, int i) {
        IOException e;
        AbstractC03218d r0;
        JSONArray jSONArray = new JSONArray();
        synchronized (A03) {
            FileInputStream fileInputStream = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            try {
                if (new File(r10.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r10)).exists()) {
                    fileInputStream = r10.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r10));
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null || i == 0) {
                            break;
                        }
                        JSONObject jSONObject = new JSONObject(readLine);
                        if (!jSONObject.has(A02(260, 7, 27))) {
                            jSONObject.put(A02(260, 7, 27), String.valueOf(0));
                        }
                        String string = jSONObject.getString(A02(343, 2, 126));
                        if (!A06.contains(string)) {
                            int attempt = jSONObject.getInt(A02(260, 7, 27));
                            if (A05.containsKey(string)) {
                                jSONObject.put(A02(260, 7, 27), String.valueOf(A05.get(string)));
                            } else {
                                A0F(string, attempt);
                            }
                            jSONArray.put(jSONObject);
                            if (i > 0) {
                                i--;
                            }
                        }
                    }
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        e = e2;
                        r0 = r10.A04();
                        r0.A3T(e);
                        return jSONArray;
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (IOException | JSONException e3) {
                r10.A04().A3T(e3);
                if (0 != 0) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        e = e4;
                        r0 = r10.A04();
                        r0.A3T(e);
                        return jSONArray;
                    }
                }
                if (0 != 0) {
                    inputStreamReader.close();
                }
                if (0 != 0) {
                    fileInputStream.close();
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e5) {
                        r10.A04().A3T(e5);
                        throw th;
                    }
                }
                if (0 != 0) {
                    inputStreamReader.close();
                }
                if (0 != 0) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        return jSONArray;
    }

    public static JSONObject A05(C03268i r5) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A02(343, 2, 126), UUID.randomUUID().toString());
        jSONObject2.put(A02(HttpStatus.SC_NOT_ACCEPTABLE, 4, 93), r5.A03());
        jSONObject2.put(A02(HttpStatus.SC_PAYMENT_REQUIRED, 4, 127), LZ.A02(r5.A01()));
        jSONObject2.put(A02(355, 12, 71), LZ.A02(r5.A00()));
        jSONObject2.put(A02(345, 10, 113), r5.A02());
        if (r5.A04() != null) {
            jSONObject = new JSONObject(r5.A04());
        } else {
            jSONObject = new JSONObject();
        }
        jSONObject2.put(A02(267, 4, 64), jSONObject);
        jSONObject2.put(A02(260, 7, 27), String.valueOf(0));
        return jSONObject2;
    }

    public static void A08(Context context) {
        synchronized (A03) {
            File file = new File(context.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), context));
            if (file.exists()) {
                file.delete();
            }
            A0A(context, 0);
            A06.clear();
            A05.clear();
        }
    }

    public static void A09(Context context) {
        A0A(context, context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).getInt(A02(75, 10, 19), 0) + 1);
    }

    public static void A0A(Context context, int i) {
        int i2 = 0;
        SharedPreferences.Editor edit = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(65, 10, 79), context), 0).edit();
        if (i >= 0) {
            i2 = i;
        }
        edit.putInt(A02(75, 10, 19), i2).apply();
    }

    public static void A0B(AnonymousClass8D r2, String str) {
        File file = new File(r2.getFilesDir(), str);
        if (file.exists() && !file.delete()) {
            r2.A04().A3T(new RuntimeException(A02(47, 18, 49)));
        }
    }

    /* JADX INFO: Multiple debug info for r9v0 com.facebook.ads.redexgen.X.8D: [D('processSpecificName' java.lang.String), D('e' java.lang.Exception)] */
    public static void A0C(C03268i r8, AnonymousClass8D r9) {
        if (r8 != null && r9 != null) {
            synchronized (A03) {
                try {
                    String processSpecificName = ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r9);
                    File file = new File(r9.getFilesDir(), processSpecificName);
                    if (file.exists()) {
                        int A07 = J6.A07(r9);
                        long fileSize = file.length();
                        if (A07 > 0 && fileSize > ((long) A07)) {
                            boolean delete = file.delete();
                            A0A(r9, 0);
                            A06.clear();
                            A05.clear();
                            if (!delete) {
                                Log.e(A02(85, 17, 19), A02(16, 31, 0));
                            } else {
                                Map<String, String> A4T = r9.A02().A4T();
                                A4T.put(A02(383, 7, 62), A02(271, 10, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
                                A4T.put(A02(390, 12, 68), String.valueOf(2401));
                                A01(A02(102, 36, 51) + fileSize + A02(1, 15, 15) + A00.getAndIncrement(), r9, A4T);
                                return;
                            }
                        }
                    }
                    JSONObject A052 = A05(r8);
                    FileOutputStream openFileOutput = r9.openFileOutput(processSpecificName, 32768);
                    openFileOutput.write((A052.toString() + A02(0, 1, 113)).getBytes());
                    openFileOutput.close();
                    A09(r9);
                } catch (Exception e) {
                    r9.A04().A3T(e);
                }
            }
        }
    }

    public static void A0D(String str) {
        A05.remove(str);
        A06.add(str);
    }

    public static void A0E(String str) {
        Integer num = A05.get(str);
        if (num == null) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A04, A02(189, 66, 74));
            }
            num = 0;
        } else {
            A05.remove(str);
        }
        A05.put(str, Integer.valueOf(num.intValue() + 1));
    }

    public static void A0F(String str, int i) {
        if (!A06.contains(str)) {
            boolean containsKey = A05.containsKey(str);
            if (A02[7].charAt(23) != 'F') {
                A02[6] = "rEqe91lv7lznGuMpeMm8YlOivWfc8wjs";
                if (containsKey) {
                    A05.remove(str);
                }
                A05.put(str, Integer.valueOf(i));
                return;
            }
            throw new RuntimeException();
        }
        throw new RuntimeException(A02(290, 53, 65));
    }

    public static boolean A0G(AnonymousClass8D r3) {
        if (J6.A0P(r3)) {
            return A0I(r3);
        }
        boolean A0H = A0H(r3);
        String[] strArr = A02;
        if (strArr[0].length() != strArr[5].length()) {
            String[] strArr2 = A02;
            strArr2[3] = "3ABJ1YchwKShiC4YrWnTlA0erUDCQvCN";
            strArr2[1] = "wuaZskSkctYpKQ1vHIoiu3NDqUJM9HRQ";
            return A0H;
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Multiple debug info for r14v0 com.facebook.ads.redexgen.X.8D: [D('sb' java.lang.StringBuilder), D('ex' java.io.IOException), D('debugLog' org.json.JSONObject)] */
    /* JADX INFO: Multiple debug info for r5v0 java.io.FileOutputStream: [D('e' java.lang.Exception), D('skippedEvents' int)] */
    /* JADX INFO: Multiple debug info for r0v38 org.json.JSONObject: [D('debugLog' org.json.JSONObject), D('retryLimit' int)] */
    public static boolean A0H(AnonymousClass8D r14) {
        int retryLimit;
        JSONArray debugLogEvents = new JSONArray();
        synchronized (A03) {
            int i = 0;
            FileInputStream fileInputStream = null;
            InputStreamReader inputStreamReader = null;
            BufferedReader bufferedReader = null;
            FileOutputStream fileOutputStream = null;
            try {
                if (new File(r14.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r14)).exists()) {
                    fileInputStream = r14.openFileInput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r14));
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (A02[4].charAt(1) != 'a') {
                            throw new RuntimeException();
                        }
                        A02[2] = "N2MSSJLvxCxpns9Z";
                        if (readLine != null) {
                            JSONObject jSONObject = new JSONObject(readLine);
                            String string = jSONObject.getString(A02(343, 2, 126));
                            if (!A06.contains(string)) {
                                if (A05.containsKey(string)) {
                                    Integer attempt = A05.get(string);
                                    if (attempt != null) {
                                        retryLimit = attempt.intValue();
                                    } else {
                                        retryLimit = 0;
                                    }
                                    Integer valueOf = Integer.valueOf(retryLimit);
                                    int A022 = J6.A02(r14);
                                    if (A022 <= -1 || valueOf.intValue() <= A022 - 1) {
                                        jSONObject.put(A02(260, 7, 27), String.valueOf(valueOf));
                                        debugLogEvents.put(jSONObject);
                                    } else {
                                        A0D(string);
                                        i++;
                                    }
                                } else {
                                    debugLogEvents.put(jSONObject);
                                }
                            }
                        } else {
                            StringBuilder sb = new StringBuilder();
                            int length = debugLogEvents.length();
                            for (int i2 = 0; i2 < length; i2++) {
                                sb.append(debugLogEvents.getJSONObject(i2).toString());
                                sb.append('\n');
                            }
                            fileOutputStream = r14.openFileOutput(ProcessUtils.getProcessSpecificName(A02(281, 9, 51), r14), 0);
                            fileOutputStream.write(sb.toString().getBytes());
                        }
                    }
                }
                A0A(r14, A00(r14));
                if (i > 0) {
                    AbstractC03218d A042 = r14.A04();
                    String A023 = A02(271, 10, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
                    int i3 = C03228e.A2C;
                    String A024 = A02(138, 15, 64);
                    A042.A8V(A023, i3, new C03238f(A024, A02(367, 16, 102) + i));
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        r14.A04().A3T(e);
                    }
                }
                if (inputStreamReader != null) {
                    inputStreamReader.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                A06.clear();
                A05.clear();
            } catch (IOException | JSONException e2) {
                r14.A04().A3T(e2);
                if (0 != 0) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        r14.A04().A3T(e3);
                        A06.clear();
                        A05.clear();
                        return false;
                    }
                }
                if (0 != 0) {
                    inputStreamReader.close();
                }
                if (0 != 0) {
                    fileInputStream.close();
                }
                if (0 != 0) {
                    fileOutputStream.close();
                }
                A06.clear();
                A05.clear();
                return false;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        r14.A04().A3T(e4);
                        A06.clear();
                        A05.clear();
                        throw th;
                    }
                }
                if (0 != 0) {
                    inputStreamReader.close();
                }
                if (0 != 0) {
                    fileInputStream.close();
                }
                if (0 != 0) {
                    fileOutputStream.close();
                }
                A06.clear();
                A05.clear();
                throw th;
            }
        }
        return true;
    }

    /* JADX INFO: Multiple debug info for r0v45 boolean: [D('tempFileName' java.lang.String), D('inputStream' java.io.FileInputStream)] */
    /* JADX INFO: Multiple debug info for r4v4 int: [D('retryLimit' int), D('bufferedReader' java.io.BufferedReader)] */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x021f A[Catch:{ IOException -> 0x0237 }] */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x0224 A[Catch:{ IOException -> 0x0237 }] */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0229 A[Catch:{ IOException -> 0x0237 }] */
    /* JADX WARNING: Removed duplicated region for block: B:106:0x022e A[Catch:{ IOException -> 0x0237 }] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x0233 A[Catch:{ IOException -> 0x0237 }] */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x0251 A[SYNTHETIC, Splitter:B:117:0x0251] */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0256 A[Catch:{ IOException -> 0x026e }] */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x025b A[Catch:{ IOException -> 0x026e }] */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0260 A[Catch:{ IOException -> 0x026e }] */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x0265 A[Catch:{ IOException -> 0x026e }] */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x026a A[Catch:{ IOException -> 0x026e }] */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x005b A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x013b A[Catch:{ IOException -> 0x0185, all -> 0x0182 }] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x021a A[SYNTHETIC, Splitter:B:97:0x021a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean A0I(com.facebook.ads.redexgen.X.AnonymousClass8D r17) {
        /*
        // Method dump skipped, instructions count: 644
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C03248g.A0I(com.facebook.ads.redexgen.X.8D):boolean");
    }

    public static boolean A0J(String str) {
        return A06.contains(str) || A05.containsKey(str);
    }
}
