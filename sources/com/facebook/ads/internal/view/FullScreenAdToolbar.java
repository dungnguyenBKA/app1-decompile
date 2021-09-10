package com.facebook.ads.internal.view;

import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.redexgen.X.AnonymousClass1I;
import com.facebook.ads.redexgen.X.AnonymousClass1S;
import com.facebook.ads.redexgen.X.AnonymousClass1Z;
import com.facebook.ads.redexgen.X.C0632Lh;
import com.facebook.ads.redexgen.X.C0719Os;
import com.facebook.ads.redexgen.X.JJ;
import com.facebook.ads.redexgen.X.M2;
import com.facebook.ads.redexgen.X.M3;
import com.facebook.ads.redexgen.X.M4;
import com.facebook.ads.redexgen.X.M9;
import com.facebook.ads.redexgen.X.MD;
import com.facebook.ads.redexgen.X.MW;
import com.facebook.ads.redexgen.X.XJ;
import java.util.Arrays;

public final class FullScreenAdToolbar extends M4 {
    public static byte[] A07;
    public static String[] A08;
    public static final int A09 = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A0A = ((int) (C0632Lh.A01 * 4.0f));
    public static final int A0B;
    public static final int A0C;
    public static final int A0D = ((int) (C0632Lh.A01 * 16.0f));
    @Nullable
    public M3 A00;
    public final RelativeLayout A01;
    public final JJ A02;
    public final M2 A03;
    public final M9 A04;
    public final MW A05;
    public final C0719Os A06;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 113);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{-26, 15, 18, 22, 8, -61, -28, 7, 56, 75, 86, 85, 88, 90, 6, 39, 74};
    }

    public static void A04() {
        A08 = new String[]{"elaUgpg", "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38", "j2Hg99bd5kkvFLrtwtqoGvtE7T", "FtK0h2Y990QReQxCoMrwn7Y", "09p430KvfvIa5D7TMMbG57be7BWhVuc0", "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc", "MQsbPX4", "ODYsITK"};
    }

    static {
        A04();
        A03();
        int i = A0D;
        int i2 = A09;
        A0B = i - i2;
        A0C = (i * 2) - i2;
    }

    public FullScreenAdToolbar(XJ xj, M9 m9, JJ jj, @ToolbarActionView$ToolbarActionMode int i, int i2) {
        super(xj);
        this.A04 = m9;
        this.A02 = jj;
        setGravity(16);
        this.A05 = new MW(xj, i);
        this.A05.setContentDescription(A02(0, 8, 50));
        this.A05.setActionClickListener(new MD(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int i3 = A0B;
        layoutParams.setMargins(i3, i3, A0C, i3);
        addView(this.A05, layoutParams);
        this.A01 = new RelativeLayout(xj);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        this.A06 = new C0719Os(xj);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        this.A06.setLayoutParams(layoutParams3);
        this.A01.addView(this.A06);
        addView(this.A01, layoutParams2);
        this.A03 = new M2(xj, i2);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        int i4 = A0D;
        layoutParams4.setMargins(0, i4 / 2, i4 / 2, i4 / 2);
        addView(this.A03, layoutParams4);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public final void A05(AnonymousClass1I r6, boolean z) {
        int A042 = r6.A04(z);
        this.A06.A01(r6.A0A(z), A042);
        this.A03.setIconColors(A042);
        this.A03.setContentDescription(A02(8, 9, 117));
        this.A05.setColors(A042);
        if (z) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
            gradientDrawable.setCornerRadius(0.0f);
            C0632Lh.A0X(this, gradientDrawable);
            C0632Lh.A0U(this.A03, 0, -16777216, A0A);
            return;
        }
        C0632Lh.A0P(this, 0);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public final boolean A07() {
        return this.A05.A02();
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public int getToolbarHeight() {
        return M4.A00;
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setAdReportingVisible(boolean z) {
        int i;
        M2 m2 = this.A03;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        m2.setVisibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setPageDetails(AnonymousClass1S r4, String str, int i, AnonymousClass1Z r7) {
        this.A05.setInitialUnskippableSeconds(i);
        this.A06.setPageDetails(r4);
        this.A03.setAdDetails(r4, str, this.A02, this.A04);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setPageDetailsVisible(boolean z) {
        this.A01.removeAllViews();
        if (z) {
            RelativeLayout relativeLayout = this.A01;
            C0719Os os = this.A06;
            if (A08[4].charAt(4) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "uYrc95dj4mq6YR3RipRhNZPjST";
            strArr[3] = "ufyXPPKrvmASdIniU0CJIS9";
            relativeLayout.addView(os);
        }
        MW mw = this.A05;
        String[] strArr2 = A08;
        if (strArr2[2].length() != strArr2[3].length()) {
            A08[1] = "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq";
            mw.setToolbarMessageEnabled(!z);
            return;
        }
        mw.setToolbarMessageEnabled(!z);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setProgress(float f) {
        this.A05.setProgress(f);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setToolbarActionMessage(String str) {
        this.A05.setToolbarMessage(str);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setToolbarActionMode(@ToolbarActionView$ToolbarActionMode int i) {
        this.A05.setToolbarActionMode(i);
    }

    @Override // com.facebook.ads.redexgen.X.M4
    public void setToolbarListener(M3 m3) {
        this.A00 = m3;
    }
}
