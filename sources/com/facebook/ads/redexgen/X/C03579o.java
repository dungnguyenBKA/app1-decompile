package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.checkerframework.checker.nullness.qual.Nullable;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.9o  reason: invalid class name and case insensitive filesystem */
public class C03579o extends YM {
    public static String[] A0J;
    public static final int A0K = ((int) (C0632Lh.A01 * 9.0f));
    public static final int A0L = ((int) (C0632Lh.A01 * 0.0f));
    public static final int A0M = ((int) (C0632Lh.A01 * 9.0f));
    @Nullable
    public MU A00;
    @Nullable
    public OC A01;
    @Nullable
    public C0722Ov A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    @Nullable
    public RelativeLayout A06;
    public RH A07;
    public final XJ A08;
    public final AbstractC0629Le A09 = new C03619s(this);
    public final KW A0A = new C03599q(this);
    public final KQ A0B = new C03609r(this);
    public final KL A0C = new C03589p(this);
    public final K1 A0D = new C03629t(this);
    public final String A0E;
    public final Paint A0F;
    public final Path A0G = new Path();
    public final RectF A0H = new RectF();
    public final O1 A0I;

    public static void A03() {
        A0J = new String[]{"dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS", "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk", "3nDu3mubCrSGPsHb", "SUxuavEQD34fwSKO8hxc7w", "hmAyL1Y1BI3zOyZEMNvfuG", "1nycCDmAbpyAo4RWRzHJ2ixoeiRT", "fh6VcnyoMwgZMcb2oBIx6", "bmD"};
    }

    static {
        A03();
    }

    public C03579o(O1 o1, boolean z, String str, RH rh) {
        super(o1, z);
        this.A0I = o1;
        this.A07 = rh;
        this.A0E = str;
        this.A08 = o1.A05();
        setGravity(17);
        int i = A0L;
        setPadding(i, 0, i, i);
        C0632Lh.A0P(this, 0);
        setUpView(this.A08);
        this.A0F = new Paint();
        this.A0F.setColor(-16777216);
        this.A0F.setStyle(Paint.Style.FILL);
        this.A0F.setAlpha(16);
        this.A0F.setAntiAlias(true);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    /* access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void A00() {
        if (this.A0I.A0A() != null && this.A02 != null) {
            this.A0I.A0A().A8K(this.A02.getSimpleVideoView());
        }
    }

    /* access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void A01() {
        if (this.A0I.A0A() != null) {
            this.A0I.A0A().A07();
            if (this.A02 != null) {
                this.A0I.A0A().AEO(this.A02.getSimpleVideoView());
            }
        }
    }

    /* access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void A02() {
        if (this.A01 != null) {
            if (!A0g() || !this.A05) {
                boolean A0g = A0g();
                String[] strArr = A0J;
                if (strArr[3].length() != strArr[4].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0J;
                strArr2[3] = "whWH7G9NZGoicUCMK8TGye";
                strArr2[4] = "jQqQ2QRGHP0rmsCqitHuog";
                if (A0g || !this.A04) {
                    return;
                }
            }
            this.A01.A9R();
        }
    }

    public static void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        C0632Lh.A0N(view);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0c() {
        C0722Ov ov;
        if (A0g() && (ov = this.A02) != null) {
            ov.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0d() {
        if (A0g()) {
            A0e();
            C0722Ov ov = this.A02;
            if (ov != null) {
                ov.A05(PO.A03);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0e() {
        C0722Ov ov;
        float volume = this.A07.A0R().getVolume();
        if (A0g() && (ov = this.A02) != null && volume != ov.getVolume()) {
            this.A02.setVolume(volume);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final boolean A0f() {
        C0722Ov ov;
        return A0g() && (ov = this.A02) != null && ov.A06();
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final boolean A0g() {
        return this.A03;
    }

    public final void A0h(Map<String, String> map) {
        C0722Ov ov = this.A02;
        if (ov != null) {
            ov.A02();
            if (A0g()) {
                this.A02.A04(getAdEventManager(), this.A0E, map);
            }
        }
    }

    @Nullable
    public final C0722Ov getVideoView() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public final void onDraw(Canvas canvas) {
        this.A0G.reset();
        this.A0H.set(0.0f, 0.0f, (float) getWidth(), (float) getHeight());
        int i = 0;
        boolean z = true;
        if (getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        if (z) {
            i = A0K;
        }
        this.A0G.addRoundRect(this.A0H, (float) i, (float) i, Path.Direction.CW);
        canvas.drawPath(this.A0G, this.A0F);
        this.A0H.set((float) A0L, 0.0f, (float) (getWidth() - A0L), (float) (getHeight() - A0L));
        if (z) {
            i = A0M;
        }
        this.A0G.addRoundRect(this.A0H, (float) i, (float) i, Path.Direction.CW);
        canvas.clipPath(this.A0G);
        super.onDraw(canvas);
    }

    public void setImageUrl(String str) {
        MU mu = this.A00;
        if (mu != null) {
            mu.setVisibility(0);
            new AsyncTaskC1017aA(this.A00, this.A08).A05().A07(new ZR(this, null)).A08(str);
        }
        C0722Ov ov = this.A02;
        if (ov != null) {
            ov.setVisibility(8);
        }
    }

    public void setIsVideo(boolean z) {
        this.A03 = z;
    }

    public void setOnAssetsLoadedListener(OC oc) {
        this.A01 = oc;
    }

    public void setUpImageView(XJ xj) {
        this.A00 = new MU(xj);
        A04(this.A00);
    }

    public void setUpMediaContainer(XJ xj) {
        this.A06 = new RelativeLayout(xj);
        A04(this.A06);
        MU mu = this.A00;
        if (mu != null) {
            this.A06.addView(mu);
        }
        C0722Ov ov = this.A02;
        if (ov != null) {
            this.A06.addView(ov);
        }
        addView(this.A06);
    }

    public void setUpVideoView(XJ xj) {
        this.A02 = new C0722Ov(xj, new JJ(this.A0E, getAdEventManager()));
        A04(this.A02);
    }

    private void setUpView(XJ xj) {
        setUpImageView(xj);
        setUpVideoView(xj);
        setUpMediaContainer(xj);
    }

    public void setVideoPlaceholderUrl(String str) {
        C0722Ov ov = this.A02;
        if (ov != null) {
            ov.setPlaceholderUrl(str);
        }
    }

    public void setVideoUrl(String str) {
        MU mu = this.A00;
        if (mu != null) {
            if (A0J[5].length() != 10) {
                A0J[2] = "s54OOOYMcUndmM7F";
                mu.setVisibility(8);
            } else {
                throw new RuntimeException();
            }
        }
        C0722Ov ov = this.A02;
        if (ov != null) {
            ov.setVisibility(0);
            this.A02.setVideoURI(str);
            this.A02.A03(this.A0D);
            this.A02.A03(this.A09);
            this.A02.A03(this.A0B);
            this.A02.A03(this.A0A);
            this.A02.A03(this.A0C);
        }
    }
}
