package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Ik  reason: case insensitive filesystem */
public final class C0562Ik {
    public static byte[] A02;
    public static String[] A03;
    public final int A00;
    public final List<byte[]> A01;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 44);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-22, 23, 23, 20, 23, -59, 21, 6, 23, 24, 14, 19, 12, -59, -19, -22, -5, -24, -59, 8, 20, 19, 11, 14, 12};
    }

    public static void A03() {
        A03 = new String[]{"bNwv9DTrsFpr", "zbhYB7daSjPcuvBmkTZuqaAPzZ9zn8h", "FRkSQOtD666PiwdWpMANCzaC3fIlZstE", "hSncHK0YMcK7Os9UUgTo3Hp6GRz3gib", "Da8z6HvdaVwrG586sIxSQ6hlHOkGiutI", "7Q5nL4gzRbsCGic6ITFl05T54duLJG5D", "soaxh0FZrqdNmpGhlM75NEwupCBAn2wQ", "H3bjs2QdHQpI"};
    }

    public C0562Ik(List<byte[]> initializationData, int i) {
        this.A01 = initializationData;
        this.A00 = i;
    }

    /* JADX INFO: Multiple debug info for r10v0 int: [D('i' int), D('buffer' byte[])] */
    public static C0562Ik A00(IM im) throws AJ {
        try {
            im.A0a(21);
            int csdStartPosition = im.A0F() & 3;
            int i = im.A0F();
            int numberOfNalUnits = 0;
            int A07 = im.A07();
            int i2 = 0;
            while (true) {
                String[] strArr = A03;
                if (strArr[7].length() != strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[7] = "tNmJvjDEnkcZ";
                strArr2[0] = "FarTxLmaqbLK";
                if (i2 < i) {
                    im.A0a(1);
                    int A0J = im.A0J();
                    for (int i3 = 0; i3 < A0J; i3++) {
                        int A0J2 = im.A0J();
                        numberOfNalUnits += A0J2 + 4;
                        im.A0a(A0J2);
                    }
                    i2++;
                } else {
                    im.A0Z(A07);
                    byte[] bArr = new byte[numberOfNalUnits];
                    int i4 = 0;
                    for (int bufferPosition = 0; bufferPosition < i; bufferPosition++) {
                        im.A0a(1);
                        int i5 = im.A0J();
                        for (int i6 = 0; i6 < i5; i6++) {
                            int j = im.A0J();
                            System.arraycopy(II.A03, 0, bArr, i4, II.A03.length);
                            int length = i4 + II.A03.length;
                            System.arraycopy(im.A00, im.A07(), bArr, length, j);
                            i4 = length + j;
                            im.A0a(j);
                        }
                    }
                    return new C0562Ik(numberOfNalUnits == 0 ? null : Collections.singletonList(bArr), csdStartPosition + 1);
                }
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new AJ(A01(0, 25, 121), e);
        }
    }
}
