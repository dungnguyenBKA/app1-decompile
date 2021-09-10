package com.facebook.ads.redexgen.X;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ut  reason: case insensitive filesystem */
public class C0873Ut implements AbstractC02806e {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ V4 A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] - i3;
            if (A02[4].charAt(5) != 'u') {
                String[] strArr = A02;
                strArr[3] = "eya4WcuMkKlP";
                strArr[7] = "iVKlWYkTLkVv";
                copyOfRange[i4] = (byte) (i5 - 61);
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-56, -63, -66, -58, -77, -71, -73};
    }

    public static void A02() {
        A02 = new String[]{"ksa9uXkx89dXxbCURV7PiRCel6d7bK9j", "eXuTZs6W3v0JJtnWIbv2wG4QRruqx6j8", "WGgalorghCXwLSZ9oN", "BSejCupF6vxF", "vAQOCQWHxXMHYUUvXYDH6ypyDqGR6HRf", "iKQXn2EsxsEQ3pyGOtesmJGftglzEEjH", "dCL4N6ovXvI3jfuXevzoM7RKt4XsOwpl", "Cl5pJnrztL7k"};
    }

    public C0873Ut(V4 v4) {
        this.A00 = v4;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        return this.A00.A0B(A00(0, 7, 21), RecyclerView.UNDEFINED_DURATION);
    }
}
