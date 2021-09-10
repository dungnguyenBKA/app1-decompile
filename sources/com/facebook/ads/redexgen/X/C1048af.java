package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.af  reason: case insensitive filesystem */
public final class C1048af implements MA {
    public static byte[] A0B;
    public int A00;
    public C03177y A01;
    public final XJ A02;
    public final JC A03;
    public final M9 A04;
    public final MZ A05;
    public final PD A06;
    public final AbstractC0629Le A07 = new C03679y(this);
    public final L4 A08 = new C03659w(this);
    public final KW A09 = new C03689z(this);
    public final KQ A0A = new A1(this);

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 38);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{-49, -29, -30, -35, -34, -38, -49, -25, -17, -8, -11, -15, -6, 0, -32, -5, -9, -15, -6, -68, -70, -84, -107, -88, -69, -80, -67, -84, -118, -69, -88, -119, -68, -69, -69, -74, -75, -73, -86, -91, -90, -80, -118, -81, -75, -90, -77, -76, -75, -86, -75, -94, -83, -122, -73, -90, -81, -75, -99, -112, -117, -116, -106, 115, -106, -114, -114, -116, -103, -2, -15, -20, -19, -9, -43, -40, -52, 24, 11, 6, 7, 17, -11, 7, 7, 13, -10, 11, 15, 7, -66, -79, -84, -83, -73, -99, -102, -108};
    }

    public C1048af(XJ xj, MZ mz, JC jc, M9 m9) {
        this.A02 = xj;
        this.A03 = jc;
        this.A05 = mz;
        this.A06 = new PD(xj);
        this.A06.A0Z(new C03077i(xj));
        this.A06.getEventBus().A04(this.A0A, this.A09, this.A07, this.A08);
        this.A04 = m9;
        this.A06.setIsFullScreen(true);
        this.A06.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        m9.A3M(this.A06, layoutParams);
        MC mc = new MC(xj);
        mc.setOnClickListener(new MX(this));
        m9.A3M(mc, mc.getDefaultLayoutParams());
    }

    public final void A04(int i) {
        this.A06.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A06.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, Bundle bundle, AnonymousClass50 r13) {
        String stringExtra = intent.getStringExtra(A02(19, 18, 33));
        if (stringExtra != null && !stringExtra.isEmpty()) {
            C0718Or or = new C0718Or(this.A02, stringExtra);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (16.0f * C0632Lh.A01);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            or.setOnClickListener(new MY(this));
            this.A04.A3M(or, layoutParams);
        }
        this.A00 = intent.getIntExtra(A02(77, 13, 124), 0);
        this.A01 = new C03177y(this.A02, this.A03, this.A06, intent.getStringExtra(A02(8, 11, 102)), intent.getBundleExtra(A02(58, 11, 1)));
        this.A06.setVideoMPD(intent.getStringExtra(A02(69, 8, 98)));
        this.A06.setVideoURI(intent.getStringExtra(A02(90, 8, 34)));
        int i2 = this.A00;
        if (i2 > 0) {
            this.A06.A0V(i2);
        }
        if (intent.getBooleanExtra(A02(0, 8, 72), false)) {
            this.A06.A0Y(PO.A05, 17);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
        this.A04.A3u(A02(37, 21, 27), new C0611Kj());
        this.A06.A0T();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
        this.A04.A3u(A02(37, 21, 27), new KX());
        if (!this.A06.A0g()) {
            this.A06.A0Y(PO.A05, 18);
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void onDestroy() {
        this.A04.A3u(A02(37, 21, 27), new K8(this.A00, this.A06.getCurrentPositionInMillis()));
        this.A01.A0e(this.A06.getCurrentPositionInMillis());
        this.A06.A0W(1);
        this.A06.A0S();
    }
}
