package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

public class c9 extends QD {
    public static String[] A04;
    public final /* synthetic */ View A00;
    public final /* synthetic */ C0794Rp A01;
    public final /* synthetic */ C1143cD A02;
    public final /* synthetic */ boolean A03;

    static {
        A00();
    }

    public static void A00() {
        A04 = new String[]{"oIkrHn4xYgACG98mudVump3sfyxK5ddV", "YFjKaJHcUlqTZUCuvViCLkc0DiVUGWHa", "SJXa56PpW3wX5cacZdRzDwGkBBUKSz1I", "ckV9cVhgNLsBh0DLAq3Qoeikc521Bhs9", "5hqMSu4yQZZoRLncoc9FwnveLVEwrx", "CzQXOYkU59GlqnhcU7DFTywN9jdxtP", "Yo0Mb", "Nr5gBmQWcCkTfFNncD5Vfty4J6ngq0ol"};
    }

    public c9(C1143cD cDVar, View view, boolean z, C0794Rp rp) {
        this.A02 = cDVar;
        this.A00 = view;
        this.A03 = z;
        this.A01 = rp;
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A02() {
        this.A02.A0c.A06();
    }

    @Override // com.facebook.ads.redexgen.X.QD
    public final void A03() {
        this.A02.A0c.A0B();
    }

    /* JADX INFO: Multiple debug info for r4v0 'this'  com.facebook.ads.redexgen.X.c9: [D('iv' android.widget.ImageView), D('videoView' android.view.View)] */
    @Override // com.facebook.ads.redexgen.X.QD
    public final void A04() {
        this.A02.A0c.A0C();
        if (J4.A1J(this.A02.A11())) {
            View view = this.A00;
            if (view instanceof AdNativeComponentView) {
                View adContentsView = ((AdNativeComponentView) view).getAdContentsView();
                if ((adContentsView instanceof PM) && !((PM) adContentsView).A04(1)) {
                    this.A02.A0P.A0U();
                    C0586Ji ji = this.A02.A0c;
                    if (A04[3].length() != 15) {
                        A04[6] = "bPUaT";
                        ji.A08();
                        return;
                    }
                    throw new RuntimeException();
                }
            }
        }
        if (J4.A1K(this.A02.A11())) {
            View view2 = this.A00;
            if (view2 instanceof AdNativeComponentView) {
                View adContentsView2 = ((AdNativeComponentView) view2).getAdContentsView();
                if ((adContentsView2 instanceof PM) && !((PM) adContentsView2).A03()) {
                    this.A02.A0P.A0U();
                    this.A02.A0c.A09();
                    return;
                }
            }
        }
        if (this.A03) {
            ImageView imageView = (ImageView) this.A00;
            Drawable loadedNativeBannerIconDrawable = this.A02.A01;
            if (loadedNativeBannerIconDrawable != null) {
                C1143cD.A0c(loadedNativeBannerIconDrawable, imageView);
            } else {
                this.A02.A0P.A0U();
                this.A02.A0c.A07();
                return;
            }
        }
        this.A02.A0c.A0D(this.A02.A0a, this.A01.A0T());
        this.A02.A0P.A0W();
        if (!(this.A02.A0T == null || this.A02.A0T.get() == null)) {
            ((QD) this.A02.A0T.get()).A04();
        }
        if (!this.A02.A0d.A08()) {
            if (!J4.A19(this.A02.A0a)) {
                this.A02.A0Y();
            }
            if (this.A02.A08 != null && this.A02.A03 != null && this.A02.A05 != null) {
                if (J4.A19(this.A02.A0a)) {
                    this.A02.A0Y();
                }
                this.A02.A08.A09(this.A02.A03);
                this.A02.A08.A08(this.A02.A05);
                this.A02.A08.A0C(this.A02.A0H);
                this.A02.A08.A0F(this.A02.A0U);
                this.A02.A08.A0J(this.A02.A0X);
                this.A02.A08.A0I(this.A02.A0W);
                this.A02.A08.A0G(this.A02.A0p());
                this.A02.A08.A0A(this.A02.A07);
                this.A02.A08.A0H(this.A02.A0V);
                this.A02.A08.A0B(C0661Mk.A00(this.A02.A06));
                this.A02.A08.A0D(this.A02.A0Q);
                this.A02.A08.A0K(this.A03);
                this.A02.A08.A03();
                return;
            }
            return;
        }
        this.A02.A0c.A04();
    }
}
