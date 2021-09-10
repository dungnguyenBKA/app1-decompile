package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Up  reason: case insensitive filesystem */
public class C0869Up implements AbstractC02876l<Integer> {
    public static byte[] A03;
    public final int A00;
    public final int A01;
    public final int A02;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{114, 100, 91, 87, 77, 73};
    }

    public C0869Up(int i, int i2, int i3) {
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final JSONObject AEK(Integer num, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A00(4, 2, 42), this.A02);
        jSONObject2.put(A00(0, 2, 27), this.A00);
        jSONObject2.put(A00(2, 2, 60), this.A01);
        jSONObject.put(num.toString(), jSONObject2);
        return jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    public final boolean A80(Object obj) {
        C0869Up up = (C0869Up) obj;
        return this.A01 == up.A01 && this.A00 == up.A00 && this.A02 == up.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02876l
    public final int ADz() {
        return A00(4, 2, 42).getBytes().length + A00(0, 2, 27).getBytes().length + A00(2, 2, 60).getBytes().length + 12;
    }
}
