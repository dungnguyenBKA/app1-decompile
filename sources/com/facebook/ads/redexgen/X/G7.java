package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class G7 implements AbstractC0762Qj {
    public static byte[] A05;
    public static String[] A06;
    @Nullable
    public JSONObject A00;
    @Nullable
    public JSONObject A01;
    public boolean A02 = false;
    public final EnumC0763Qk A03;
    public final List<AbstractC0764Ql> A04 = new ArrayList();

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 27);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        if (A06[7].length() != 12) {
            throw new RuntimeException();
        }
        A06[3] = "GbTE4j9vTw";
        A05 = new byte[]{58, 13, 22, 28, 20, 29, 88, 93, 11, 88, 28, 25, 12, 25, 88, 13, 8, 28, 25, 12, 29, 66, 114, 82, 82, 88, 28, 25, 12, 25, 88, 82, 82, 114, 93, 11, 114, 82, 82, 88, 30, 17, 22, 31, 29, 10, 8, 10, 17, 22, 12, 88, 82, 82, 114, 93, 11, 89, 110, 117, Byte.MAX_VALUE, 119, 126, 59, 115, 122, 104, 59, 117, 116, 59, 125, 114, 117, 124, 126, 105, 107, 105, 114, 117, 111, 32, 23, 12, 6, 14, 7, 66, 11, 17, 66, 12, 13, 22, 66, 16, 7, 3, 6, 27, 43, 46, 59, 46, 111, 114, 114, 111, 33, 58, 35, 35, 107, 100, 99, 106, 104, Byte.MAX_VALUE, 125, Byte.MAX_VALUE, 100, 99, 121, 45, 44, 48, 45, 99, 120, 97, 97, 125, 114, 117, 124, 126, 105, 107, 105, 114, 117, 111, 59, 38, 38, 59, 117, 110, 119, 119, 77, 86, 79, 79};
    }

    public static void A04() {
        A06 = new String[]{"yJwczGSbba5UrkwzZOW60Je1LUoZxQIl", "oZp", "SLRT1bjVboXCxkvYGWPu27FVIHxKKecJ", "WHpvXVjPup", "", "gRWAa43vtpEz38T6Kt4HiTmitjJp6SmI", "", "QpBNbg2dQWhW"};
    }

    public G7(EnumC0763Qk qk) {
        this.A03 = qk;
    }

    private boolean A05(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return false;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return true;
        }
        boolean A022 = C0761Qi.A02(jSONObject, jSONObject2);
        String[] strArr = A06;
        if (strArr[0].charAt(8) != strArr[2].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[4] = "";
        strArr2[6] = "";
        return true ^ A022;
    }

    public final synchronized boolean A06(JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        String jSONObject3;
        String jSONObject4;
        if (jSONObject != null) {
            if (jSONObject2 == null) {
                if (this.A03.A05()) {
                    throw new IllegalArgumentException(A02(132, 19, 0));
                }
            }
            if (jSONObject2 == null || this.A03.A05()) {
                boolean A052 = A05(this.A01, jSONObject2);
                if (A06[7].length() != 12) {
                    throw new RuntimeException();
                }
                String[] strArr = A06;
                strArr[0] = "K9PRKVKMb7VtUCOMkzotPIPCn5fc0ecH";
                strArr[2] = "SxwA2mF5bGI3KXtpcTFDX9Gzp9XH67Wr";
                if (!(A052 || A05(this.A00, jSONObject))) {
                    return false;
                }
                this.A00 = jSONObject;
                this.A01 = jSONObject2;
                this.A02 = true;
                for (AbstractC0764Ql l : this.A04) {
                    l.A3v();
                }
                try {
                    Locale locale = Locale.US;
                    String A022 = A02(0, 57, 99);
                    Object[] objArr = new Object[3];
                    objArr[0] = this.A03;
                    if (this.A00 == null) {
                        jSONObject3 = A02(151, 4, 56);
                    } else {
                        jSONObject3 = this.A00.toString(2);
                    }
                    objArr[1] = jSONObject3;
                    if (this.A01 == null) {
                        jSONObject4 = A02(151, 4, 56);
                    } else {
                        jSONObject4 = this.A01.toString(2);
                    }
                    objArr[2] = jSONObject4;
                    String.format(locale, A022, objArr);
                } catch (JSONException unused) {
                }
                return true;
            }
            throw new IllegalArgumentException(A02(113, 19, 22));
        }
        throw new IllegalArgumentException(A02(101, 12, 84));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0762Qj
    public final synchronized void A3J(AbstractC0764Ql ql) {
        this.A04.add(ql);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0762Qj
    public final synchronized JSONObject A6B() {
        if (this.A00 != null) {
        } else {
            throw new IllegalStateException(A02(82, 19, 121));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0762Qj
    public final synchronized JSONObject A6W() {
        if (!this.A03.A05()) {
            throw new IllegalStateException(A02(57, 25, 0));
        } else if (this.A01 != null) {
        } else {
            throw new IllegalStateException(A02(82, 19, 121));
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0762Qj
    public final EnumC0763Qk A6a() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0762Qj
    public final synchronized boolean A89() {
        return this.A02;
    }
}
