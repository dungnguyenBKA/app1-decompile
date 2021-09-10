package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;

/* renamed from: com.facebook.ads.redexgen.X.0j  reason: invalid class name and case insensitive filesystem */
public final class C01310j {
    public static byte[] A00;
    public static String[] A01;

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{101, 64, 4, 77, 87, 4, 77, 74, 82, 69, 72, 77, 64, 69, 80, 65, 64, 4, 83, 77, 80, 76, 75, 81, 80, 4, 80, 75, 79, 65, 74, 10, 10, 27, 2};
    }

    public static void A03() {
        A01 = new String[]{"4Fi3cRKjKwjo", "pfwDmZC0EgnSHGG3akphHDiSxRpjxWfc", "OwKyFlCBYoW0NHpoiuFf2exuC", "FTixXnraWBf7yQ9sseM6khJqknPB2", "87lno6sBf8EnLpq9v2WrftgOrdI4V", "hcLSbPhFObKmfxN2jEGb0Jf71EM4", "MV7VLhl", "AE1L1nhQpeYYJvXkfFkincgpQRIdvuit"};
    }

    public static Collection<String> A01(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static boolean A04(XJ xj, AbstractC01300i r8, JC jc) {
        boolean z;
        EnumC01290h A6e = r8.A6e();
        if (A6e == null || A6e == EnumC01290h.A03) {
            return false;
        }
        boolean z2 = false;
        Collection<String> A6F = r8.A6F();
        if (A6F == null || A6F.isEmpty()) {
            return false;
        }
        Iterator<String> it = A6F.iterator();
        while (true) {
            if (it.hasNext()) {
                if (A05(xj, it.next())) {
                    z2 = true;
                    break;
                }
            } else {
                break;
            }
        }
        if (A6e == EnumC01290h.A02) {
            z = true;
        } else {
            z = false;
        }
        if (z2 != z) {
            return false;
        }
        String A5x = r8.A5x();
        boolean isEmpty = TextUtils.isEmpty(A5x);
        String[] strArr = A01;
        if (strArr[7].charAt(25) != strArr[1].charAt(25)) {
            throw new RuntimeException();
        }
        A01[2] = "Y0XUyINdugWnNFuKX72emGLWk";
        if (!isEmpty) {
            jc.A8b(A5x, null);
            return true;
        }
        xj.A04().A8V(A00(32, 3, 83), C03228e.A0O, new C03238f(A00(0, 32, 28)));
        return true;
    }

    public static boolean A05(XJ xj, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            xj.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        } catch (RuntimeException unused2) {
            return false;
        }
    }
}
