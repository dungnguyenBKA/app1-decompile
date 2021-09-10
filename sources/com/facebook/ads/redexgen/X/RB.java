package com.facebook.ads.redexgen.X;

public class RB implements OC {
    public static String[] A02;
    public final /* synthetic */ C0720Ot A00;
    public final /* synthetic */ RA A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"z07VqEjGvJ", "HVUavbLQzawZdZVBJZvs2mdfMmVurwko", "OXCJr9QWCT6iNhGP7b2SKXpA8jzUGtxO", "XfWPaMhvYm", "d0mI5Otk4DkPTVLBqA06pYB2qhxVYO4x", "4lS6eLthtLYEvbxsvILcFz16jeQVP", "9TNy9PrFUeRgfy9Rk5pKZK4U", "r8zM3TRfMT7OJmVxj71ND5jlCBdKG"};
    }

    public RB(RA ra, C0720Ot ot) {
        this.A01 = ra;
        this.A00 = ot;
    }

    @Override // com.facebook.ads.redexgen.X.OC
    public final void A9R() {
        if (this.A00.A02() == 0) {
            QE A04 = RA.A04(this.A01);
            String[] strArr = A02;
            if (strArr[3].length() != strArr[6].length()) {
                String[] strArr2 = A02;
                strArr2[3] = "rJocaZsUv9";
                strArr2[6] = "3nzpDtzjz9tePwbisyAfJiul";
                A04.A0V();
            } else {
                throw new RuntimeException();
            }
        }
        if (RA.A05(this.A01) != null) {
            RA.A05(this.A01).A0V();
        }
    }
}
