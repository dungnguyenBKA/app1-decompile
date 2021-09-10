package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Ri  reason: case insensitive filesystem */
public class C0787Ri extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public final /* synthetic */ JSONObject A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 21);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{7, 19, 4, 16, 20, 4, 15, 2, 24, 62, 2, 0, 17, 17, 8, 15, 6};
    }

    public C0787Ri(JSONObject jSONObject) {
        this.A00 = jSONObject;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        try {
            C01420u.A03.await();
            synchronized (C01420u.A00) {
                C01420u.A00.A0A(this.A00);
                C01420u.A04.countDown();
            }
        } catch (InterruptedException e) {
            C01420u.A01.A04().A8V(A00(0, 17, 116), C03228e.A0x, new C03238f(e));
        } catch (JSONException e2) {
            C01420u.A08();
            C01420u.A01.A04().A8V(A00(0, 17, 116), C03228e.A0w, new C03238f(e2));
        }
    }
}
