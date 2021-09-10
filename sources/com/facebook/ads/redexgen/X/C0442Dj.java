package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.Dj  reason: case insensitive filesystem */
public final class C0442Dj implements YF, AS, AQ {
    public static byte[] A0O;
    public static String[] A0P;
    public float A00;
    public int A01;
    public int A02;
    public Surface A03;
    public SurfaceHolder A04;
    public TextureView A05;
    public Format A06;
    public Format A07;
    public C0385Ar A08;
    public C0394Ba A09;
    public C0394Ba A0A;
    public FE A0B;
    public List<GB> A0C;
    public boolean A0D;
    public final Handler A0E;
    public final YF A0F;
    public final YI A0G;
    public final YL A0H;
    public final CopyOnWriteArraySet<B7> A0I;
    public final CopyOnWriteArraySet<AbstractC0452Dx> A0J;
    public final CopyOnWriteArraySet<GF> A0K;
    public final CopyOnWriteArraySet<J0> A0L;
    public final CopyOnWriteArraySet<AbstractC0569Ir> A0M;
    public final YH[] A0N;

    static {
        A0G();
        A0F();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 58);
        }
        return new String(copyOfRange);
    }

    public static void A0F() {
        A0O = new byte[]{45, 23, 19, 14, 18, 27, 59, 6, 17, 46, 18, 31, 7, 27, 12, 9, 47, 40, 60, 59, 57, 63, 14, 63, 34, 46, 47, 40, 63, 22, 51, 41, 46, 63, 52, 63, 40, 122, 59, 54, 40, 63, 59, 62, 35, 122, 47, 52, 41, 63, 46, 122, 53, 40, 122, 40, 63, 42, 54, 59, 57, 63, 62, 116};
    }

    public static void A0G() {
        A0P = new String[]{"p1p2g9mbI7jG28uS1AIjZaN2DuNLisT4", "5M6TC2sONh3rGys5YKd78dMRKX2wOUqH", "h92WNkWPJTM", "jYXxaa6xf7axcTjhEWPmUH7zZsfwsjgI", "vYDSW5DyAu5jQwnIRgw24Ezub5gSEfu7", "VyMVayVAQGyPc0QthTR0tkMwCD52dsyF", "LU4FXKZXpKPxotYf", "puFnwNxTYtdaaLd9gUGAlTVzIEShK4ZY"};
    }

    public C0442Dj(AbstractC0369Aa aa, H7 h7, AF af, @Nullable C0<C0967Yj> c0) {
        this(aa, h7, af, c0, new C0374Ag());
    }

    public C0442Dj(AbstractC0369Aa aa, H7 h7, AF af, @Nullable C0<C0967Yj> c0, C0374Ag ag) {
        this(aa, h7, af, c0, ag, I0.A00);
    }

    public C0442Dj(AbstractC0369Aa aa, H7 h7, AF af, @Nullable C0<C0967Yj> c0, C0374Ag ag, I0 i0) {
        Looper mainLooper;
        this.A0G = new YI(this);
        this.A0M = new CopyOnWriteArraySet<>();
        this.A0K = new CopyOnWriteArraySet<>();
        this.A0J = new CopyOnWriteArraySet<>();
        this.A0L = new CopyOnWriteArraySet<>();
        this.A0I = new CopyOnWriteArraySet<>();
        if (Looper.myLooper() != null) {
            mainLooper = Looper.myLooper();
        } else {
            mainLooper = Looper.getMainLooper();
        }
        this.A0E = new Handler<>(mainLooper);
        Handler handler = this.A0E;
        YI yi = this.A0G;
        this.A0N = aa.A4R(handler, yi, yi, yi, yi, c0);
        this.A00 = 1.0f;
        this.A01 = 0;
        this.A08 = C0385Ar.A04;
        this.A02 = 1;
        this.A0C = Collections.emptyList();
        this.A0F = A02(this.A0N, h7, af, i0);
        this.A0H = ag.A00(this.A0F, i0);
        A3I(this.A0H);
        this.A0L.add(this.A0H);
        this.A0I.add(this.A0H);
        A0J(this.A0H);
        if (c0 instanceof C0962Ye) {
            ((C0962Ye) c0).A05(this.A0E, this.A0H);
        }
    }

    private final YF A02(YH[] yhArr, H7 h7, AF af, I0 i0) {
        return new EO(yhArr, h7, af, i0);
    }

    private void A0E() {
        TextureView textureView = this.A05;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.A0G) {
                Log.w(A07(0, 15, 68), A07(15, 49, 96));
            } else {
                this.A05.setSurfaceTextureListener(null);
            }
            this.A05 = null;
        }
        SurfaceHolder surfaceHolder = this.A04;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.A0G);
            this.A04 = null;
        }
    }

    /* access modifiers changed from: private */
    public void A0H(Surface surface, boolean z) {
        ArrayList<AW> arrayList = new ArrayList();
        YH[] yhArr = this.A0N;
        for (YH yh : yhArr) {
            int A7P = yh.A7P();
            String[] strArr = A0P;
            if (strArr[5].charAt(24) != strArr[4].charAt(24)) {
                String[] strArr2 = A0P;
                strArr2[6] = "VrJ3McZcw7cn2zeT";
                strArr2[0] = "MNepmlV8OvsHi61EfIBswCx5NcPOIPrl";
                if (A7P == 2) {
                    arrayList.add(this.A0F.A4L(yh).A06(1).A07(surface).A05());
                }
            } else {
                throw new RuntimeException();
            }
        }
        Surface surface2 = this.A03;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (AW aw : arrayList) {
                    aw.A0C();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            if (this.A0D) {
                this.A03.release();
            }
        }
        this.A03 = surface;
        if (A0P[7].charAt(22) != 'V') {
            throw new RuntimeException();
        }
        String[] strArr3 = A0P;
        strArr3[5] = "BcNzrhvciYYCifYD3J0kGNpt4Q56t2ws";
        strArr3[4] = "LBzJc3KMaCoazXjGhEegCXyOf3paMmXp";
        this.A0D = z;
    }

    private final void A0J(AbstractC0452Dx dx) {
        this.A0J.add(dx);
    }

    public final int A0K() {
        return this.A01;
    }

    public final Format A0L() {
        return this.A06;
    }

    @Nullable
    public final Format A0M() {
        return this.A07;
    }

    public final void A0N() {
        AED(false);
    }

    public final void A0O(float f) {
        this.A00 = f;
        YH[] yhArr = this.A0N;
        for (YH yh : yhArr) {
            String[] strArr = A0P;
            if (strArr[5].charAt(24) != strArr[4].charAt(24)) {
                String[] strArr2 = A0P;
                strArr2[6] = "TZ1OBcEbhXggSiRE";
                strArr2[0] = "o47SCfAcsD46THYYRPii4HELThPbmwG8";
                if (yh.A7P() == 1) {
                    this.A0F.A4L(yh).A06(2).A07(Float.valueOf(f)).A05();
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    public final void A0P(Surface surface) {
        A0E();
        A0H(surface, false);
    }

    public final void A0Q(FE fe) {
        ACW(fe, true, true);
    }

    public final void A0R(AbstractC0569Ir ir) {
        this.A0M.add(ir);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void A3I(AO ao) {
        this.A0F.A3I(ao);
    }

    @Override // com.facebook.ads.redexgen.X.YF
    public final AW A4L(AV av) {
        return this.A0F.A4L(av);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A5k() {
        return this.A0F.A5k();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A5l() {
        return this.A0F.A5l();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A62() {
        return this.A0F.A62();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A64() {
        return this.A0F.A64();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A65() {
        return this.A0F.A65();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A67() {
        return this.A0F.A67();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final AbstractC0373Af A69() {
        return this.A0F.A69();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A6A() {
        return this.A0F.A6A();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A6I() {
        return this.A0F.A6I();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final boolean A6z() {
        return this.A0F.A6z();
    }

    @Override // com.facebook.ads.redexgen.X.YF
    public final void ACW(FE fe, boolean z, boolean z2) {
        FE fe2 = this.A0B;
        if (fe2 != fe) {
            if (fe2 != null) {
                fe2.AD8(this.A0H);
                this.A0H.A08();
            }
            fe.A3G(this.A0E, this.A0H);
            this.A0B = fe;
        }
        this.A0F.ACW(fe, z, z2);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ACz() {
        this.A0F.ACz();
        A0E();
        Surface surface = this.A03;
        if (surface != null) {
            if (this.A0D) {
                surface.release();
            }
            this.A03 = null;
        }
        FE fe = this.A0B;
        if (fe != null) {
            fe.AD8(this.A0H);
        }
        this.A0C = Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADY(long j) {
        this.A0H.A07();
        this.A0F.ADY(j);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADZ() {
        this.A0H.A07();
        this.A0F.ADZ();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADp(boolean z) {
        this.A0F.ADp(z);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void AED(boolean z) {
        this.A0F.AED(z);
        FE fe = this.A0B;
        if (fe != null) {
            fe.AD8(this.A0H);
            this.A0B = null;
            this.A0H.A08();
        }
        this.A0C = Collections.emptyList();
        String[] strArr = A0P;
        if (strArr[6].length() != strArr[0].length()) {
            String[] strArr2 = A0P;
            strArr2[5] = "8NqoZsSfBCZ1v43okD4Pix8d8oY1Moxp";
            strArr2[4] = "VfYOa1CKuZhM9jsFhHY6jw4UB0OoLmrV";
            return;
        }
        throw new RuntimeException();
    }
}
