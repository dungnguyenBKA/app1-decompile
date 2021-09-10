package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;

public final class F0 extends SV {
    @Nullable
    public C0808Sd A00;
    public final C01731z A01;

    public F0(C01731z r3) {
        super(r3.A0B, A00(r3));
        this.A01 = r3;
    }

    public static AbstractC01721y A00(C01731z r1) {
        return new C0813Si(r1);
    }

    @Override // com.facebook.ads.redexgen.X.SV
    public final void A05() {
        C0808Sd sd = this.A00;
        if (sd != null) {
            sd.A0D();
        }
        super.A00.ADg(EnumC01651r.A04);
    }

    public final void A07() {
        this.A00 = new C0808Sd(this.A01, this, this.A02);
        this.A00.A0F(this.A01.A05, this.A01.A02, this.A01.A08);
    }

    public final void A08(RewardData rewardData) {
        this.A01.A03 = rewardData;
        C0808Sd sd = this.A00;
        if (sd != null) {
            sd.A0E(rewardData);
        }
    }

    public final void A09(RewardedVideoAd rewardedVideoAd, @Nullable String str, @Nullable AdExperienceType adExperienceType, boolean z) {
        if (!super.A00.A5G()) {
            this.A01.A02(rewardedVideoAd);
            C0808Sd sd = this.A00;
            if (sd != null) {
                sd.A0F(str, adExperienceType, z);
                return;
            }
            C01731z r0 = this.A01;
            r0.A05 = str;
            r0.A02 = adExperienceType;
            r0.A08 = z;
            A07();
        }
    }

    public final boolean A0A() {
        C0808Sd sd = this.A00;
        if (sd != null) {
            return sd.A0G();
        }
        if (this.A01.A01 <= 0 || LZ.A00() <= this.A01.A01) {
            return false;
        }
        return true;
    }

    public final boolean A0B() {
        C0808Sd sd = this.A00;
        if (sd != null) {
            return sd.A0H();
        }
        return super.A00.A5W() == EnumC01651r.A06;
    }

    public final boolean A0C(RewardedVideoAd rewardedVideoAd, RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        int A002 = ((AnonymousClass5P) rewardedVideoShowAdConfig).A00();
        if (super.A00.A5H()) {
            return false;
        }
        this.A01.A02(rewardedVideoAd);
        C0808Sd sd = this.A00;
        if (sd != null) {
            return sd.A0I(A002);
        }
        this.A00 = new C0808Sd(this.A01, this, this.A02);
        this.A00.A0I(A002);
        return false;
    }
}
