package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;

public final class F2 extends SJ {
    public static byte[] A00;
    public static String[] A01;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[7].charAt(30) != strArr[6].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "Dg0tZg7IxBj4D2AEunqK4FRxjbaI0pzK";
            strArr2[4] = "5sVR5Q40j80Tm4EH72ZLdFDAQDj0jOHn";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 112);
            i4++;
        }
    }

    public static void A02() {
        A00 = new byte[]{-11, -13, 0, -78, 1, 0, -2, 11, -78, 5, -9, 6, -78, 1, 0, -78, 4, -9, 9, -13, 4, -10, -9, -10, -78, 8, -5, -10, -9, 1, -78, -13, -10, 5, -15, -14, -93, -28, -25, -28, -13, -9, -24, -11, -93, -11, -24, -28, -25, -4, -93, -9, -14, -93, -10, -24, -9, -93, -11, -24, -6, -28, -11, -25, -93, -14, -15};
    }

    public static void A03() {
        A01 = new String[]{"QPajxPBXawZguZvIACdyFqOYUKJhGG1P", "5fhxQ1wmDDZwcYW6vVZtBFGAbpCppeaF", "0C8PIOmzvjBgpmOh8JUWA", "4kKOVZ4CcWBKVljagfvAN2XyBryastSO", "Oy7EzKzQwTS7e9udIDBq4FtqglrDvqBF", "BZaaKRqUw", "6zOS7wuF6dlGz7u6SsHniaRnv53e8kon", "jwUp8OtoUlvjJY1bP74aKb8UsU7a0Ko9"};
    }

    public F2(XJ xj, C01601m r2) {
        super(xj, r2);
    }

    private AnonymousClass12 A00(Runnable runnable) {
        return new SR(this, runnable);
    }

    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0N() {
        AbstractC0801Rw rw = (AbstractC0801Rw) this.A02;
        rw.A00(this.A08.A00);
        rw.A0E();
    }

    /* JADX INFO: Multiple debug info for r3v0 com.facebook.ads.redexgen.X.SQ: [D('adapter' com.facebook.ads.redexgen.X.FU), D('rewardedVideoTimeout' java.lang.Runnable)] */
    @Override // com.facebook.ads.redexgen.X.SJ
    public final void A0Q(AbstractC01350n r12, C03408w r13, C03388u r14, C01611n r15) {
        FU fu = (FU) r12;
        Runnable rewardedVideoTimeout = new SQ(this, r15, fu);
        if (J4.A1X(this.A0C)) {
            A0G().postDelayed(rewardedVideoTimeout, (long) r13.A05().A05());
        }
        XJ xj = this.A0C;
        AnonymousClass12 A002 = A00(rewardedVideoTimeout);
        boolean z = this.A08.A05;
        String str = this.A08.A03;
        C01601m r3 = this.A08;
        String[] strArr = A01;
        if (strArr[3].charAt(31) != strArr[0].charAt(31)) {
            String[] strArr2 = A01;
            strArr2[3] = "qv162d7nxdmOCgZ5HSNnY6lM4lD0tO4m";
            strArr2[0] = "JwvltbAvbK0MQjlZGmmyrgC4vpl52SAH";
            fu.A0F(xj, A002, r15, z, str, r3.A04);
            return;
        }
        throw new RuntimeException();
    }

    public final void A0Y(RewardData rewardData) {
        if (this.A02 == null) {
            throw new IllegalStateException(A01(34, 33, 19));
        } else if (this.A02.A6x() == AdPlacementType.REWARDED_VIDEO) {
            ((AbstractC0801Rw) this.A02).A01(rewardData);
        } else {
            throw new IllegalStateException(A01(0, 34, 34));
        }
    }
}
