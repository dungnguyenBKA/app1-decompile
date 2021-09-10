package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;

public final class R0 extends AbstractC02274c {
    public static String[] A0A;
    @DoNotStrip
    public QD A00;
    public QE A01;
    @Nullable
    public QE A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final SparseBooleanArray A07;
    public final XJ A08;
    public final AbstractC03499g A09;

    static {
        A08();
    }

    public static void A08() {
        A0A = new String[]{"av2tITPhYKbVn20ukUfJR25ELbcgjHbj", "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ", "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC", "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b", "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8", "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4", "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi", "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"};
    }

    public R0(AbstractC03499g r1, SparseBooleanArray sparseBooleanArray, QE qe, int i, int i2, int i3, int i4, XJ xj) {
        super(r1);
        this.A08 = xj;
        this.A09 = r1;
        this.A07 = sparseBooleanArray;
        this.A01 = qe;
        this.A03 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
    }

    private void A09(JC jc, C0625La la, String str, C0720Ot ot) {
        if (!this.A07.get(ot.A02())) {
            QE qe = this.A02;
            if (qe != null) {
                qe.A0W();
                if (A0A[4].charAt(16) != 'E') {
                    throw new RuntimeException();
                }
                A0A[4] = "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy";
                this.A02 = null;
            }
            this.A00 = new R5(this, str, ot, jc, ot.A04(), la);
            this.A02 = new QE(this.A09, 10, new WeakReference(this.A00), this.A08);
            this.A02.A0Z(false);
            this.A02.A0X(100);
            this.A02.A0Y(100);
            this.A09.setOnAssetsLoadedListener(new R4(this, ot));
        }
    }

    public final void A0m(C0720Ot ot, JC jc, AnonymousClass7D r8, C0625La la, String videoUrl) {
        int i;
        int i2;
        int A022 = ot.A02();
        this.A09.setTag(-1593835536, Integer.valueOf(A022));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A03, -2);
        if (A022 == 0) {
            i = this.A04;
        } else {
            i = this.A05;
        }
        if (A022 >= this.A06 - 1) {
            i2 = this.A04;
        } else {
            i2 = this.A05;
        }
        marginLayoutParams.setMargins(i, 0, i2, 0);
        String A072 = ot.A03().A0E().A07();
        String A082 = ot.A03().A0E().A08();
        this.A09.setIsVideo(!TextUtils.isEmpty(A082));
        if (this.A09.A0g()) {
            this.A09.setVideoPlaceholderUrl(A072);
            this.A09.setVideoUrl(r8.A0O(A082));
        } else {
            this.A09.setImageUrl(A072);
        }
        this.A09.setLayoutParams(marginLayoutParams);
        this.A09.setAdTitleAndDescription(ot.A03().A0F().A06(), ot.A03().A0F().A01());
        this.A09.setCTAInfo(ot.A03().A0G(), ot.A04());
        this.A09.A0i(ot.A04());
        A09(jc, la, videoUrl, ot);
    }
}
