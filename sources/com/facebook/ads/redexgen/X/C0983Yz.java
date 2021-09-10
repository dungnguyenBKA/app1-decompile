package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Yz  reason: case insensitive filesystem */
public final class C0983Yz extends CU {
    public static byte[] A01;
    public static String[] A02;
    public long A00 = -9223372036854775807L;

    static {
        A0B();
        A0A();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A01 = new byte[]{47, 62, 57, 42, 63, 34, 36, 37, 83, 82, 113, 89, 72, 93, 120, 93, 72, 93};
    }

    public static void A0B() {
        A02 = new String[]{"VtWAGSJcoPK1ZfQIT7kg70", "uvijoF7s18JkyzfLjC52JO", "UbwrKHlSsB9uBr4pHbp3GiHEJPcDIn2y", "M5IiKhc4TX4EBu4m9nlnlg4KrGcCYGid", "uZSF2L4tKNd9pS0dTFbwskwuDNdjgXB", "5", "JxfitwILt0nkPD2n3YPqqh4", "RXlbAzoXPs3VSjVZyf6us5"};
    }

    public C0983Yz() {
        super(null);
    }

    public static int A00(IM im) {
        return im.A0F();
    }

    public static Boolean A01(IM im) {
        boolean z = true;
        if (im.A0F() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static Double A02(IM im) {
        return Double.valueOf(Double.longBitsToDouble(im.A0M()));
    }

    public static Object A03(IM im, int i) {
        if (i == 0) {
            return A02(im);
        }
        if (i == 1) {
            return A01(im);
        }
        if (i == 2) {
            return A05(im);
        }
        if (i == 3) {
            return A09(im);
        }
        if (i == 8) {
            HashMap<String, Object> A08 = A08(im);
            if (A02[5].length() != 0) {
                String[] strArr = A02;
                strArr[7] = "dv1uUJDV50UY3341cCSHZj";
                strArr[6] = "lZLu8OCPwS2vewsoll9LjNz";
                return A08;
            }
        } else if (i == 10) {
            ArrayList<Object> A06 = A06(im);
            String[] strArr2 = A02;
            if (strArr2[1].length() == strArr2[0].length()) {
                A02[4] = "2Wm";
                return A06;
            }
        } else if (i != 11) {
            return null;
        } else {
            return A07(im);
        }
        throw new RuntimeException();
    }

    public static String A05(IM im) {
        int position = im.A0J();
        int A07 = im.A07();
        im.A0a(position);
        return new String(im.A00, A07, position);
    }

    public static ArrayList<Object> A06(IM im) {
        int A0I = im.A0I();
        ArrayList<Object> arrayList = new ArrayList<>(A0I);
        for (int type = 0; type < A0I; type++) {
            arrayList.add(A03(im, A00(im)));
        }
        return arrayList;
    }

    public static Date A07(IM im) {
        Date date = new Date((long) A02(im).doubleValue());
        im.A0a(2);
        return date;
    }

    public static HashMap<String, Object> A08(IM im) {
        int A0I = im.A0I();
        HashMap<String, Object> hashMap = new HashMap<>(A0I);
        for (int i = 0; i < A0I; i++) {
            hashMap.put(A05(im), A03(im, A00(im)));
        }
        return hashMap;
    }

    public static HashMap<String, Object> A09(IM im) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String A05 = A05(im);
            int A002 = A00(im);
            if (A02[4].length() != 22) {
                String[] strArr = A02;
                strArr[1] = "V4HwzONZDXYgxClN6ndm7q";
                strArr[0] = "UAxIIFeY73WGzRiRR4AY1i";
                if (A002 == 9) {
                    return hashMap;
                }
                hashMap.put(A05, A03(im, A002));
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CU
    public final void A0C(IM im, long j) throws AJ {
        if (A00(im) == 2) {
            if (A04(8, 10, 28).equals(A05(im)) && A00(im) == 8) {
                Map<String, Object> metadata = A08(im);
                String A04 = A04(0, 8, FacebookMediationAdapter.ERROR_NULL_CONTEXT);
                if (metadata.containsKey(A04)) {
                    double doubleValue = ((Double) metadata.get(A04)).doubleValue();
                    if (doubleValue > 0.0d) {
                        this.A00 = (long) (1000000.0d * doubleValue);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        throw new AJ();
    }

    @Override // com.facebook.ads.redexgen.X.CU
    public final boolean A0D(IM im) {
        return true;
    }

    public final long A0E() {
        return this.A00;
    }
}
