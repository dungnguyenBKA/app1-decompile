package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;
import java.util.Arrays;
import java.util.HashMap;

public final class YV extends AbstractC0699Nx {
    @Nullable
    public static YV A0P = null;
    public static byte[] A0Q;
    public static String[] A0R;
    public static final int A0S = ((int) (C0632Lh.A01 * 4.0f));
    public static final int A0T = AnonymousClass2L.A01(-1, 77);
    public static final int A0U = ((int) (C0632Lh.A01 * 26.0f));
    public static final int A0V = ((int) (C0632Lh.A01 * 12.0f));
    public static final int A0W = ((int) (C0632Lh.A01 * 8.0f));
    public float A00;
    public int A01 = 0;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public View A06;
    public LinearLayout A07;
    public LinearLayout A08;
    public TextView A09;
    public AnonymousClass16 A0A;
    public NE A0B;
    public NF A0C;
    @Nullable
    public C1031aO A0D;
    public O1 A0E;
    public OA A0F;
    public boolean A0G = false;
    public boolean A0H;
    public boolean A0I = false;
    public boolean A0J = false;
    public boolean A0K = false;
    public final View A0L;
    public final AbstractC01270f A0M;
    public final JJ A0N;
    public final IB A0O;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(copyOfRange);
    }

    public static void A0K() {
        A0Q = new byte[]{36};
    }

    public static void A0L() {
        A0R = new String[]{"E7d9V", "HfiTPdnQE6JsOHdYoOA4lRNnbQ3", "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8", "hoWzaZbN7yXesQFa", "a3ZYa3", "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z", "MYJwByDzw5bCUSkxw6qgTJ7WJbI", "X3l5ZIwYV4"};
    }

    static {
        A0L();
        A0K();
    }

    public YV(O1 o1) {
        super(o1, true);
        this.A0E = o1;
        this.A0A = this.A0E.A04();
        this.A0N = new JJ(o1.A04().A0T(), o1.A06());
        this.A0O = this.A0E.A0A();
        IB ib = this.A0O;
        if (ib != null) {
            C0632Lh.A0N(ib);
        }
        this.A0L = this.A0E.A03();
        this.A0M = C01280g.A01(o1.A05(), o1.A06(), o1.A04().A0T(), Uri.parse(o1.A04().A0N().A0G().A04()), new HashMap(), false, true);
        C0697Nv.A00(o1.A05(), this, o1.A04().A0N().A0E().A07());
        setupLayoutConfiguration(false);
        A0G();
        A0C();
        postDelayed(new C0966Yi(this), 1000);
        A0J();
    }

    private void A0B() {
        int i;
        C0632Lh.A0M(this.A08);
        this.A08 = new LinearLayout(this.A0E.A05());
        C0632Lh.A0W(this.A08, getAdContextWrapper());
        if (this.A0G) {
            i = this.A02 / 4;
        } else {
            i = this.A02 / 5;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i);
        layoutParams.addRule(12);
        this.A08.setLayoutParams(layoutParams);
        addView(this.A08, 2);
    }

    private void A0C() {
        C0632Lh.A0M(this.A07);
        this.A07 = new LinearLayout(this.A0E.A05());
        this.A07.setOrientation(1);
        C0632Lh.A0N(this.A07);
        A0H();
        this.A07.setBackgroundColor(-1);
        addView(this.A07);
    }

    private void A0D() {
        View view = this.A0L;
        if (view != null) {
            C0632Lh.A0M(view);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC0699Nx.A09, AbstractC0699Nx.A09);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC0699Nx.A08, this.A05, AbstractC0699Nx.A08, AbstractC0699Nx.A08);
            addView(this.A0L, layoutParams);
        }
    }

    private void A0E() {
        IB ib = this.A0O;
        if (ib != null) {
            C0632Lh.A0M(ib);
            IB ib2 = this.A0O;
            int i = A0V;
            ib2.setPadding(i, i, i, i);
            this.A0O.A09(-1, A0T);
            this.A0O.setTranslationY(0.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0U);
            if (this.A0H) {
                layoutParams.addRule(8, this.A06.getId());
            } else {
                String[] strArr = A0R;
                if (strArr[3].length() != strArr[0].length()) {
                    String[] strArr2 = A0R;
                    strArr2[3] = "zjul6o0OG2Ezis8Q";
                    strArr2[0] = "LmcEL";
                    layoutParams.addRule(12);
                } else {
                    throw new RuntimeException();
                }
            }
            addView(this.A0O, layoutParams);
        }
    }

    private void A0F() {
        boolean z;
        M4 A082 = this.A0E.A08();
        if (A082 != null) {
            if (this.A0H || A082.A07()) {
                z = false;
            } else {
                z = true;
            }
            A082.setPageDetailsVisible(z);
        }
    }

    private void A0G() {
        int i;
        this.A06 = this.A0E.A02();
        C0632Lh.A0M(this.A06);
        C0632Lh.A0N(this.A06);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        addView(this.A06, 1, layoutParams);
        this.A09 = new TextView(this.A0E.A05());
        C0632Lh.A0N(this.A09);
        this.A09.setGravity(17);
        this.A09.setTextColor(getColors().A05(true));
        this.A09.setEllipsize(TextUtils.TruncateAt.END);
        this.A09.setMaxLines(2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        int i2 = A0W;
        int i3 = i2 / 2;
        if (this.A0O == null) {
            i = i2;
        } else {
            i = A0U;
        }
        layoutParams2.setMargins(i2, i3, i2, i);
        addView(this.A09, layoutParams2);
        C0632Lh.A0N(this.A09);
        O1 o1 = this.A0E;
        this.A0F = new OA(o1, o1.A04().A0N().A0G().A03(), getColors(), new C0965Yh(this));
        C0632Lh.A0J(AdError.NO_FILL_ERROR_CODE, this.A0F);
        addView(this.A0F);
        A0I();
        A0B();
    }

    /* access modifiers changed from: private */
    public void A0H() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (this.A03 * 4) / 5);
        if (A0c()) {
            layoutParams.setMargins(0, 0, 0, 0);
            layoutParams.addRule(12);
            LinearLayout linearLayout = this.A07;
            String[] strArr = A0R;
            if (strArr[7].length() != strArr[4].length()) {
                String[] strArr2 = A0R;
                strArr2[7] = "mOqhFUC5R4";
                strArr2[4] = "x2rQdK";
                linearLayout.setLayoutParams(layoutParams);
            } else {
                throw new RuntimeException();
            }
        } else {
            layoutParams.setMargins(0, this.A03 + 1, 0, 0);
        }
        this.A07.setTranslationY(0.0f);
        this.A07.setLayoutParams(layoutParams);
    }

    private void A0I() {
        int i;
        if (this.A0G) {
            i = this.A02 / 4;
        } else {
            i = this.A02 / 5;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, i);
        layoutParams.addRule(14);
        layoutParams.addRule(2, this.A09.getId());
        layoutParams.setMargins(0, 0, 0, 0);
        this.A0F.setLayoutParams(layoutParams);
    }

    private void A0J() {
        A0E();
        A0D();
        A0F();
    }

    /* access modifiers changed from: private */
    public void A0P(String str) {
        C1031aO aOVar;
        C0632Lh.A0M(this.A0D);
        C0961Yd yd = new C0961Yd(this);
        if (this.A0E.A05().A09() == null) {
            this.A0E.A05().A0A().A7g();
        }
        if (J5.A02(this.A0E.A05()) || this.A0E.A05().A09() == null) {
            aOVar = new C1031aO(this.A0E.A05(), yd);
        } else {
            aOVar = new C1031aO(this.A0E.A05(), this.A0E.A05().A09(), yd);
        }
        this.A0D = aOVar;
        setUpBrowserControls(this.A0D);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 0.9f;
        this.A07.addView(this.A0D, layoutParams);
        this.A0D.loadUrl(str);
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00ad  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x011f  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x012e  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0148  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void A0Q(boolean r17) {
        /*
        // Method dump skipped, instructions count: 331
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.YV.A0Q(boolean):void");
    }

    private void A0R(boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        setupLayoutConfiguration(z);
        C0632Lh.A0M(this.A06);
        this.A06 = this.A0E.A02();
        C0632Lh.A0N(this.A06);
        if (this.A0H) {
            layoutParams = new RelativeLayout.LayoutParams(-1, this.A03 / 5);
            layoutParams.addRule(14);
            layoutParams.addRule(10);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(13);
            A0C();
        }
        this.A06.setTranslationY(0.0f);
        String[] strArr = A0R;
        if (strArr[3].length() != strArr[0].length()) {
            String[] strArr2 = A0R;
            strArr2[7] = "FZuJEB1DgE";
            strArr2[4] = "ioAK5D";
            addView(this.A06, 1, layoutParams);
            A0B();
            A0I();
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0U() {
        super.A0U();
        A0P = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0V() {
        boolean z;
        M4 A082 = this.A0E.A08();
        if (A082 != null) {
            if (A0c() || A082.A07()) {
                z = false;
            } else {
                z = true;
            }
            A082.setPageDetailsVisible(z);
        }
        this.A0J = false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0W() {
        if (this.A0E.A08() != null) {
            M4 A082 = this.A0E.A08();
            String[] strArr = A0R;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0R;
            strArr2[3] = "MMiJw7TNUivh7iTB";
            strArr2[0] = "GEB80";
            A082.setPageDetailsVisible(false);
        }
        this.A0J = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0X() {
        this.A0K = false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Y() {
        this.A0K = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void A0Z(AnonymousClass19 r4, String str, double d, @Nullable Bundle bundle) {
        int i;
        super.A0Z(r4, str, d, bundle);
        String A052 = r4.A0F().A05();
        if (A052 == null || A052.trim().length() == 0) {
            C0632Lh.A0Q(this.A08, 8);
        } else {
            this.A09.setText(A052);
        }
        if (d > 0.0d) {
            this.A01 = (int) (((double) this.A04) / d);
        }
        if (this.A0G) {
            i = this.A02;
        } else {
            i = this.A01;
        }
        this.A01 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0a() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final boolean A0b(boolean z) {
        if (!A0c()) {
            return false;
        }
        A0Q(false);
        return true;
    }

    public final boolean A0c() {
        return this.A0H;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    @ToolbarActionView$ToolbarActionMode
    public int getCloseButtonStyle() {
        if (A0c()) {
            return 3;
        }
        if (this.A0K) {
            return 2;
        }
        if (this.A0J) {
            return 4;
        }
        return super.getCloseButtonStyle();
    }

    private String getUrl() {
        return this.A0E.A04().A0N().A0G().A04();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0699Nx
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A0R(A0c());
        A0J();
        setupLayoutConfiguration(A0c());
        A0H();
    }

    private void setUpBrowserControls(C1031aO aOVar) {
        C0632Lh.A0M(this.A0B);
        this.A0B = new NE(this.A0E.A05(), aOVar);
        aOVar.setBrowserNavigationListener(this.A0B.getBrowserNavigationListener());
        C0632Lh.A0N(this.A0B);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 0.1f;
        this.A0B.setListener(new C0964Yg(this));
        this.A0B.setOnTouchListener(new O5(this));
        this.A07.addView(this.A0B, layoutParams);
        C0632Lh.A0M(this.A0C);
        this.A0C = new NF(this.A0E.A05(), null, 16842872);
        this.A07.addView(this.A0C, new LinearLayout.LayoutParams(-1, A0S));
    }

    private void setupLayoutConfiguration(boolean z) {
        boolean z2;
        int toolbarHeight;
        int i = 0;
        if (getResources().getConfiguration().orientation == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.A0G = z2;
        if (this.A0E.A08() == null) {
            toolbarHeight = 0;
        } else {
            toolbarHeight = this.A0E.A08().getToolbarHeight();
        }
        this.A05 = toolbarHeight;
        this.A0H = z;
        this.A02 = Resources.getSystem().getDisplayMetrics().heightPixels;
        this.A04 = Resources.getSystem().getDisplayMetrics().widthPixels;
        int i2 = this.A02;
        if (!this.A0G) {
            i = this.A05;
        }
        this.A03 = i2 + i;
        this.A01 = this.A02;
    }
}
