package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.83  reason: invalid class name */
public final class AnonymousClass83 extends AbstractC1106bb {
    public static byte[] A0E;
    public static String[] A0F;
    public static final int A0G = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A0H = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0I = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0J = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A0K = ((int) (C0632Lh.A01 * 56.0f));
    public int A00;
    public int A01;
    @Nullable
    public LinearLayout A02;
    public S1 A03;
    public AnonymousClass7D A04;
    @Nullable
    public C01862m A05;
    @Nullable
    public C0689Nn A06;
    public RH A07;
    @DoNotStrip
    public QD A08;
    public QE A09;
    public String A0A;
    public List<C0720Ot> A0B;
    public final XJ A0C;
    public final C0625La A0D = new C0625La();

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0F;
            if (strArr[0].charAt(22) != strArr[6].charAt(22)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[5] = "I427OJiZERIl1pgFYs7VIJxgJMuHqTWY";
            strArr2[4] = "m1VK8a3APoHjuOOKlTc7gi9yCeUy6Tbh";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 74);
            i4++;
        }
    }

    public static void A09() {
        A0E = new byte[]{118, 115, 72, 115, 118, 99, 118, 72, 117, 98, 121, 115, 123, 114};
    }

    public static void A0A() {
        A0F = new String[]{"hEO5MspmmQwWZDjfO9hYkGtE8t8ljCUN", "895GOd6GqHS2SDNwtQvAqIE", "zBXblOu1CdgXx49mdyV8flA", "GxqIbNjcrUQMSJiuMkyJv1mwkudVYaGP", "be3ZgXhlaup3yXbKLr41yKjcTusIQNjx", "HLi8FTj59ZkYUe8FmXrpO0CEflvtIm0o", "7bereGXxKpIS6kk2UNHV0kt11i4QSfeP", "LRvrjmvhZNKPrr4qRukG9JYrfPQqD7wd"};
    }

    static {
        A0A();
        A09();
    }

    public AnonymousClass83(XJ xj, JC jc, AnonymousClass7D r4, M9 m9, S1 s1) {
        super(xj, jc, m9, s1);
        this.A04 = r4;
        this.A0C = xj;
    }

    private final void A0B() {
        LinearLayout linearLayout = this.A02;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            this.A02 = null;
        }
        C01862m r0 = this.A05;
        if (r0 != null) {
            r0.removeAllViews();
            this.A05 = null;
        }
        C0689Nn nn = this.A06;
        if (nn != null) {
            nn.removeAllViews();
            this.A06 = null;
        }
    }

    /* JADX INFO: Multiple debug info for r0v17 com.facebook.ads.redexgen.X.2m: [D('extraSpacing' int), D('width' int)] */
    private final void A0C(int i, @Nullable Bundle bundle) {
        int childSpacing;
        int i2;
        int i3;
        AnonymousClass83 r4;
        this.A02 = new LinearLayout(getContext());
        if (i == 1) {
            this.A02.setGravity(17);
        } else {
            this.A02.setGravity(48);
        }
        this.A02.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A02.setOrientation(1);
        int i4 = C0632Lh.A02.widthPixels;
        int childSpacing2 = C0632Lh.A02.heightPixels;
        if (i == 1) {
            childSpacing = Math.min(i4 - (A0H * 4), childSpacing2 / 2);
            i2 = (i4 - childSpacing) / 8;
            i3 = i2 * 4;
        } else {
            childSpacing = childSpacing2 - ((A0K + A0G) + (A0H * 4));
            i2 = A0H;
            i3 = i2 * 2;
        }
        this.A08 = new R8(this);
        this.A09 = new QE(this, 1, new WeakReference(this.A08), this.A0C);
        this.A09.A0X(this.A00);
        this.A09.A0Y(this.A01);
        this.A05 = new C01862m(this.A0C);
        this.A05.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.A07 = new RH(this.A05, i, this.A0B, this.A09, bundle);
        this.A05.setAdapter(new R9(this.A0C, this.A0B, this.A03, super.A0B, this.A04, this.A09, this.A0D, getAudienceNetworkListener(), this.A0A, childSpacing, i2, i3, i, this.A07));
        if (i == 1) {
            r4 = this;
            r4.A0E(r4.A07);
        } else {
            r4 = this;
        }
        LinearLayout linearLayout = r4.A02;
        C01862m r3 = r4.A05;
        if (A0F[7].charAt(26) != 'a') {
            String[] strArr = A0F;
            strArr[0] = "pS0yYjaDPNGuTrfnUmeGhxtdEtLadoEJ";
            strArr[6] = "mwC7eMAbLdHre0yQkkMBVztsNAF33a9m";
            linearLayout.addView(r3);
            C0689Nn nn = r4.A06;
            if (nn != null) {
                LinearLayout linearLayout2 = r4.A02;
                String[] strArr2 = A0F;
                if (strArr2[5].charAt(16) != strArr2[4].charAt(16)) {
                    A0F[3] = "7ZjVpxQcOo2BFfYt51qxyVC8jdlns0bj";
                    linearLayout2.addView(nn);
                } else {
                    throw new RuntimeException();
                }
            }
            r4.A0Z(r4.A02, false, i);
            String[] strArr3 = A0F;
            if (strArr3[0].charAt(22) == strArr3[6].charAt(22)) {
                A0F[3] = "nKvQ299cRrmi8SltfoUYXILZ1CbfqCSq";
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0D(S1 s1) {
        this.A03 = s1;
        this.A0A = this.A03.A0T();
        this.A00 = this.A03.A0H();
        this.A01 = this.A03.A0I();
        List<AnonymousClass19> A0a = this.A03.A0a();
        this.A0B = new ArrayList(A0a.size());
        for (int i = 0; i < A0a.size(); i++) {
            this.A0B.add(new C0720Ot(i, A0a.size(), A0a.get(i)));
        }
    }

    private void A0E(RH rh) {
        new C0470Er().A0I(this.A05);
        rh.A0b(new R7(this));
        this.A06 = new C0689Nn(this.A0C, super.A05.A01(), this.A0B.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0I);
        layoutParams.setMargins(0, A0J, 0, 0);
        this.A06.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1106bb
    public final boolean A0f() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, Bundle bundle, AnonymousClass50 r6) {
        A0a(r6);
        A0D((S1) intent.getSerializableExtra(A07(0, 14, 93)));
        A0C(r6.A0I().getResources().getConfiguration().orientation, bundle);
        r6.A0L(new R6(this, r6));
        int A032 = super.A09.A0N().A0E().A03();
        if (A032 > 0) {
            A0Y(A032);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void AB2(boolean z) {
        super.AB2(z);
        RH rh = this.A07;
        if (rh != null) {
            rh.A0S();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void ABR(boolean z) {
        super.ABR(z);
        this.A07.A0T();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
        RH rh = this.A07;
        if (rh != null) {
            rh.A0Z(bundle);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1106bb
    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        return 0;
    }

    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        ADT(bundle);
        A0B();
        A0C(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.facebook.ads.redexgen.X.MA, com.facebook.ads.redexgen.X.AbstractC1106bb
    public final void onDestroy() {
        super.onDestroy();
        if (!TextUtils.isEmpty(this.A0A)) {
            super.A0B.A8S(this.A0A, new C0678Nc().A04(this.A09).A03(this.A0D).A06());
        }
        A0B();
        this.A09.A0W();
        this.A09 = null;
        this.A08 = null;
        this.A0B = null;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0D.A07(motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
