package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class SP implements KD {
    public static byte[] A0E;
    public static String[] A0F;
    public AbstractC01631p A00;
    public C03408w A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    @Nullable
    public final AdSize A06;
    public final C01400s A07;
    public final XJ A08;
    public final JC A09;
    public final EnumC0593Jr A0A;
    public final KE A0B = new KE(this.A08);
    public final Runnable A0C;
    public final String A0D;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0F[2].length() != 10) {
                throw new RuntimeException();
            }
            A0F[1] = "uoxYJqIRleds8fPMMv";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 87);
            i4++;
        }
    }

    public static void A05() {
        byte[] bArr = {64, 65, -14, 66, 62, 51, 53, 55, 63, 55, 64, 70, -14, 59, 64, -14, 68, 55, 69, 66, 65, 64, 69, 55};
        if (A0F[0].length() != 2) {
            throw new RuntimeException();
        }
        A0F[1] = "dKV76OJFyRmVPWeRzZ";
        A0E = bArr;
    }

    public static void A06() {
        A0F = new String[]{"Um", "5O6Pi5UhekEiJBNtL2", "ByBiFstlzS", "VNZICTTmM6bBZ", "I3ykA2cHAONkN", "xnUs6VMzToWHuFoC", "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp", "LFB8Dcv49A6aPeUL"};
    }

    static {
        A06();
        A05();
        C0634Lj.A02();
    }

    public SP(XJ xj, String str, EnumC0593Jr jr, @Nullable AdSize adSize, int i) {
        this.A08 = xj;
        this.A0D = str;
        this.A0A = jr;
        this.A06 = adSize;
        this.A04 = i;
        this.A0B.A0R(this);
        this.A07 = new C01400s();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new F3(this);
        this.A09 = xj.A06();
        DynamicLoaderFactory.makeLoader(this.A08).getInitApi().onAdLoadInvoked(this.A08);
    }

    private List<C0794Rp> A04() {
        C03408w r2 = this.A01;
        ArrayList arrayList = new ArrayList(r2.A02());
        for (C03388u A042 = r2.A04(); A042 != null; A042 = r2.A04()) {
            AbstractC01350n A002 = this.A07.A00(AdPlacementType.NATIVE);
            if (A002 != null && A002.A6x() == AdPlacementType.NATIVE) {
                C0794Rp rp = (C0794Rp) A002;
                rp.A0a(this.A08, new SO(this, arrayList, rp), this.A09, new C01611n(A042.A05(), r2.A05(), this.A0D, r2.A05().A0C()), C1143cD.A0I());
            }
        }
        return arrayList;
    }

    public final void A07() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    /* JADX INFO: Multiple debug info for r15v0 'this'  com.facebook.ads.redexgen.X.SP: [D('e' com.facebook.ads.redexgen.X.Jm), D('adEnvironmentData' com.facebook.ads.redexgen.X.KB)] */
    public final void A08() {
        try {
            LK lk = null;
            C0598Jw jw = new C0598Jw(this.A08, null, null, null);
            XJ xj = this.A08;
            String str = this.A0D;
            AdSize adSize = this.A06;
            if (adSize != null) {
                lk = new LK(adSize.getHeight(), this.A06.getWidth());
            }
            this.A0B.A0Q(new KB(xj, str, lk, this.A0A, null, this.A04, AdSettings.isTestMode(this.A08), AdSettings.isMixedAudience(), jw, LQ.A01(J4.A0H(this.A08)), this.A02, null));
        } catch (C0589Jm e) {
            AA7(C0588Jl.A03(e));
        }
    }

    public final void A09(AbstractC01631p r1) {
        this.A00 = r1;
    }

    public final void A0A(String str) {
        this.A02 = str;
    }

    public final boolean A0B() {
        C03408w r0 = this.A01;
        return r0 == null || r0.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.KD
    public final void AA7(C0588Jl jl) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, 1800000);
        }
        AbstractC01631p r3 = this.A00;
        if (A0F[2].length() != 10) {
            throw new RuntimeException();
        }
        A0F[2] = "yGn7NPCZVX";
        if (r3 != null) {
            r3.AA7(jl);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KD
    public final void ABk(C1155cP cPVar) {
        C03408w A002 = cPVar.A00();
        if (A002 != null) {
            if (this.A03) {
                long A0A2 = A002.A05().A0A();
                if (A0A2 == 0) {
                    A0A2 = 1800000;
                }
                this.A05.postDelayed(this.A0C, A0A2);
            }
            this.A01 = A002;
            List<C0794Rp> A042 = A04();
            if (this.A00 == null) {
                return;
            }
            if (A042.isEmpty()) {
                this.A00.AA7(C0588Jl.A02(AdErrorType.NO_FILL, A03(0, 0, 68)));
            } else {
                this.A00.AAw(A042);
            }
        } else {
            throw new IllegalStateException(A03(0, 24, 123));
        }
    }
}
