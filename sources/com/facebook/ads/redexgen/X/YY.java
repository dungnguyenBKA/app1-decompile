package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class YY extends BV {
    public static byte[] A04;
    public static String[] A05;
    public long A00;
    public ByteBuffer A01;
    public final BY A02 = new BY();
    public final int A03;

    static {
        A06();
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 47);
            if (A05[4].length() != 6) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[3] = "YTCVgJhGT8sTtw3iZqMIkhaJ84PG0kbZ";
            strArr[0] = "KTsoztq2QL6ABezf53EfN52Eki9G1bvj";
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        byte[] bArr = {-61, -33, -61, 101, -39, 12, -3, -3, -4, 9, -73, 11, 6, 6, -73, 10, 4, -8, 3, 3, -73, -65};
        if (A05[5].length() != 17) {
            A05[1] = "yHVImQtB2njQIa6Uhu5u0J3QDrhoWJXT";
            A04 = bArr;
            return;
        }
        throw new RuntimeException();
    }

    public static void A06() {
        A05 = new String[]{"lad6HsSclbl4dZDgQUFPExkrVOZGbBbt", "SIXs2t4gpO1y8YpGDjIkTcYgpW4txOh9", "J4xv1tZlROXtlQfBvf", "Vit3QJU8KhVxHeAvFw7AC39hHkOGUjqR", "SdJnKD", "maUTKVCtTGu9SCIdpkB20zc8NImZ3", "MkM5N8IIfSuQKXHZSl", "IZ8I6ziCCzlMiM6m18QQFiHeFHTPFC3Q"};
    }

    public YY(int i) {
        this.A03 = i;
    }

    public static YY A02() {
        return new YY(0);
    }

    private ByteBuffer A04(int i) {
        int capacity;
        int i2 = this.A03;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.A01;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        throw new IllegalStateException(A03(4, 18, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION) + capacity + A03(0, 3, 116) + i + A03(3, 1, 13));
    }

    @Override // com.facebook.ads.redexgen.X.BV
    public final void A07() {
        super.A07();
        ByteBuffer byteBuffer = this.A01;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final void A08() {
        this.A01.flip();
    }

    public final void A09(int position) throws IllegalStateException {
        ByteBuffer byteBuffer = this.A01;
        if (byteBuffer == null) {
            this.A01 = A04(position);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position2 = this.A01.position();
        int requiredCapacity = position2 + position;
        if (capacity < requiredCapacity) {
            ByteBuffer A042 = A04(requiredCapacity);
            if (position2 > 0) {
                this.A01.position(0);
                this.A01.limit(position2);
                A042.put(this.A01);
            }
            this.A01 = A042;
            if (A05[4].length() != 6) {
                throw new RuntimeException();
            }
            A05[7] = "NYHeQMJyLqWO5Sg7jyx0ubrJlTId8uis";
        }
    }

    public final boolean A0A() {
        return A06(1073741824);
    }

    public final boolean A0B() {
        return this.A01 == null && this.A03 == 0;
    }
}
