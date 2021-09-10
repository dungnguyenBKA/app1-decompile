package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import com.facebook.ads.internal.checkerframework.checker.nullness.qual.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class NQ extends RelativeLayout {
    public static M9 A05 = new C1028aL();
    public static byte[] A06;
    public static String[] A07;
    public static final int A08 = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A09 = ((int) (C0632Lh.A01 * 15.0f));
    public TS A00 = new C0470Er();
    public XJ A01;
    public AnonymousClass18 A02;
    @Nullable
    public C1029aM A03;
    @Nullable
    public C0689Nn A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A07[6].length() != 9) {
                String[] strArr = A07;
                strArr[2] = "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs";
                strArr[0] = "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 119);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A02() {
        A06 = new byte[]{-25, 5, 22, 19, 25, 23, 9, 16, -60, -14, 5, 24, 13, 26, 9, -60, 26, 13, 9, 27, -60, 5, 8, 9, 20, 24, 9, 22, -60, 13, 23, 18, -53, 24, -60, 7, 22, 9, 5, 24, 9, 8, -60, 20, 22, 19, 20, 9, 22, 16, 29, -5, -7, 2, -7, 6, -3, -9};
    }

    public static void A03() {
        A07 = new String[]{"CT308ms2RTF49ixw7iITcI5DvAIGWMXZ", "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd", "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL", "qur6nZLrhU9XJET37yOODnXWYcrj37IJ", "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3", "KopKmjllEHptdGx3", "mL4xXMXopKoNgp", "1VwEGJcTQNgN7iTbFc9O"};
    }

    static {
        A03();
        A02();
    }

    public NQ(XJ xj) {
        super(xj);
        this.A01 = xj;
        this.A02 = new AnonymousClass18(xj);
        C0632Lh.A0N(this.A02);
        this.A00.A0I(this.A02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
    }

    private ArrayList<C0720Ot> A01(AnonymousClass16 r7) {
        if (r7 == null) {
            return new ArrayList<>();
        }
        List<AnonymousClass19> A0a = r7.A0a();
        ArrayList<C0720Ot> arrayList = new ArrayList<>(A0a.size());
        for (int i = 0; i < A0a.size(); i++) {
            arrayList.add(new C0720Ot(i, A0a.size(), A0a.get(i)));
        }
        return arrayList;
    }

    public final void A05() {
        this.A02.setAdapter(null);
    }

    public final void A06(C1143cD cDVar, int i) {
        ArrayList<C0720Ot> A012 = A01(cDVar.A0z());
        this.A02.setCardsInfo(A012);
        this.A03 = new C1029aM(this.A01, A012, cDVar.A0z(), C1122br.A01(this.A01.A00()), cDVar, A05, cDVar.A0z().A0T(), this.A02.getCarouselCardBehaviorHelper(), null);
        this.A02.setAdapter(this.A03);
        this.A03.A0G(i - (A08 * 10), 16, 0);
        this.A03.A08();
        setupDotsLayout(cDVar, A012);
    }

    public final void A07(QE qe) {
        C1029aM aMVar = this.A03;
        if (aMVar != null) {
            aMVar.A0H(qe);
        } else {
            this.A01.A04().A8V(A00(51, 7, 29), C03228e.A1d, new C03238f(A00(0, 51, 45)));
        }
        this.A02.A23(qe);
    }

    public static M9 getDummyListener() {
        return A05;
    }

    /* access modifiers changed from: private */
    public void setUpLayoutForCardAtIndex(int i) {
        C0689Nn nn = this.A04;
        if (nn != null) {
            nn.A01(i);
        }
    }

    private void setupDotsLayout(C1143cD cDVar, ArrayList<C0720Ot> arrayList) {
        this.A02.getCarouselCardBehaviorHelper().A0b(new C1027aK(this));
        this.A04 = new C0689Nn(this.A01, cDVar.A0z().A0M().A01(), arrayList.size());
        C0632Lh.A0N(this.A04);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, this.A02.getId());
        layoutParams.setMargins(0, A09, 0, 0);
        addView(this.A04, layoutParams);
    }
}
