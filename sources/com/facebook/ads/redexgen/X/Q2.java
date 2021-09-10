package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.exoplayer2.offline.DownloadAction;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.util.Arrays;

public final class Q2 {
    public static Q2 A09;
    public static byte[] A0A;
    public static final DownloadAction.Deserializer[] A0B = {C1016a9.A03};
    public C0459Ee A00;
    @Nullable
    public AbstractC0535Hh A01;
    public File A02;
    public boolean A03;
    public final Context A04;
    public final Handler A05 = new Handler(Looper.getMainLooper());
    public final SparseArray<Q0> A06 = new SparseArray<>();
    public final EX A07 = new HY(this);
    public final Runnable A08 = new RunnableC0752Pz(this);

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 103);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A0A = new byte[]{-103, -69, -14, -19, -34, -20, -77, -103, -69, -3, 20, 15, 0, 14, -69, -24, 19, 27, 18, 16, 19, 5, 8, 9, 8, -46, -60, -9, 24, 5, 24, 9, -34, -60, 27, 72, 72, 69, 72, 4, -10, 41, 74, 55, 74, 59, 16, -10, -44, -31, -13, -21, 33, 36, 46, 55, -19, 33, 35, 52, 41, 47, 46, 51, -40, -37, -27, -18, -92, -37, -26, -18, -27, -29, -26, -40, -37, -22, 33, 36, 51};
    }

    static {
        A0B();
    }

    @VisibleForTesting
    public Q2(Context context, @Nullable C0459Ee ee) {
        this.A04 = context;
        if (ee != null) {
            this.A00 = ee;
            ee.A0R(this.A07);
        }
        A01().A0Q();
    }

    private C0459Ee A01() {
        if (this.A00 == null) {
            this.A00 = new C0459Ee(new C0464Ej(A03(), A02()), 10, 5, new File(A06(), A07(52, 12, 89)), A0B);
            this.A00.A0R(this.A07);
        }
        return this.A00;
    }

    private AbstractC1088bJ A02() {
        return new C01872n(A07(78, 3, 89), null);
    }

    private final synchronized AbstractC0535Hh A03() {
        if (this.A01 == null) {
            this.A01 = new C1108bd(new File(A06(), A07(64, 14, 16)), new BO(134217728));
        }
        return this.A01;
    }

    public static C1104bZ A04(C1082bD bDVar, AbstractC0535Hh hh) {
        return new C1104bZ(hh, bDVar, new C1086bH(), null, 2, null);
    }

    public static Q2 A05(Context context) {
        if (A09 == null) {
            A09 = new Q2(context.getApplicationContext(), null);
        }
        return A09;
    }

    private File A06() {
        if (this.A02 == null) {
            this.A02 = this.A04.getCacheDir();
        }
        return this.A02;
    }

    /* access modifiers changed from: private */
    public void A08() {
        C0458Ed[] A0T = A01().A0T();
        for (C0458Ed ed : A0T) {
            int state = ed.A02;
            Q0 q0 = this.A06.get(state);
            if (q0 != null) {
                int i = ed.A01;
                if (i == 2 || ed.A03 > q0.A00) {
                    String str = A07(15, 19, 61) + i + A07(0, 8, 18) + ed.A03;
                    q0.A01.A9x();
                    this.A06.remove(state);
                } else if (i == 4 || i == 3) {
                    String str2 = A07(34, 14, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION) + i;
                    q0.A01.AA6();
                    this.A06.remove(state);
                }
            }
            String str3 = A07(48, 4, 25) + state + A07(8, 7, 52) + ed.A03;
        }
    }

    private void A09() {
        if (!this.A03) {
            this.A03 = true;
            this.A05.post(this.A08);
        }
    }

    /* access modifiers changed from: private */
    public void A0A() {
        this.A05.removeCallbacks(this.A08);
        this.A03 = false;
    }

    public final HH A0E(Context context) {
        return A04(new C1082bD(context, (AbstractC0531Hd<? super HI>) null, A02()), A03());
    }

    public final void A0F(Uri uri, Q1 q1, long j) {
        this.A06.put(A01().A0P(new C1016a9(uri, false, null, null)), new Q0(q1, j, null));
        A09();
    }
}
