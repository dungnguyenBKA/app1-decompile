package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;

/* renamed from: com.facebook.ads.redexgen.X.Rk  reason: case insensitive filesystem */
public class C0789Rk extends AbstractRunnableC0603Kb {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ String A00;

    static {
        A03();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 67);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        byte[] bArr = {29, 41, 28, 40, 44, 28, 37, 26, 48, 22, 26, 24, 39, 39, 32, 37, 30};
        String[] strArr = A02;
        if (strArr[2].charAt(10) != strArr[7].charAt(10)) {
            throw new RuntimeException();
        }
        A02[5] = "QkfkB";
        A01 = bArr;
    }

    public static void A03() {
        A02 = new String[]{"oskFp91e5pmXbfqncEKHUOJlooKh56jY", "lReJ4EGI0ZfzcS4beAfFSCPJefxJWm51", "X9zy5AMUM8AKtatrcfePQZWL0uWUICrn", "wxwSRA3odXIdIsY7f5yZfv3v7", "O6Pxh8VVn00f1EJnP312TgPdEktEk3X8", "2QJh3yF6", "0YwPA87fpumxZ406JTpoKHsZ368w", "aJIZZEX98MAeULDgBorQq277OQTM9IaN"};
    }

    public C0789Rk(String str) {
        this.A00 = str;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        String A002 = A00(0, 17, 116);
        try {
            C01420u.A04.await();
            if (C01420u.A0K(this.A00)) {
                ((AnonymousClass1M) C01420u.A00.A04().get(this.A00)).A05((int) (System.currentTimeMillis() / 1000));
                C01420u.A00.A07(this.A00);
                C01420u.A00.A05();
                C01420u.A07();
            }
        } catch (InterruptedException e) {
            C01420u.A01.A04().A8V(A002, C03228e.A0x, new C03238f(e));
        } catch (JSONException e2) {
            C01420u.A08();
            C01420u.A01.A04().A8V(A002, C03228e.A0w, new C03238f(e2));
        }
    }
}
