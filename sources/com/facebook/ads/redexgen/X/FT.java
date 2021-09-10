package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class FT extends AbstractC0804Rz {
    public static byte[] A02;
    public final XJ A00;
    public final C0578Ja A01;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 57);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-33, -35, -24, -24, -37, -16, -21, -37, -35, -33, -16, -27, -21, -22, 3, 0, -4, -1, 7, 4, 9, 0, -61, -64, -59, -62, -74, -69, -68, -54, -70, -55, -64, -57, -53, -64, -58, -59};
    }

    public FT(XJ xj, AnonymousClass1W r2, List<C1143cD> list, @Nullable C0578Ja ja) {
        super(r2, list, xj);
        this.A00 = xj;
        this.A01 = ja == null ? new C0578Ja() : ja;
    }

    /* access modifiers changed from: private */
    /* renamed from: A01 */
    public final C1181cq A07(ViewGroup viewGroup, int i) {
        return new C1181cq(new MB(this.A00, this.A01));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0804Rz
    /* renamed from: A0I */
    public final void A0F(C1181cq cqVar, int i) {
        super.A0F(cqVar, i);
        MB mb = (MB) cqVar.A0m();
        A0G(mb.getImageCardView(), i);
        mb.setTitle(((AbstractC0804Rz) this).A01.get(i).A1G(A02(14, 8, 98)));
        mb.setSubtitle(((AbstractC0804Rz) this).A01.get(i).A1G(A02(22, 16, 30)));
        mb.setButtonText(((AbstractC0804Rz) this).A01.get(i).A1G(A02(0, 14, 67)));
        ArrayList arrayList = new ArrayList();
        arrayList.add(mb);
        ((AbstractC0804Rz) this).A01.get(i).A1O(mb, mb, arrayList);
    }
}
