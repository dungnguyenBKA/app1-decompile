package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.vungle.warren.error.VungleException;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"ViewConstructor"})
@TargetApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.b6  reason: case insensitive filesystem */
public final class C1075b6 extends RelativeLayout implements MA {
    public static byte[] A0Q;
    public static String[] A0R;
    public static final int A0S = ((int) (C0632Lh.A01 * 10.0f));
    public static final int A0T = ((int) (C0632Lh.A01 * 8.0f));
    public static final int A0U = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A0V = ((int) (C0632Lh.A01 * 48.0f));
    public static final int A0W = ((int) (C0632Lh.A01 * 16.0f));
    public static final int A0X = AnonymousClass2L.A01(-1, 77);
    public static final int A0Y = ((int) (C0632Lh.A01 * 14.0f));
    public static final int A0Z = ((int) (C0632Lh.A01 * 64.0f));
    public static final int A0a = ((int) (C0632Lh.A01 * 12.0f));
    public static final RelativeLayout.LayoutParams A0b = new RelativeLayout.LayoutParams(-1, -1);
    @Nullable
    public View A00;
    @Nullable
    public RelativeLayout A01;
    @Nullable
    public RelativeLayout A02;
    public Toast A03;
    @Nullable
    public AnonymousClass50 A04;
    @Nullable
    public View$OnClickListenerC1014a7 A05;
    public P4 A06;
    public boolean A07;
    public boolean A08;
    public final AnonymousClass16 A09;
    public final AnonymousClass1U A0A;
    public final AbstractC02494y A0B = new C1102bX(this);
    public final XJ A0C;
    public final JC A0D;
    public final JJ A0E;
    public final L6 A0F;
    public final LV A0G;
    public final M9 A0H;
    public final AbstractC0655Me A0I;
    public final P9 A0J;
    public final PA A0K;
    public final AtomicBoolean A0L = new AtomicBoolean(false);
    public final AtomicBoolean A0M = new AtomicBoolean(false);
    public final boolean A0N;
    public final boolean A0O;
    @VisibleForTesting
    public final M4 A0P;

    public static String A0C(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 40);
        }
        return new String(copyOfRange);
    }

    public static void A0M() {
        A0Q = new byte[]{-110, -97, -94, -70, -84, -86, -70, -92, 4, 13, 10, 4, 12, 0, 16, 19, 10, 8, 10, 15, -71, -66, -60, -75, -62, -61, -60, -71, -60, -71, -79, -68, -6, -19, 0, -11, 2, -15, -21, -17, -8, -11, -17, -9, -53, -57, -68, -66, -64, -56, -64, -55, -49, -41, -54, -36, -58, -41, -55, -54, -55, -60, -37, -50, -55, -54, -44, -60, -78, -81, -61, -74, -78, -60, -84, -80, -71, -74, -80, -72};
    }

    public static void A0N() {
        A0R = new String[]{"57rzzR6raHrat8cHk0n2c9utIvWN6OL8", "vZo4DQACnHxpUIABCEPhLIrXR", "3pKkUgRnbq5D8", "3oPHUcYdGBLGT6sjvwgTS6nCZs8dHXKK", "yMOWmEDq6oq3Yf8aoY", "BRjJ0geTmUVj6Aeo1VqVThKYcHpwhF7A", "bCnfD5Zsza6fNT9UI62TNCVdI9Gt63Qd", "0XbQU4AacrxlEwxF12eBigHvJ8"};
    }

    static {
        A0N();
        A0M();
    }

    public C1075b6(XJ xj, JC jc, M9 m9, AnonymousClass16 r8, @Nullable String str, AbstractC0655Me me) {
        super(xj);
        this.A0C = xj;
        this.A0H = m9;
        this.A0D = jc;
        this.A09 = r8;
        this.A0A = r8.A0N().A0E().A06();
        this.A0E = new JJ(this.A09.A0T(), this.A0D);
        this.A0I = me;
        this.A0K = new PA(xj, this.A0I, str, this.A0H);
        this.A0M.set(!this.A0A.A0J());
        this.A0F = new L6(this.A0A.A08(), new C1093bO(this, null));
        this.A0O = J4.A1p(this.A0C);
        this.A0N = J4.A0i(this.A0C);
        this.A0P = A05();
        this.A0J = new P9(this.A0C, this.A0D, this.A09);
        if (this.A0O) {
            C0697Nv.A00(xj, this, r8.A0N().A0E().A07());
        } else {
            C0632Lh.A0P(this, -14473425);
        }
        this.A0G = new LV(this);
        this.A0G.A05(LU.A03);
    }

    private M4 A05() {
        FullScreenAdToolbar fullScreenAdToolbar = new FullScreenAdToolbar(this.A0C, this.A0H, this.A0E, 0, this.A09.A0F());
        fullScreenAdToolbar.A05(this.A09.A0M().A01(), true);
        fullScreenAdToolbar.setPageDetailsVisible(false);
        fullScreenAdToolbar.setPageDetails(this.A09.A0Q(), this.A09.A0T(), this.A0A.A08(), this.A09.A0R());
        fullScreenAdToolbar.setToolbarListener(new C1096bR(this));
        return fullScreenAdToolbar;
    }

    @Nullable
    private View$OnClickListenerC1014a7 A08() {
        P4 p4 = this.A06;
        if (p4 == null || p4.getViewabilityChecker() == null || this.A06.getTouchDataRecorder() == null) {
            return null;
        }
        View$OnClickListenerC1014a7 a7Var = new View$OnClickListenerC1014a7(this.A0C, this.A0I.A5w(), this.A09.A0M().A01(), this.A0D, this.A0H, this.A06.getViewabilityChecker(), this.A06.getTouchDataRecorder());
        C0632Lh.A0N(a7Var);
        a7Var.setText(this.A09.A0N().A0G().A03());
        a7Var.setTextSize(14.0f);
        a7Var.setIncludeFontPadding(false);
        int i = A0S;
        a7Var.setPadding(i, i, i, i);
        if (!this.A0O) {
            C0632Lh.A0Q(a7Var, 8);
        }
        a7Var.setOnClickListener(new MK(this));
        return a7Var;
    }

    private C0696Nu A0A() {
        C0696Nu nu = new C0696Nu(this.A0C, this.A09.A0M().A01(), true, 16, 14, 0);
        nu.A02(this.A09.A0N().A0F().A06(), this.A09.A0N().A0F().A05(), null, false, true);
        TextView descriptionTextView = nu.getDescriptionTextView();
        descriptionTextView.setAlpha(0.8f);
        descriptionTextView.setMaxLines(1);
        descriptionTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView titleTextView = nu.getTitleTextView();
        titleTextView.setMaxLines(1);
        titleTextView.setEllipsize(TextUtils.TruncateAt.END);
        return nu;
    }

    private void A0F() {
        int i = A0V;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        C0690No no = new C0690No(this.A0C);
        C0632Lh.A0P(no, 0);
        C0632Lh.A0N(no);
        AsyncTaskC1017aA aAVar = new AsyncTaskC1017aA(no, this.A0C);
        int i2 = A0V;
        aAVar.A06(i2, i2).A08(this.A09.A0Q().A01());
        TextView ratingCountView = new TextView(this.A0C);
        C0632Lh.A0N(ratingCountView);
        ratingCountView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ratingCountView.setTextColor(this.A09.A0M().A01().A06(true));
        ratingCountView.setText(this.A09.A0N().A0F().A06());
        ratingCountView.setTextSize(16.0f);
        ratingCountView.setMaxLines(1);
        ratingCountView.setEllipsize(TextUtils.TruncateAt.END);
        C0692Nq nq = new C0692Nq(this.A0C, A0Y, 5, A0X, -1);
        nq.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        TextView textView = new TextView(this.A0C);
        textView.setTextColor(this.A09.A0M().A01().A06(true));
        textView.setGravity(16);
        textView.setIncludeFontPadding(false);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams3.leftMargin = A0T;
        LinearLayout linearLayout = new LinearLayout(this.A0C);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, A0W);
        layoutParams4.topMargin = A0T / 2;
        layoutParams4.addRule(3, ratingCountView.getId());
        linearLayout.addView(nq, layoutParams2);
        linearLayout.addView(textView, layoutParams3);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = A0T;
        layoutParams5.addRule(1, no.getId());
        layoutParams5.addRule(15);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.addView(linearLayout, layoutParams4);
        relativeLayout.addView(ratingCountView);
        RelativeLayout titleAndRatingContainer = this.A02;
        if (titleAndRatingContainer != null) {
            titleAndRatingContainer.removeAllViews();
            RelativeLayout relativeLayout2 = this.A02;
            if (A0R[4].length() != 18) {
                throw new RuntimeException();
            }
            A0R[4] = "bsFsSO04IJ4eZVQxRT";
            relativeLayout2.addView(relativeLayout, layoutParams5);
            this.A02.addView(no, layoutParams);
        }
        if (TextUtils.isEmpty(this.A09.A0N().A0F().A03())) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        nq.setRating(Float.parseFloat(this.A09.A0N().A0F().A03()));
        if (this.A09.A0N().A0F().A02() != null) {
            textView.setText(A0C(0, 1, 66) + NumberFormat.getNumberInstance().format((long) Integer.parseInt(this.A09.A0N().A0F().A02())) + A0C(1, 1, 78));
        }
    }

    private void A0G() {
        if (this.A0A.A0J()) {
            A0I();
        } else {
            A0J();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.A0G.A05(LU.A04);
        }
    }

    /* access modifiers changed from: private */
    public void A0H() {
        this.A08 = true;
        if (this.A09.A0N().A0M()) {
            this.A0K.A06();
            this.A0H.A3u(this.A0I.A5T(), new C03167w(0, 0));
            if (this.A07) {
                boolean z = this.A0O;
                if (A0R[4].length() != 18) {
                    throw new RuntimeException();
                }
                String[] strArr = A0R;
                strArr[1] = "I0JtICznoezMzS0InHXj65Cim";
                strArr[2] = "YxqOCBuXvZfwM";
                if (!z) {
                    C0685Nj.A03(this.A0C, this.A06.getViewabilityChecker(), this.A06.getTouchDataRecorder(), this.A0D, this.A09.A0N().A0G(), this.A09.A0T());
                }
            }
        }
    }

    private void A0I() {
        C0711Ok A0B2 = new C0710Oi(this.A0C, this.A09.A0N().A0F(), this.A09.A0Q()).A08(this.A09.A0M().A01()).A0A(this.A0A.A0H()).A09(this.A0A.A0E()).A07(AdError.SERVER_ERROR_CODE).A0B();
        JL.A04(A0B2, this.A0E, JI.A0U);
        addView(A0B2, A0b);
        A0B2.A04(new C1099bU(this));
    }

    /* access modifiers changed from: private */
    public void A0J() {
        C0632Lh.A0Y(this);
        this.A06.A0C();
        this.A05 = A08();
        this.A01 = new RelativeLayout(getContext());
        C0632Lh.A0N(this.A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int i = A0U;
        int i2 = A0a;
        layoutParams.setMargins(i, i2, i, i2);
        layoutParams.addRule(12);
        this.A02 = new RelativeLayout(getContext());
        C0632Lh.A0N(this.A02);
        if (this.A0N) {
            A0F();
        } else {
            this.A02.addView(A0A(), new RelativeLayout.LayoutParams(-2, -2));
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A0U, 0);
        this.A01.addView(this.A02, layoutParams2);
        View$OnClickListenerC1014a7 a7Var = this.A05;
        if (a7Var != null) {
            layoutParams2.addRule(0, a7Var.getId());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(11);
            layoutParams3.addRule(6, this.A02.getId());
            layoutParams3.addRule(8, this.A02.getId());
            this.A01.addView(this.A05, layoutParams3);
        }
        C0632Lh.A0N(this.A0P);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(10);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        int i3 = A0U;
        layoutParams5.setMargins(i3, 0, i3, 0);
        layoutParams5.addRule(3, this.A0P.getId());
        layoutParams5.addRule(2, this.A01.getId());
        addView(this.A0P, layoutParams4);
        addView(this.A06, layoutParams5);
        addView(this.A01, layoutParams);
        this.A0F.A08();
    }

    /* access modifiers changed from: private */
    public void A0K() {
        new JJ(this.A09.A0T(), this.A0D).A03(JI.A0n, null);
        this.A0L.set(true);
        C0632Lh.A0Y(this);
        C0632Lh.A0K(this.A06);
        C0632Lh.A0e(this.A06, this.A00);
        C0632Lh.A0O(this.A0P);
        Pair<P8, View> A032 = this.A0J.A03(this.A05);
        this.A00 = (View) A032.second;
        int i = ML.A00[((P8) A032.first).ordinal()];
        if (i == 1) {
            RelativeLayout.LayoutParams screenshotParams = new RelativeLayout.LayoutParams(-1, -1);
            screenshotParams.setMargins(0, this.A0P.getToolbarHeight(), 0, 0);
            RelativeLayout relativeLayout = this.A01;
            if (relativeLayout != null) {
                screenshotParams.addRule(2, relativeLayout.getId());
            }
            addView(this.A00, screenshotParams);
        } else if (i == 2) {
            RelativeLayout relativeLayout2 = this.A01;
            if (relativeLayout2 != null) {
                C0632Lh.A0e(relativeLayout2);
            }
            addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    /* access modifiers changed from: private */
    public void A0L() {
        Toast toast = this.A03;
        if (toast == null || toast.getView().getWindowVisibility() != 0) {
            this.A03 = Toast.makeText(getContext(), this.A0A.A0D(), 1);
            A0O((int) this.A0F.A04());
            this.A03.show();
        }
    }

    /* access modifiers changed from: private */
    public void A0O(int i) {
        C0632Lh.A0d(this.A03, this.A0A.A0D().replace(A0C(2, 6, 31), String.valueOf(i)), 49, 0, A0Z);
    }

    /* access modifiers changed from: private */
    public void A0V(boolean z) {
        String A0C2;
        boolean z2;
        HashMap hashMap = new HashMap();
        if (z) {
            A0C2 = A0C(67, 13, 37);
        } else {
            A0C2 = A0C(32, 12, 100);
        }
        hashMap.put(A0C(8, 12, 121), A0C2);
        C0685Nj nj = new C0685Nj(this.A0C, this.A0I.A5w(), this.A06.getViewabilityChecker(), this.A06.getTouchDataRecorder(), this.A0D, this.A0H);
        if (this.A0O) {
            nj.A08(this.A09.A0T(), this.A09.A0N().A0G().A04(), hashMap);
            return;
        }
        boolean z3 = !this.A0F.A05();
        if (!z3) {
            z2 = true;
        } else {
            z2 = false;
        }
        nj.A0A(z2);
        nj.A08(this.A09.A0T(), this.A09.A0N().A0G().A04(), hashMap);
        if (z3) {
            new Handler(Looper.getMainLooper()).post(new C1094bP(this));
        }
        this.A07 = true;
    }

    /* access modifiers changed from: private */
    public boolean A0W() {
        if (!this.A09.A0X().equals(A0C(53, 14, 61))) {
            if (this.A09.A0X().equals(A0C(20, 12, 40))) {
                AnonymousClass16 r3 = this.A09;
                if (A0R[4].length() != 18) {
                    throw new RuntimeException();
                }
                A0R[0] = "r5y7OBqhAYVA47bIfl4AlIWKO2XfiX80";
                if (r3.A0N().A0O()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void A8J(Intent intent, Bundle bundle, AnonymousClass50 r11) {
        this.A04 = r11;
        this.A04.A0L(this.A0B);
        HashMap hashMap = new HashMap();
        hashMap.put(A0C(44, 9, 51), this.A0I.A6y());
        AnonymousClass1U A062 = this.A09.A0N().A0E().A06();
        if (A062 == null) {
            this.A0H.A3t(this.A0I.A6Q());
            this.A0H.A3t(this.A0I.A6L());
            return;
        }
        this.A06 = new P4(this.A0C, this.A09, A062, this.A0D, new C1076b7(this, null), hashMap);
        this.A0H.A3M(this, new RelativeLayout.LayoutParams(-1, -1));
        A0G();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void AB2(boolean z) {
        this.A0F.A07();
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ABR(boolean z) {
        if (this.A0M.get() && !this.A0F.A06()) {
            L6 l6 = this.A0F;
            if (A0R[5].charAt(2) != 'm') {
                A0R[0] = "UQp6GtSKm4mkcrS1rXAjxFqYQJcA6U4M";
                l6.A08();
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void ADT(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.MA
    public final void onDestroy() {
        this.A0G.A03();
        AnonymousClass50 r1 = this.A04;
        if (r1 != null) {
            r1.A0M(this.A0B);
        }
        if (this.A06 != null) {
            AnonymousClass16 r3 = this.A09;
            if (A0R[0].charAt(29) != 'D') {
                A0R[0] = "voPpcOtL9PQSCLq1wYvqOCQr8JaLbGKq";
                if (!TextUtils.isEmpty(r3.A0T())) {
                    this.A0D.A8S(this.A09.A0T(), new C0678Nc().A04(this.A06.getViewabilityChecker()).A03(this.A06.getTouchDataRecorder()).A06());
                }
                this.A06.A0D();
            } else {
                throw new RuntimeException();
            }
        }
        this.A0F.A07();
        this.A0P.setToolbarListener(null);
        this.A03 = null;
        this.A04 = null;
    }

    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            ABR(false);
        } else {
            AB2(false);
        }
    }

    public void setListener(M9 m9) {
    }
}
