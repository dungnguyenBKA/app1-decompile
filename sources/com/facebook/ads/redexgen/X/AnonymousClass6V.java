package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.6V  reason: invalid class name */
public class AnonymousClass6V {
    public static byte[] A03;
    public static String[] A04;
    public final Context A00;
    public final Intent A01 = this.A00.registerReceiver(null, new IntentFilter(A00(0, 37, 37)));
    public final C02715v A02;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 8);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-114, -101, -111, -97, -100, -106, -111, 91, -106, -101, -95, -110, -101, -95, 91, -114, -112, -95, -106, -100, -101, 91, 111, 110, -127, -127, 114, Byte.MAX_VALUE, -122, -116, 112, 117, 110, 123, 116, 114, 113};
    }

    public static void A02() {
        A04 = new String[]{"o84FpHzEZxPfIbBPVc3PyJBEasuCfO6c", "JrI1dU8TTdtObirIwzr9PDFTf", "Oz2bxznKOZIoYiu00r0tMjRqahT5L8eX", "WyAMbI9dOM56rsavBzGbIzP4LEeOBa2a", "QAd1wzNDoH5I97BQWX3GR9O2v", "PJ66RTAVo3tttPzwttyvOY4w2twOeZmh", "FZtFZJQ3MyLobIqHR00oY", "wJgkVVpmtRvVSLM2dL7kjEoPPerdmE0p"};
    }

    public AnonymousClass6V(Context context, C02715v r6) {
        this.A00 = context;
        this.A02 = r6;
    }

    @Nullable
    public final C02936r A03() {
        String packageName;
        if (this.A02.A0a() == EnumC02846i.A0G) {
            return null;
        }
        Context context = this.A00;
        String[] strArr = A04;
        if (strArr[6].length() != strArr[1].length()) {
            A04[2] = "BdLEpYuR7vP7Yavjfaa4glVMZlrsrS6q";
            if (context == null) {
                packageName = A00(0, 0, 34);
            } else {
                packageName = context.getPackageName();
            }
            return new C02936r(packageName);
        }
        throw new RuntimeException();
    }

    public final AbstractC02956t A04(float f) {
        return new X5(SystemClock.elapsedRealtime(), A03(), f);
    }

    public final AbstractC02956t A05(int i) {
        return new X7(SystemClock.elapsedRealtime(), A03(), i);
    }

    public final AbstractC02956t A06(int i, HashMap<String, String> hashMap) {
        if (this.A01 == null) {
            return A08(EnumC02916p.A07);
        }
        HashMap<String, Integer> hashMap2 = new HashMap<>();
        for (String str : hashMap.keySet()) {
            String[] strArr = A04;
            if (strArr[7].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A04[2] = "InQCvX9bMvCeYEwlTxFUxsBs8sRyWh3b";
            hashMap2.put(str, Integer.valueOf(this.A01.getIntExtra(hashMap.get(str), i)));
        }
        return A0D(hashMap2);
    }

    public final AbstractC02956t A07(long j) {
        return new X9(SystemClock.elapsedRealtime(), A03(), j);
    }

    public final AbstractC02956t A08(EnumC02916p r6) {
        return new X4(SystemClock.elapsedRealtime(), A03(), new C02926q(r6));
    }

    public final AbstractC02956t A09(String str) {
        return new XC(SystemClock.elapsedRealtime(), A03(), str);
    }

    public final AbstractC02956t A0A(String str) {
        Intent intent = this.A01;
        if (intent != null) {
            return A09(intent.getStringExtra(str));
        }
        return A08(EnumC02916p.A07);
    }

    public final AbstractC02956t A0B(String str, int i) {
        Intent intent = this.A01;
        if (intent == null) {
            return A08(EnumC02916p.A07);
        }
        int intExtra = intent.getIntExtra(str, i);
        if (A04[4].length() != 16) {
            A04[2] = "oU3Fbet9HTJlYuGSJV9pu56iNwFexhrg";
            return A05(intExtra);
        }
        throw new RuntimeException();
    }

    public final AbstractC02956t A0C(String str, boolean z) {
        Intent intent = this.A01;
        if (intent != null) {
            return A0G(intent.getBooleanExtra(str, z));
        }
        return A08(EnumC02916p.A07);
    }

    public final AbstractC02956t A0D(HashMap<String, Integer> hashMap) {
        return new X6(SystemClock.elapsedRealtime(), A03(), hashMap);
    }

    public final AbstractC02956t A0E(List<AbstractC02866k> list) {
        return new X8(SystemClock.elapsedRealtime(), A03(), list, EnumC02946s.A03);
    }

    public final AbstractC02956t A0F(List<String> resultList) {
        return new X8(SystemClock.elapsedRealtime(), A03(), resultList, EnumC02946s.A0C);
    }

    public final AbstractC02956t A0G(boolean z) {
        return new X2(SystemClock.elapsedRealtime(), A03(), z);
    }
}
