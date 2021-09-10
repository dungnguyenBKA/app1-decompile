package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.0m  reason: invalid class name and case insensitive filesystem */
public final class C01340m {
    public static byte[] A06;
    public static String[] A07;
    public long A00 = 0;
    @Nullable
    public Application A01;
    @Nullable
    public EnumC01260e A02 = null;
    @Nullable
    public C01330l A03;
    @Nullable
    public String A04 = null;
    public final JC A05;

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A06 = new byte[]{44, 47, 45, 37, 17, 58, 39, 35, 43, 8, 1, 5, 18, 1, 59, 16, 13, 9, 1, 10, 16, 17, 6, 10, 8, 0};
    }

    public static void A04() {
        A07 = new String[]{"jY95Z4e8SjES", "FWAQk0vwFzOT3H3ejUps9E7fwyQUHgqv", "R9UUrzGy7cjs1hDg6byYlCYbXfp8nW0w", "dKAdSxu4tDkfYe86wdSSQ2n2Du5", "FgFVZj7d091u9rUO", "kSt0PMlvWs2DEAK3GKEU98UDJan6EgWc", "nGXCIrfUxBd8PJB10o2gs7oQf", ADRequestList.ORDER_NULL};
    }

    public C01340m(JC jc, Activity activity, int i) {
        this.A05 = jc;
        this.A01 = activity.getApplication();
        this.A03 = new C01330l(activity, this);
    }

    public static C01340m A00(JC jc, Activity activity) {
        return A01(jc, activity, Build.VERSION.SDK_INT);
    }

    @Nullable
    @VisibleForTesting
    public static C01340m A01(JC jc, Activity activity, int i) {
        if (activity == null || i < 14) {
            return null;
        }
        return new C01340m(jc, activity, i);
    }

    private void A05(String str, long j, long j2, @Nullable EnumC01260e r11) {
        HashMap hashMap = new HashMap();
        hashMap.put(A02(9, 10, 8), Long.toString(j));
        hashMap.put(A02(0, 9, 34), Long.toString(j2));
        if (r11 != null) {
            hashMap.put(A02(19, 7, 9), r11.name());
        }
        this.A05.A8s(str, hashMap);
    }

    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final void A06() {
        C01330l r0;
        A05(this.A04, this.A00, System.currentTimeMillis(), this.A02);
        Application application = this.A01;
        if (application != null && (r0 = this.A03) != null) {
            application.unregisterActivityLifecycleCallbacks(r0);
            this.A03 = null;
            this.A01 = null;
        }
    }

    public final void A07(@Nullable EnumC01260e r1) {
        this.A02 = r1;
    }

    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final void A08(String str) {
        this.A04 = str;
        if (this.A03 == null || this.A01 == null) {
            EnumC01260e r9 = EnumC01260e.A03;
            if (A07[2].charAt(6) != '9') {
                String[] strArr = A07;
                strArr[5] = "8mgXQ8lZ1oxTn8xtWXCDJO1aYxf7Xnbe";
                strArr[1] = "RSHxB9AoZRnm9g8NXStW2wWwzMRvBUbh";
                A05(str, -1, -1, r9);
                return;
            }
            throw new RuntimeException();
        }
        this.A00 = System.currentTimeMillis();
        this.A01.registerActivityLifecycleCallbacks(this.A03);
    }
}
