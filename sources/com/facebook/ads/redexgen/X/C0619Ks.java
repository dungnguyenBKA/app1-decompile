package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.AudienceNetworkActivity;
import com.vungle.warren.AdLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Ks  reason: case insensitive filesystem */
public final class C0619Ks implements Application.ActivityLifecycleCallbacks {
    public static Context A00;
    public static XK A01;
    public static byte[] A02;
    public static String[] A03;
    public static final Kv A04 = Kv.A00();
    public static final List<AbstractC0618Kr> A05 = Collections.synchronizedList(new ArrayList());
    public static final List<Runnable> A06 = new ArrayList();
    public static final Map<Activity, Integer> A07 = Collections.synchronizedMap(new WeakHashMap());

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A03;
            if (strArr[4].length() != strArr[7].length()) {
                String[] strArr2 = A03;
                strArr2[4] = "4AKSMNDzmxTAf23dNNcZP8";
                strArr2[7] = "cH1";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 12);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A02() {
        A02 = new byte[]{54, 58, 91, 121, 110, 115, 108, 115, 110, 99, 32, 58, 92, 80, 2, 21, 22, 74, 80, 115, 81, 70, 91, 68, 91, 70, 75, 18, 86, 91, 65, 81, 64, 87, 66, 83, 92, 81, 91, 87, 65, 28, 55, 6, 6, 53, 25, 24, 2, 19, 14, 2, 86, 31, 5, 86, 24, 25, 2, 86, 55, 6, 6, 26, 31, 21, 23, 2, 31, 25, 24, 88, 40, 4, 5, 8, 30, 25, 25, 14, 5, 31, 75, 6, 4, 15, 2, 13, 2, 8, 10, 31, 2, 4, 5, 75, 14, 19, 8, 14, 27, 31, 2, 4, 5, 75, 31, 3, 25, 4, 28, 5, 15, 30, 25, 2, 5, 12, 75, 25, 14, 12, 2, 24, 31, 14, 25, 42, 8, 31, 2, 29, 2, 31, 18, 40, 10, 7, 7, 9, 10, 8, 0, 24, 39, 2, 24, 31, 14, 5, 14, 25, 10, 41, 33, 101, 36, 38, 49, 44, 51, 44, 49, 60, 101, 54, 49, 36, 49, 32, Byte.MAX_VALUE, 101, 115, 66, 86, 80, 70, 71, 3, 66, 64, 87, 74, 85, 74, 87, 90, 3, 74, 80, 3, 77, 76, 87, 3, 81, 70, 80, 86, 78, 70, 71, 13, 74, 125, 107, 34, 56, 31, 29, 10, 33, 11, 10, 23, 18, 4, 21, 12};
    }

    public static void A03() {
        A03 = new String[]{"ouMPsLdF8VOzsynXqmRiTnVq9sCULlEK", "RDluICFSUJyOT3sC2lXOFgStPQc7gg7Y", "UmtUlnThENixw5hdz8sG1KFdsGmJDk97", "fTn296Ch3TXxkAVBDyGQxp9TrJ", "IUqXVRs0X8uhoFuXuWrDHC", "AqSoSQ8lTXl56yd6tw1FPxb5AEpw6", "5ylHfIThOZnGyEtaFkstDkkPbeVs18fd", "i0x"};
    }

    static {
        A03();
        A02();
    }

    @Nullable
    public static synchronized Activity A00() {
        synchronized (C0619Ks.class) {
            Activity lastResumedActivity = null;
            Iterator<Map.Entry<Activity, Integer>> it = A07.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Activity, Integer> next = it.next();
                if (next.getValue().intValue() == 3) {
                    lastResumedActivity = next.getKey();
                    break;
                }
            }
            Activity activity = null;
            boolean z = lastResumedActivity == null || Build.VERSION.SDK_INT < 28;
            if (z) {
                activity = C0615Ko.A00();
            }
            if (!(A01 == null || !z || lastResumedActivity == activity)) {
                String A012 = A01(19, 23, 62);
                C03238f r4 = new C03238f(A012, A01(HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 5, 20) + lastResumedActivity + A01(12, 7, 124) + activity);
                r4.A03(1);
                A01.A04().A8V(A01(208, 8, 114), C03228e.A01, r4);
            }
            if (lastResumedActivity != null) {
                return lastResumedActivity;
            }
            return activity;
        }
    }

    public static void A04(@NonNull XJ xj) {
        if (J4.A14(xj) && Build.VERSION.SDK_INT < 29) {
            RunnableC0617Kq kq = new RunnableC0617Kq(xj);
            synchronized (A06) {
                A06.add(kq);
            }
            ExecutorC0627Lc.A01.A01().postDelayed(kq, AdLoader.RETRY_DELAY);
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0022 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void A05(com.facebook.ads.redexgen.X.XK r8) {
        /*
        // Method dump skipped, instructions count: 127
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0619Ks.A05(com.facebook.ads.redexgen.X.XK):void");
    }

    public static void A06(AbstractC0618Kr kr) {
        A05.add(kr);
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
        A07.put(activity, 1);
        for (AbstractC0618Kr kr : A05) {
            kr.onActivityCreated(activity, bundle);
        }
    }

    public final void onActivityDestroyed(Activity activity) {
        A07.put(activity, 6);
    }

    public final void onActivityPaused(Activity activity) {
        ArrayList arrayList;
        Integer num = A07.get(activity);
        if (num == null || num.intValue() != 3) {
            C03238f r5 = new C03238f(A01(172, 31, 47), A01(152, 20, 73) + num + A01(0, 12, 22) + activity);
            r5.A03(0);
            A01.A04().A8V(A01(208, 8, 114), C03228e.A01, r5);
        }
        A07.put(activity, 4);
        if (activity.getClass() != AudienceNetworkActivity.class) {
            synchronized (A06) {
                arrayList = new ArrayList(A06);
                A06.clear();
            }
            Iterator it = arrayList.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                if (A03[0].charAt(23) != 's') {
                    String[] strArr = A03;
                    strArr[4] = "UBshke7O6W3uGW5erxsbv0";
                    strArr[7] = "uKB";
                    if (!hasNext) {
                        break;
                    }
                    ExecutorC0627Lc.A01.A01().removeCallbacks((Runnable) it.next());
                } else {
                    throw new RuntimeException();
                }
            }
        }
        A04.A01();
    }

    public final void onActivityResumed(Activity activity) {
        A07.put(activity, 3);
        A04.A02();
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
        A07.put(activity, 2);
    }

    public final void onActivityStopped(Activity activity) {
        A07.put(activity, 5);
    }
}
