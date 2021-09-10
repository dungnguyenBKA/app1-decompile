package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.Nx  reason: case insensitive filesystem */
public abstract class AbstractC0699Nx extends RelativeLayout {
    public static final int A08 = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A09 = ((int) (C0632Lh.A01 * 28.0f));
    public AnonymousClass1I A00;
    public boolean A01 = false;
    public boolean A02;
    public final XJ A03;
    public final JC A04;
    public final View$OnClickListenerC1014a7 A05;
    public final C0696Nu A06;
    public final O1 A07;

    public abstract boolean A0a();

    public AbstractC0699Nx(O1 o1, boolean z) {
        super(o1.A05());
        AnonymousClass1I A002;
        this.A07 = o1;
        this.A03 = o1.A05();
        this.A04 = o1.A06();
        if (o1.A00() == 1) {
            A002 = o1.A04().A0M().A01();
        } else {
            A002 = o1.A04().A0M().A00();
        }
        this.A00 = A002;
        this.A02 = z;
        this.A05 = new View$OnClickListenerC1014a7(o1.A05(), o1.A04().A0S(), this.A00, o1.A06(), o1.A09(), o1.A0B(), o1.A07());
        this.A05.setRoundedCornersEnabled(A00());
        this.A05.setViewShowsOverMedia(A0A());
        C0632Lh.A0J(AdError.NO_FILL_ERROR_CODE, this.A05);
        this.A06 = new C0696Nu(this.A03, this.A00, this.A02, A01(), A02());
        C0632Lh.A0N(this.A06);
        if (J4.A1S(this.A03)) {
            this.A06.setDescriptionVisibility(8);
        }
    }

    public boolean A00() {
        return true;
    }

    public boolean A01() {
        return true;
    }

    public boolean A02() {
        return true;
    }

    public boolean A0A() {
        return true;
    }

    public void A0I(C03167w r2) {
        this.A01 = true;
    }

    public void A0J(AnonymousClass7s r1) {
    }

    public void A0U() {
    }

    public void A0V() {
    }

    public void A0W() {
    }

    public void A0X() {
    }

    public void A0Y() {
    }

    public void A0Z(AnonymousClass19 r10, String str, double d, @Nullable Bundle bundle) {
        boolean z;
        C0696Nu nu = this.A06;
        String A052 = r10.A0F().A05();
        String A012 = r10.A0F().A01();
        if (A0a() || d <= 0.0d || d >= 1.0d) {
            z = false;
        } else {
            z = true;
        }
        nu.A02(A052, A012, null, false, z);
        this.A05.setCta(r10.A0G(), str, new HashMap());
    }

    public boolean A0b(boolean z) {
        return false;
    }

    public XJ getAdContextWrapper() {
        return this.A03;
    }

    public JC getAdEventManager() {
        return this.A04;
    }

    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        return 0;
    }

    public AnonymousClass1I getColors() {
        return this.A00;
    }

    public View$OnClickListenerC1014a7 getCtaButton() {
        return this.A05;
    }

    public C0696Nu getTitleDescContainer() {
        return this.A06;
    }

    public void onConfigurationChanged(Configuration configuration) {
        AnonymousClass1I A002;
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 1) {
            A002 = this.A07.A04().A0M().A01();
        } else {
            A002 = this.A07.A04().A0M().A00();
        }
        this.A00 = A002;
        this.A05.setViewShowsOverMedia(A0A());
        this.A05.setUpButtonColors(this.A00);
        this.A06.A01(this.A00, this.A02);
    }
}
