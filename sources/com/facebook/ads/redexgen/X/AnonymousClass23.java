package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.AdSDKNotificationListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: com.facebook.ads.redexgen.X.23  reason: invalid class name */
public class AnonymousClass23 implements Runnable {
    public static byte[] A02;
    public static String[] A03;
    public final /* synthetic */ String A00;
    public final /* synthetic */ ArrayList A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] - i3) - 19);
            String[] strArr = A03;
            if (strArr[1].length() != strArr[0].length()) {
                String[] strArr2 = A03;
                strArr2[2] = "PBcjmF449O2ALurV1e1gxRld5UP64De9";
                strArr2[7] = "bFbD54V4FV2Kx5Uvd678uCerr9Gu9fe1";
                copyOfRange[i4] = b;
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{Byte.MIN_VALUE, -119, 126, -115, -108, -117, -113, Byte.MIN_VALUE, Byte.MAX_VALUE, 122, 126, -117, -120, -113, -109, -106, -104, -117, -103, -103, -113, -107, -108};
    }

    public static void A02() {
        A03 = new String[]{"", "R2h4cPa", "8K6r33o48istIkLwCuAfGDqRYcEBFJta", "JrgImPTdAC8EkycOMZgSjkdVNJJcyT0z", "UmabyHZVDvNoGZWIzd7OnW5h8PImv1dX", "9OHeUl2dxQ9y3g7sK1669", "ejdw", "orFgTMj4gc7nxjDrulE2T1NaHiTuAbhe"};
    }

    public AnonymousClass23(ArrayList arrayList, String str) {
        this.A01 = arrayList;
        this.A00 = str;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                Iterator it = this.A01.iterator();
                while (it.hasNext()) {
                    Bundle bundle = new Bundle();
                    bundle.putString(A00(0, 13, 8), this.A00);
                    ((AdSDKNotificationListener) it.next()).onAdEvent(A00(13, 10, 19), bundle);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
