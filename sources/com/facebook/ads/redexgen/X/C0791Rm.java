package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.proguard.annotations.DoNotStrip;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Rm  reason: case insensitive filesystem */
public final class C0791Rm implements AbstractC01350n {
    public static byte[] A0A;
    public static String[] A0B;
    public static final String A0C = C0791Rm.class.getSimpleName();
    public AbstractC01430v A00;
    public C0799Ru A01;
    public ES A02;
    @Nullable
    public JC A03;
    @Nullable
    @DoNotStrip
    public NV A04;
    @Nullable
    public C1020aD A05;
    public String A06;
    public boolean A07 = false;
    public boolean A08 = false;
    public boolean A09 = false;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 19);
            if (A0B[2].length() != 29) {
                String[] strArr = A0B;
                strArr[3] = "viF0h1063r6cbXDqGfnWrC6qPBVBGzAv";
                strArr[7] = "3ywSXssJKLxMazlfVUMLvW6ymO505mlb";
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{-11, -26, -7, -11, -80, -23, -11, -18, -19, -23, -24, -38, -95, -84};
    }

    public static void A08() {
        A0B = new String[]{"1VlIdrj3fRAASVh0IRQbA", "AKXoeI10d8PJONEXEmQHjWIEkAB2E", "HfXt1ktTFXNYFvURT1ePpe", "VNbNAjzqH3UXN3t9RrTP5z6I5Qa6gPQJ", "DeawL9PzUIlDumNdtXISYTaSpfy6P3Cj", "KNbO6MhxkLbBAZAqlm1H7U8Ouut8mEhI", "i536pd2CEb7n0lc", "TelURl5RBqiFivFSJRRvco6RCKborqoX"};
    }

    static {
        A08();
        A07();
    }

    /* access modifiers changed from: private */
    public void A06() {
        boolean z;
        if (this.A00 != null && this.A07 && (this.A08 || !this.A09)) {
            this.A00.A9b(this, this.A05);
        }
        RY A0F = this.A02.A0A();
        if (this.A00 != null) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3Z(z);
        if (A0B[2].length() != 29) {
            A0B[2] = "DQYu3GBVfiN4Ml";
            return;
        }
        throw new RuntimeException();
    }

    private void A0A(C03418x r11, C01611n r12) {
        C0797Rs A002 = C0797Rs.A00(r12.A03());
        this.A06 = A002.A5x();
        if (C01310j.A04(this.A02, A002, this.A03)) {
            this.A02.A0A().A42();
            this.A00.A9c(this, AdError.internalError(AdError.INTERNAL_ERROR_2006));
            return;
        }
        this.A04 = new C0483Fe(this, A002);
        this.A05 = new C1020aD(this.A02, new WeakReference(this.A04), r11.A04());
        this.A05.A0F(r11.A07(), r11.A08());
        C0790Rl rl = new C0790Rl(this);
        ES es = this.A02;
        JC jc = this.A03;
        C1020aD aDVar = this.A05;
        this.A01 = new C0799Ru(es, jc, aDVar, aDVar.getViewabilityChecker(), rl);
        this.A01.A09(A002);
        this.A05.loadDataWithBaseURL(NY.A00(), A002.A05(), A05(0, 9, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD), A05(9, 5, 97), null);
        this.A07 = true;
        A06();
    }

    public final void A0D(ES es, JC jc, EnumC0592Jq jq, AbstractC01430v r5, C01611n r6) {
        es.A0A().A3Y();
        this.A02 = es;
        this.A03 = jc;
        this.A00 = r5;
        this.A09 = J4.A13(this.A02.getApplicationContext());
        A0A(r6.A01(), r6);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final String A5x() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final AdPlacementType A6x() {
        return AdPlacementType.BANNER;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final void onDestroy() {
        boolean z;
        RY A0F = this.A02.A0A();
        if (this.A05 != null) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3W(z);
        C1020aD aDVar = this.A05;
        if (aDVar != null) {
            aDVar.destroy();
            this.A05 = null;
            this.A04 = null;
        }
    }
}
