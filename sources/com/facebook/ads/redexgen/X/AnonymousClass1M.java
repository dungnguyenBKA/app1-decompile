package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;

/* renamed from: com.facebook.ads.redexgen.X.1M  reason: invalid class name */
public final class AnonymousClass1M {
    public static int A06 = 50;
    public static byte[] A07;
    public static String[] A08;
    public int A00;
    public int A01;
    public int A02 = 0;
    public long A03;
    public String A04;
    public LinkedList<Integer> A05 = new LinkedList<>();

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{70, 27, 12, 109, 60, 8, 31, 11, 15, 31, 20, 25, 3, 90, 57, 27, 10, 10, 19, 20, 29, 90, 62, 27, 14, 27, 64, 90, 20, 21, 20, 31, 90, 51, 20, 14, 31, 29, 31, 8, 90, 21, 25, 25, 15, 8, 8, 31, 20, 25, 31, 1, 11, 9, 24, 53, 62, 51, 34, 41, 32, 36, 53, 52, 15, 57, 52, 53, 57, 32, 7, 59, 57, 40, 40, 61, 60, 7, 57, 42, 42, 57, 33, 7, 52, 61, 54, 63, 44, 48, 104, 100, 100, 114, 117, 117, 98, 105, 100, 98, 116, 49, 36, 51, 40, 46, 37, 102, 113, 107, 106, 65, 113, 125, 125, 107, 108, 108, 123, 112, 125, 123, 65, 109, 123, 125, 109, 33, 54, 44, 45, 6, 41, 60, 43, 48, 54, 61, 29, 5};
    }

    public static void A04() {
        A08 = new String[]{"Du56ltgKKs1OVAX5", "GkTmjkH3MPiTFcKSZdtZeP", "KEGdoxZZnAdDUnYCV96i9ePmYlw0nVcs", "eeVVi2jaa6aVR", "fQADRcl3z4I9sbyUvoxt9O6e4jXdGtkI", "3SSpimwT8orOGywmbz8JxKLw4xXAqR", "PizR3LI8tsUKIk44MqfkEczppTSirtIQ", "PpMlGdJ0WRh5qmood9xHloOk"};
    }

    static {
        A04();
        A03();
    }

    public AnonymousClass1M(String str) {
        this.A04 = str;
    }

    public static int A00() {
        return A06;
    }

    private void A02() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        while (!this.A05.isEmpty() && this.A05.peekFirst() != null && currentTimeMillis - ((long) this.A05.peekFirst().intValue()) >= ((long) this.A00)) {
            this.A05.removeFirst();
        }
    }

    public final void A05(int i) {
        this.A02 = i;
    }

    public final void A06(int i, int i2, long j, int i3) {
        this.A00 = i;
        this.A01 = i2;
        this.A03 = j;
        A06 = i3;
    }

    public final void A07(JSONArray jSONArray) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            if (jSONArray.get(i) instanceof Integer) {
                this.A05.addLast((Integer) jSONArray.get(i));
            } else {
                throw new JSONException(A01(4, 47, 16));
            }
        }
    }

    public final void A08(boolean z) {
        if (z) {
            this.A05.addLast(Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
        }
        A02();
    }

    public final boolean A09() {
        return ((long) this.A05.size()) >= this.A03;
    }

    public final boolean A0A() {
        return (System.currentTimeMillis() / 1000) - ((long) this.A02) <= ((long) this.A01);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(A01(138, 1, 12));
        sb.append(A01(55, 12, 58));
        String A012 = A01(1, 1, 75);
        sb.append(A012);
        sb.append(this.A04);
        String A013 = A01(0, 1, 0);
        sb.append(A013);
        sb.append(A01(101, 6, 43));
        sb.append(A012);
        sb.append(this.A00);
        sb.append(A013);
        sb.append(A01(127, 11, 51));
        sb.append(A012);
        sb.append(this.A01);
        sb.append(A013);
        sb.append(A01(52, 3, 2));
        sb.append(A012);
        sb.append(this.A03);
        sb.append(A013);
        sb.append(A01(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 20, 116));
        sb.append(A012);
        sb.append(this.A02);
        sb.append(A013);
        sb.append(A01(67, 23, 50));
        sb.append(A012);
        sb.append(A06);
        sb.append(A013);
        sb.append(A01(90, 11, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
        sb.append(A01(2, 2, 92));
        Iterator<Integer> it = this.A05.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A08[1].length() != 22) {
                throw new RuntimeException();
            }
            A08[7] = "ktnl640oaPGPfDqOI7";
            if (hasNext) {
                sb.append(it.next());
                if (it.hasNext()) {
                    sb.append(A013);
                }
            } else {
                sb.append(A01(51, 1, 54));
                sb.append(A01(139, 1, 18));
                return sb.toString();
            }
        }
    }
}
