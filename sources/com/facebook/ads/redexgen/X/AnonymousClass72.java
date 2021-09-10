package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.os.Build;
import android.os.StrictMode;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.72  reason: invalid class name */
public final class AnonymousClass72 {
    @Nullable
    public static String A00 = null;
    public static byte[] A01;
    public static String[] A02;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 15);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A01 = new byte[]{117, 96, 98, 40, 109, 86, 91, 74, 15, 110, 93, 93, 78, 86, 15, 70, 92, 15, 65, 90, 67, 67, 87, 81, 4, 2, 47};
    }

    public static void A0B() {
        A02 = new String[]{"ezGqyoPIPKHN83WiKVVevBWkG3P1qDlE", "bHUhqeCZStL3hoLiFuX7aDXMTtUO4SRK", "6mH", "l35BhcLqTpkfPgrTHobWQpDf1vW4Njv0", "2S1uYpKXPbyDBdggYjHCHIIoGx5rp2pm", "U07LIPTAxvw3Yt20DQWphksDXSc1ydWN", "nWa8vBGdC70OTVh7jsXfRaHUkJPGOS0P", "NNhGFPrdPRblbbvf05CBiQrYmSBt33Cu"};
    }

    static {
        A0B();
        A0A();
    }

    public static float A00(float f) {
        return new BigDecimal((double) f).setScale(3, RoundingMode.HALF_UP).floatValue();
    }

    public static long A01() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String[] strArr = A02;
        if (strArr[5].charAt(11) != strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[5] = "oi1AWXaprIq3DsGdE2VtVNFOHzfK44CR";
        strArr2[1] = "VDiC0kXnWwp3KFPy20II1epcnqCnwjCl";
        return elapsedRealtime;
    }

    public static long A02(long j) {
        return j - (j % PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
    }

    @SuppressLint({"CatchGeneralException"})
    public static EnumC02816f A03(@Nullable String str) {
        String A06 = A06(24, 2, 121);
        if (str == null || str.isEmpty()) {
            return EnumC02816f.A04;
        }
        try {
            JSONObject bdObject = new JSONObject(str).getJSONObject(A06(22, 2, 58));
            if (bdObject == null) {
                return EnumC02816f.A04;
            }
            if (bdObject.has(A06)) {
                return EnumC02816f.A00(bdObject.getInt(A06));
            }
            return EnumC02816f.A04;
        } catch (Throwable unused) {
        }
    }

    public static X4 A04(String str, Throwable th) {
        if (th instanceof NullPointerException) {
            return new X4(A01(), new C02936r(str), new C02926q(EnumC02916p.A07));
        }
        boolean z = th instanceof SecurityException;
        if (A02[3].charAt(27) != 'P') {
            A02[7] = "UmchuACFheILBJlaih7XmvNlXQtm6iWO";
            if (z) {
                return new X4(A01(), new C02936r(str), new C02926q(EnumC02916p.A06));
            }
            if (!(th instanceof UnsupportedOperationException)) {
                boolean z2 = th instanceof NoSuchAlgorithmException;
                if (A02[0].charAt(9) != 'T') {
                    A02[3] = "x60dR1TMPSfTuY8uuU5k4CgjQFfD2Ly1";
                    if (!z2) {
                        return new X4(A01(), new C02936r(str), new C02926q(th));
                    }
                }
            }
            return new X4(A01(), new C02936r(str), new C02926q(EnumC02916p.A05));
        }
        throw new RuntimeException();
    }

    @SuppressLint({"BadMethodUse-java.util.UUID.randomUUID"})
    public static String A05() {
        if (A00 == null) {
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                A00 = UUID.randomUUID().toString();
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        return A00;
    }

    @Nullable
    @SuppressLint({"EmptyCatchBlock"})
    public static String A07(String str) {
        String A06 = A06(26, 1, 84);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has(A06)) {
                return Integer.toString(jSONObject.getInt(A06));
            }
            return null;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Multiple debug info for r0v12 java.lang.String: [D('i' int), D('hex' java.lang.String)] */
    public static String A08(byte[] bArr, AnonymousClass71 r8) throws NoSuchAlgorithmException {
        if (bArr != null) {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] digest = MessageDigest.getInstance(r8.A03()).digest(bArr);
            for (int i = 0; i < digest.length; i++) {
                stringBuffer.append(String.format(A06(0, 4, 95), Integer.valueOf(digest[i] & 255)));
            }
            return stringBuffer.toString();
        }
        throw new NullPointerException(A06(4, 18, 32));
    }

    public static Map<String, String> A09(C02715v r5) {
        HashMap hashMap = new HashMap();
        hashMap.put(AnonymousClass63.A04.A03(), A05());
        hashMap.put(AnonymousClass63.A0A.A03(), Long.toString(TimeUnit.SECONDS.toMillis((long) r5.A0T())));
        hashMap.put(AnonymousClass63.A06.A03(), Long.toString(C02826g.A00()));
        hashMap.put(AnonymousClass63.A07.A03(), Integer.toString(r5.A0S()));
        hashMap.put(AnonymousClass63.A09.A03(), Integer.toString(r5.A0V()));
        hashMap.put(AnonymousClass63.A05.A03(), Integer.toString(r5.A0R()));
        hashMap.put(AnonymousClass63.A08.A03(), A07(r5.A0h()));
        return hashMap;
    }

    public static void A0C(C02715v r8, String str, @Nullable String str2) {
        AnonymousClass64 A0X = r8.A0X();
        if (A0X != null) {
            A0X.A8f(AnonymousClass61.A05.A03(), str, A09(r8), str2, null, null, null);
        }
    }

    public static boolean A0D() {
        int i = Build.VERSION.SDK_INT;
        if (A02[6].charAt(4) != 'v') {
            throw new RuntimeException();
        }
        A02[4] = "tyMFX1CpOJYUV0MeMpbopAmdAMzcot7c";
        return i >= 29;
    }

    public static boolean A0E() {
        ActivityManager.RunningAppProcessInfo appProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(appProcessInfo);
        return appProcessInfo.importance != 100;
    }

    public static boolean A0F(EnumC02816f r1) {
        int reputationTierValue = r1.A03();
        if (reputationTierValue == EnumC02816f.A05.A03() || reputationTierValue == EnumC02816f.A07.A03() || reputationTierValue == EnumC02816f.A06.A03()) {
            return true;
        }
        return false;
    }

    public static boolean A0G(@Nullable String str, @Nullable String str2) {
        if (str == null && str2 == null) {
            if (A02[2].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[5] = "CRUhUvJCPqF3o50vaOZhXgSSPBMouYyY";
            strArr[1] = "Hcx4PZUYJ7P3vk50CiSuOhi8dLkBnJKe";
            return true;
        } else if (str == null || str2 == null) {
            return false;
        } else {
            return str.equals(str2);
        }
    }
}
