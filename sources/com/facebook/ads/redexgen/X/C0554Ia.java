package com.facebook.ads.redexgen.X;

import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.os.Handler;
import android.view.View;
import androidx.annotation.Nullable;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_AUTO_CACHED_PLACEMENT)
/* renamed from: com.facebook.ads.redexgen.X.Ia  reason: case insensitive filesystem */
public final class C0554Ia implements PP {
    public static String[] A0B;
    public View A00;
    @Nullable
    public PD A01;
    @Nullable
    public EnumC0728Pb A02;
    public boolean A03;
    public final Handler A04;
    public final AbstractC0629Le A05;
    public final KW A06;
    public final KQ A07;
    public final K3 A08;
    public final boolean A09;
    public final boolean A0A;

    static {
        A06();
    }

    public static void A06() {
        A0B = new String[]{"82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp", "9Qv", "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa", "lBA7odrZYL425", "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I", "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg", "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P", "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"};
    }

    public C0554Ia(View view, EnumC0728Pb pb, boolean z) {
        this(view, pb, z, false);
    }

    public C0554Ia(View view, @Nullable EnumC0728Pb pb, boolean z, boolean z2) {
        this.A06 = new C03067h(this);
        this.A07 = new C03057g(this);
        this.A05 = new C03047e(this);
        this.A08 = new C03037d(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z;
        this.A0A = z2;
        A09(view, pb);
    }

    /* access modifiers changed from: private */
    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500).setListener(new C0727Pa(this));
    }

    /* access modifiers changed from: private */
    public void A07(int i, int i2) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha((float) i);
        this.A00.setVisibility(i2);
    }

    /* access modifiers changed from: private */
    public void A08(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500).setListener(animatorListenerAdapter);
    }

    private final void A09(View view, EnumC0728Pb pb) {
        this.A02 = pb;
        this.A00 = view;
        this.A00.clearAnimation();
        if (pb == EnumC0728Pb.A04) {
            this.A00.setAlpha(0.0f);
            String[] strArr = A0B;
            if (strArr[5].charAt(26) != strArr[0].charAt(26)) {
                String[] strArr2 = A0B;
                strArr2[5] = "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj";
                strArr2[0] = "lt7hksMEFpJVhV2333OBcIopOVPW9bfy";
                this.A00.setVisibility(8);
                return;
            }
            throw new RuntimeException();
        }
        this.A00.setAlpha(1.0f);
        this.A00.setVisibility(0);
    }

    public final void A0G() {
        this.A03 = false;
        A08(null);
    }

    public final boolean A0H() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void A8K(PD pd) {
        this.A01 = pd;
        pd.getEventBus().A04(this.A06, this.A07, this.A08, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.PP
    public final void AEO(PD pd) {
        A07(1, 0);
        pd.getEventBus().A05(this.A05, this.A08, this.A07, this.A06);
        this.A01 = null;
    }
}
