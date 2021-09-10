package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.9g  reason: invalid class name and case insensitive filesystem */
public abstract class AbstractC03499g extends YM {
    public static final int A0I = ((int) (C0632Lh.A01 * 6.0f));
    public static final int A0J = ((int) (C0632Lh.A01 * 1.0f));
    public static final int A0K = ((int) (C0632Lh.A01 * 4.0f));
    public RelativeLayout A00;
    public MU A01;
    public OC A02;
    public RH A03;
    public C0722Ov A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final Paint A08;
    public final Path A09 = new Path();
    public final RectF A0A = new RectF();
    public final XJ A0B;
    public final AbstractC0629Le A0C = new C03539k(this);
    public final KW A0D = new C03519i(this);
    public final KQ A0E = new C03529j(this);
    public final KL A0F = new C03509h(this);
    public final K1 A0G = new C03549l(this);
    public final String A0H;

    public abstract void A0h(XJ xj);

    public AbstractC03499g(O1 o1, boolean z, String str, RH rh) {
        super(o1, z);
        this.A03 = rh;
        this.A0H = str;
        this.A0B = o1.A05();
        setGravity(17);
        int i = A0J;
        setPadding(i, 0, i, i);
        C0632Lh.A0P(this, 0);
        setUpView(this.A0B);
        this.A08 = new Paint();
        this.A08.setColor(-16777216);
        this.A08.setStyle(Paint.Style.FILL);
        this.A08.setAlpha(16);
        this.A08.setAntiAlias(true);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    /* access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public void A01() {
        if (this.A02 != null) {
            if ((A0g() && this.A07) || (!A0g() && this.A06)) {
                this.A02.A9R();
            }
        }
    }

    private void A02(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        C0632Lh.A0N(view);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0c() {
        if (A0g()) {
            this.A04.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0d() {
        if (A0g()) {
            A0e();
            this.A04.A05(PO.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final void A0e() {
        float volume = this.A03.A0R().getVolume();
        if (A0g() && volume != this.A04.getVolume()) {
            this.A04.setVolume(volume);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final boolean A0f() {
        return A0g() && this.A04.A06();
    }

    @Override // com.facebook.ads.redexgen.X.YM
    public final boolean A0g() {
        return this.A05;
    }

    public final void A0i(Map<String, String> map) {
        this.A04.A02();
        if (A0g()) {
            this.A04.A04(getAdEventManager(), this.A0H, map);
        }
    }

    public final RelativeLayout getMediaContainer() {
        return this.A00;
    }

    public final C0722Ov getVideoView() {
        return this.A04;
    }

    public final void onDraw(Canvas canvas) {
        this.A09.reset();
        this.A0A.set(0.0f, 0.0f, (float) getWidth(), (float) getHeight());
        Path path = this.A09;
        RectF rectF = this.A0A;
        int i = A0I;
        path.addRoundRect(rectF, (float) i, (float) i, Path.Direction.CW);
        canvas.drawPath(this.A09, this.A08);
        this.A0A.set((float) A0J, 0.0f, (float) (getWidth() - A0J), (float) (getHeight() - A0J));
        Path path2 = this.A09;
        RectF rectF2 = this.A0A;
        int i2 = A0K;
        path2.addRoundRect(rectF2, (float) i2, (float) i2, Path.Direction.CW);
        canvas.clipPath(this.A09);
        super.onDraw(canvas);
    }

    public void setAdTitleAndDescription(String str, String str2) {
        getTitleDescContainer().A02(str, str2, null, true, false);
    }

    public void setCTAInfo(AnonymousClass1J r3, Map<String, String> map) {
        getCtaButton().setCta(r3, this.A0H, map);
    }

    public void setImageUrl(String str) {
        this.A01.setVisibility(0);
        this.A04.setVisibility(8);
        new AsyncTaskC1017aA(this.A01, this.A0B).A05().A07(new YJ(this, null)).A08(str);
    }

    public void setIsVideo(boolean z) {
        this.A05 = z;
    }

    public void setOnAssetsLoadedListener(OC oc) {
        this.A02 = oc;
    }

    public void setUpImageView(XJ xj) {
        this.A01 = new MU(xj);
        A02(this.A01);
    }

    public void setUpMediaContainer(XJ xj) {
        this.A00 = new RelativeLayout(xj);
        A02(this.A00);
    }

    public void setUpVideoView(XJ xj) {
        this.A04 = new C0722Ov(xj, new JJ(this.A0H, getAdEventManager()));
        A02(this.A04);
    }

    private void setUpView(XJ xj) {
        setUpImageView(xj);
        setUpVideoView(xj);
        setUpMediaContainer(xj);
        this.A00.addView(this.A01);
        this.A00.addView(this.A04);
        A0h(xj);
    }

    public void setVideoPlaceholderUrl(String str) {
        this.A04.setPlaceholderUrl(str);
    }

    public void setVideoUrl(String str) {
        this.A01.setVisibility(8);
        this.A04.setVisibility(0);
        this.A04.setVideoURI(str);
        this.A04.A03(this.A0G);
        this.A04.A03(this.A0C);
        this.A04.A03(this.A0E);
        this.A04.A03(this.A0D);
        this.A04.A03(this.A0F);
    }
}
