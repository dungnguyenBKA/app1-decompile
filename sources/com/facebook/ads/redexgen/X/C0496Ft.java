package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ft  reason: case insensitive filesystem */
public class C0496Ft extends AbstractC0781Rc<EnumC01240c> {
    public static byte[] A00;
    public static String[] A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[1].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A01[5] = "VLAsB6FpgF6HHUeMgZV0uCFNDiYuOANh";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 46);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{19, 26, 17, 17};
    }

    public static void A02() {
        A01 = new String[]{"nfOmdPRKy6dJXhDeozy3bec4eprLIoSQ", "SpNSu", "KnwtHm0RppTzgOMyhwsp1PpmZykcOlps", "rm2Q4", "VxhbZsLUCIIY3eK9iwu", "VDpaDUxovSHskE3K7Rzj9CiAPD6OjiUH", "VHZOT7bXdVoDaPP", "SrW2lLCi4fFkH4TY8LZz6iOiSZQwKo1F"};
    }

    public C0496Ft(String str) {
        super(str);
    }

    /* renamed from: A07 */
    public final AnonymousClass0W A06(@Nullable EnumC01240c r5) {
        String A02;
        if (r5 != null) {
            A02 = r5.A02();
        } else if (A01[0].charAt(24) != 'c') {
            A01[2] = "FtIMifYPiEAUkOQozBm9Vw11LGuuRK56";
            A02 = A00(0, 4, 119);
        } else {
            throw new RuntimeException();
        }
        return new AnonymousClass0W(this, A02);
    }
}
