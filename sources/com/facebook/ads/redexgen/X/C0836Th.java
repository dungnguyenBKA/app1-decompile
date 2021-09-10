package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.facebook.ads.DefaultMediaViewVideoRenderer;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.AdComponentView;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdComponentViewParentApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Th  reason: case insensitive filesystem */
public final class C0836Th extends AnonymousClass55 implements MediaViewApi, Repairable, AnonymousClass8B {
    public static byte[] A0D;
    public static String[] A0E;
    public static final String A0F = MediaView.class.getSimpleName();
    public View A00;
    public View A01;
    public ImageView A02;
    public MediaView A03;
    @Nullable
    public MediaViewListener A04;
    public MediaViewVideoRenderer A05;
    public AdComponentViewParentApi A06;
    public XJ A07;
    public AnonymousClass1W A08;
    public NZ A09;
    @Nullable
    public P1 A0A;
    public boolean A0B;
    public boolean A0C;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 47);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0D = new byte[]{56, 26, 9, 20, 14, 8, 30, 23, 91, 9, 30, 21, 31, 30, 9, 30, 9, 91, 22, 14, 8, 15, 91, 25, 30, 91, 8, 30, 15, 91, 25, 30, 29, 20, 9, 30, 91, 21, 26, 15, 18, 13, 30, 58, 31, 85, 26, 30, 29, 41, 56, 53, 57, 50, 63, 57, 18, 57, 40, 43, 51, 46, 55, 64, 100, 104, 110, 108, 41, 123, 108, 103, 109, 108, 123, 108, 123, 41, 100, 124, 122, 125, 41, 107, 108, 41, 122, 108, 125, 41, 107, 108, 111, 102, 123, 108, 41, 103, 104, 125, 96, Byte.MAX_VALUE, 108, 72, 109, 39, 96, 68, 72, 78, 76, 9, 91, 76, 71, 77, 76, 91, 76, 91, 9, 68, 92, 90, 93, 9, 75, 76, 9, 90, 76, 93, 9, 75, 76, 79, 70, 91, 76, 9, 71, 72, 93, 64, 95, 76, 107, 72, 71, 71, 76, 91, 104, 77, 7, 18, 53, 45, 58, 55, 50, 63, 123, 13, 50, 62, 44, 123, 56, 52, 53, 40, 47, 41, 46, 56, 47, 52, 41, 123, 43, 58, 41, 58, 54, 40, 123, 47, 34, 43, 62, 117, 1, 46, 59, 38, 57, 42, 111, 14, 43, 111, 6, 44, 32, 33, 111, 38, 60, 111, 33, 58, 35, 35, 97, 11, 52, 57, 56, 50, 125, 47, 56, 51, 57, 56, 47, 56, 47, 125, 48, 40, 46, 41, 125, 63, 56, 125, 46, 56, 41, 125, 63, 56, 59, 50, 47, 56, 125, 51, 60, 41, 52, 43, 56, 28, 57, 115, 26, 11, 18, 117, 106, 103, 102, 108, 86, 113, 111, 62};
    }

    public static void A06() {
        A0E = new String[]{"5egxRyJvv3hsImr6xVPVZGZzS", "S92E58UIdGCmPOb4LYA51SRur0tU5vPU", "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq", "IRYDxixZynQ1VjnPzR0JfxvjieAE", "Yx6PPUM30uHFy3rHO75LIsUaVykI", "YSQgGTlHzzB", "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH", "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"};
    }

    static {
        A06();
        A05();
    }

    private void A03() {
        if (!this.A0C) {
            View view = this.A01;
            String[] strArr = A0E;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0E;
            strArr2[5] = "HiqmuX4YAHl";
            strArr2[0] = "JtgDxExoVYEb5OmxUIRsQ7gjV";
            if (view != null) {
                C0632Lh.A0M(this.A08);
            }
            float f = C0632Lh.A01;
            int round = Math.round(4.0f * f);
            int round2 = Math.round(12.0f * f);
            this.A08.setChildSpacing(round);
            this.A08.setPadding(0, round2, 0, round2);
            this.A08.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.A01 = this.A08;
            this.A03.addView(this.A01, layoutParams);
            return;
        }
        throw new IllegalStateException(A02(0, 46, 84));
    }

    private void A04() {
        LF.A04(this.A03, LF.A0A);
        LF.A04(this.A09, LF.A0A);
        LF.A04(this.A05, LF.A0A);
        LF.A04(this.A01, LF.A0A);
    }

    private final void A07(View view, ViewGroup.LayoutParams layoutParams) {
        A02(false);
        this.A03.addView(view, layoutParams);
        A02(true);
    }

    private void A08(View view, C1143cD cDVar) {
        P1 p1 = this.A0A;
        if (p1 != null) {
            MediaView mediaView = this.A03;
            String[] strArr = A0E;
            if (strArr[5].length() != strArr[0].length()) {
                String[] strArr2 = A0E;
                strArr2[6] = "tYahJlzELN2bWoIKGOvNb4V2q4om3tal";
                strArr2[2] = "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq";
                mediaView.removeView(p1);
            } else {
                throw new RuntimeException();
            }
        }
        if (cDVar.A1c()) {
            String A1B = cDVar.A1B();
            Context context = this.A03.getContext();
            String[] strArr3 = A0E;
            if (strArr3[5].length() != strArr3[0].length()) {
                String[] strArr4 = A0E;
                strArr4[4] = "LedcnhOkj71a4gNr9a9uwwPVwkpS";
                strArr4[3] = "bOPNktfa058vxRDYU7HJ2aiUk3a2";
                if (context == null) {
                    return;
                }
            } else if (context == null) {
                return;
            }
            P1 A012 = P0.A01(this.A07, A1B);
            if (A0E[7].charAt(21) != 'L') {
                A0E[1] = "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF";
                this.A0A = A012;
                if (this.A0A == null) {
                    return;
                }
            } else {
                this.A0A = A012;
                if (this.A0A == null) {
                    return;
                }
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(5, view.getId());
            layoutParams.addRule(7, view.getId());
            layoutParams.addRule(6, view.getId());
            layoutParams.addRule(8, view.getId());
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.addRule(16, view.getId());
                layoutParams.addRule(17, view.getId());
            }
            A07(this.A0A, layoutParams);
            this.A06.bringChildToFront(this.A0A);
        }
    }

    private void A09(ImageView imageView) {
        if (!this.A0C) {
            ImageView imageView2 = this.A02;
            String[] strArr = A0E;
            if (strArr[5].length() != strArr[0].length()) {
                String[] strArr2 = A0E;
                strArr2[6] = "9onWrVOda1qlu0pAvyXYf5LKITz29A5r";
                strArr2[2] = "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX";
                if (imageView2 != null) {
                    C0632Lh.A0M(imageView2);
                }
                imageView.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                this.A03.addView(imageView, layoutParams);
                imageView.setId(C0632Lh.A00());
                this.A02 = imageView;
                return;
            }
            throw new RuntimeException();
        }
        throw new IllegalStateException(A02(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 49, 6));
    }

    @TargetApi(VungleException.SERVER_ERROR)
    private final void A0A(XJ xj, AttributeSet attributeSet, int i, int i2, MediaView mediaView) {
        this.A03 = mediaView;
        A09(new ImageView(xj, attributeSet, i, i2));
        A0F(new NZ(xj, attributeSet, i, i2));
        this.A08 = new AnonymousClass1W(xj, attributeSet, i);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(xj, attributeSet, i, i2));
        A04();
    }

    private final void A0B(XJ xj, AttributeSet attributeSet, int i, MediaView mediaView) {
        this.A03 = mediaView;
        A09(new ImageView(xj, attributeSet, i));
        A0F(new NZ(xj, attributeSet, i));
        this.A08 = new AnonymousClass1W(xj, attributeSet, i);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(xj, attributeSet, i));
        A04();
    }

    private final void A0C(XJ xj, AttributeSet attributeSet, MediaView mediaView) {
        this.A03 = mediaView;
        A09(new ImageView(xj, attributeSet));
        A0F(new NZ(xj, attributeSet));
        this.A08 = new AnonymousClass1W(xj, attributeSet);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(xj, attributeSet));
        A04();
    }

    private final void A0D(XJ xj, MediaView mediaView) {
        this.A03 = mediaView;
        A09(new ImageView(xj));
        A0F(new NZ(xj));
        this.A08 = new AnonymousClass1W(xj);
        A03();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(xj));
        A04();
    }

    private void A0E(C1143cD cDVar, boolean z, JY jy) {
        AsyncTaskC1017aA A052 = new AsyncTaskC1017aA(this.A02, this.A07).A05();
        if (z) {
            A052.A07(new C0831Tc(this, cDVar));
        }
        A052.A08(jy.getUrl());
    }

    private void A0F(NZ nz) {
        if (!this.A0C) {
            NZ nz2 = this.A09;
            if (nz2 != null) {
                this.A03.removeView(nz2);
            }
            nz.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.A03.addView(nz, layoutParams);
            this.A09 = nz;
            return;
        }
        throw new IllegalStateException(A02(63, 43, 38));
    }

    private boolean A0G(NativeAd nativeAd) {
        List<NativeAd> A042 = ((AnonymousClass5C) nativeAd.getNativeAdApi()).A04();
        if (A042 == null) {
            return false;
        }
        for (NativeAd childNativeAd : A042) {
            if (childNativeAd.getAdCoverImage() == null) {
                return false;
            }
        }
        return true;
    }

    private boolean A0H(NativeAd nativeAd) {
        if (Build.VERSION.SDK_INT < 14 || TextUtils.isEmpty(((AnonymousClass5C) nativeAd.getNativeAdApi()).A03())) {
            return false;
        }
        return true;
    }

    public final void A0I(NativeAd nativeAd) {
        boolean z;
        AbstractC0804Rz fm;
        XJ A11 = ((C1143cD) nativeAd.getInternalNativeAd()).A11();
        A11.A0C(this);
        this.A07.A0D(A11);
        this.A07.A0B(A11.A0A());
        this.A0C = true;
        C1143cD A0J = C1143cD.A0J(nativeAd.getInternalNativeAd());
        A0J.A1Q(this.A03);
        this.A02.setVisibility(8);
        this.A02.setImageDrawable(null);
        if (A0G(nativeAd)) {
            A0J.A11().A0A().ADu(EnumC01240c.A03);
            EnumC0579Jb A16 = A0J.A16();
            if (A0E[7].charAt(21) != 'L') {
                String[] strArr = A0E;
                strArr[4] = "CvXrj9TTP1W52m7bIbynzmDbx8Ql";
                strArr[3] = "OGerX4RrBYJpkLXwbXTHIjvyoHPN";
                if (A16 == EnumC0579Jb.A0B) {
                    z = true;
                } else {
                    z = false;
                }
                if (!J4.A1m(this.A07) || z) {
                    this.A01 = this.A08;
                    ((AnonymousClass1W) this.A01).setCurrentPosition(0);
                    ((AnonymousClass1W) this.A01).setShowTextInCarousel(z);
                    if (z) {
                        fm = new FT(this.A07, (AnonymousClass1W) this.A01, A0J.A1H(), A0J.A15());
                    } else {
                        fm = new FM((AnonymousClass1W) this.A01, A0J.A1H(), this.A07);
                    }
                    fm.A0H(new C0832Td(this, A0J));
                    ((C0469Eq) this.A01).setAdapter(fm);
                } else {
                    A02(false);
                    int width = this.A03.getWidth();
                    ViewGroup viewGroup = (ViewGroup) this.A03.getParent();
                    while (width == 0 && viewGroup != null) {
                        width = viewGroup.getWidth();
                        ViewParent parent = viewGroup.getParent();
                        String[] strArr2 = A0E;
                        if (strArr2[4].length() != strArr2[3].length()) {
                            String[] strArr3 = A0E;
                            strArr3[4] = "ZQRbya12lyykx5Eq2uFJ3JGH4lXR";
                            strArr3[3] = "SLHysRpGcYp4QaXPRJ4K4uNDdgkD";
                            viewGroup = (ViewGroup) parent;
                        } else {
                            String[] strArr4 = A0E;
                            strArr4[6] = "txzvXhatra49UDlp2BXEovPdWlOkx37e";
                            strArr4[2] = "zmD0GPDFfrMRBXxeFyYC2vHynCiCjpaN";
                            viewGroup = (ViewGroup) parent;
                        }
                    }
                    C0632Lh.A0M(this.A01);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(13);
                    this.A01 = new NQ(this.A07);
                    this.A03.addView(this.A01, layoutParams);
                    ((NQ) this.A01).A06(A0J, width);
                    C0632Lh.A0N(this.A01);
                    A02(true);
                }
                View view = this.A01;
                String[] strArr5 = A0E;
                if (strArr5[4].length() != strArr5[3].length()) {
                    throw new RuntimeException();
                }
                A0E[1] = "92EI1RENbPFosgt8QuPbmuyLYPUfPd8U";
                this.A00 = view;
                this.A09.setVisibility(8);
                this.A09.setImage(null, null);
                this.A05.setVisibility(8);
                this.A05.unsetNativeAd();
                ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A04();
                bringChildToFront(this.A01);
                this.A01.setVisibility(0);
                A08(this.A01, A0J);
                return;
            }
            throw new RuntimeException();
        } else if (A0H(nativeAd)) {
            A0J.A11().A0A().ADu(EnumC01240c.A09);
            A0J.A1a(this.A0B);
            this.A00 = this.A05.getMediaViewVideoRendererApi().getVideoView();
            this.A09.setVisibility(8);
            this.A09.setImage(null, null);
            View view2 = this.A01;
            if (view2 != null) {
                view2.setVisibility(8);
                View view3 = this.A01;
                if (view3 instanceof NQ) {
                    ((NQ) view3).A05();
                } else {
                    C0469Eq eq = (C0469Eq) view3;
                    String[] strArr6 = A0E;
                    if (strArr6[5].length() != strArr6[0].length()) {
                        String[] strArr7 = A0E;
                        strArr7[6] = "aOStoZQ6HlGjIfWvjowDgm0JyWXySbfC";
                        strArr7[2] = "db16XoSedMN3NVp1QVj7WgZqidqfP4Wc";
                        eq.setAdapter(null);
                    } else {
                        eq.setAdapter(null);
                    }
                }
            }
            bringChildToFront(this.A05);
            this.A05.setNativeAd(nativeAd);
            ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A05(nativeAd);
            this.A05.setVisibility(0);
            if (A0J.getAdCoverImage() != null) {
                new AsyncTaskC1017aA(this.A03, this.A07).A06(this.A03.getHeight(), this.A03.getWidth()).A07(new C0833Te(this, A0J)).A08(A0J.getAdCoverImage().getUrl());
            }
            if (BuildConfigApi.isDebug()) {
                String str = A0F;
                Log.i(str, A02(261, 9, 44) + ((AnonymousClass5C) nativeAd.getNativeAdApi()).A03());
            }
            A08(this.A05, A0J);
        } else if (nativeAd.getAdCoverImage() != null) {
            A0J.A11().A0A().ADu(EnumC01240c.A07);
            this.A00 = this.A09.getBodyImageView();
            this.A05.setVisibility(8);
            this.A05.unsetNativeAd();
            ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A04();
            View view4 = this.A01;
            if (view4 != null) {
                view4.setVisibility(8);
                View view5 = this.A01;
                if (view5 instanceof NQ) {
                    ((NQ) view5).A05();
                } else {
                    ((C0469Eq) view5).setAdapter(null);
                }
            }
            bringChildToFront(this.A09);
            this.A09.setVisibility(0);
            new AsyncTaskC1017aA(this.A09, this.A07).A06(this.A03.getHeight(), this.A03.getWidth()).A07(new C0834Tf(this, A0J)).A08(A0J.getAdCoverImage().getUrl());
            A08(this.A09, A0J);
        }
    }

    public final void A0J(NativeAdBaseApi nativeAdBaseApi, boolean z) {
        XJ A11 = ((C1143cD) nativeAdBaseApi).A11();
        this.A07.A0D(A11);
        A11.A0C(this);
        this.A0C = true;
        C1143cD A0J = C1143cD.A0J(nativeAdBaseApi);
        A0J.A1P(this.A03);
        this.A09.setVisibility(8);
        this.A09.setImage(null, null);
        this.A05.setVisibility(8);
        this.A05.unsetNativeAd();
        ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A04();
        View view = this.A01;
        if (view != null) {
            view.setVisibility(8);
            View view2 = this.A01;
            if (view2 instanceof NQ) {
                ((NQ) view2).A05();
            } else {
                ((C0469Eq) view2).setAdapter(null);
            }
        }
        this.A02.setVisibility(0);
        bringChildToFront(this.A02);
        this.A00 = this.A02;
        JY A13 = A0J.getAdIcon();
        if (A13 != null) {
            Bitmap A0I = A0J.A10().A0I(A13.getUrl());
            if (A0I != null) {
                this.A02.setImageBitmap(A0I);
                if (z) {
                    this.A03.post(new C0830Tb(this, A0J));
                }
            } else {
                A0E(A0J, z, A13);
            }
        } else {
            AbstractC1144cE A14 = A0J.A14();
            AdErrorType adErrorType = AdErrorType.NATIVE_AD_IS_NOT_LOADED;
            A11.A0A().A2d(A0J.A0x(), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
            if (A14 != null) {
                A14.AA7(C0588Jl.A01(adErrorType));
            }
            Log.e(A02(46, 17, 115), adErrorType.getDefaultErrorMessage());
            if (nativeAdBaseApi.isAdLoaded()) {
                this.A07.A04().A8V(A02(258, 3, 84), C03228e.A0L, new C03238f(A02(192, 23, 96)));
            }
        }
        A08(this.A02, A0J);
    }

    public final boolean A0K() {
        View view = this.A01;
        return view != null && view.getVisibility() == 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8B
    public final XJ A5U() {
        return this.A07;
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewParentApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void bringChildToFront(View view) {
        if (view == this.A01 || view == this.A05 || view == this.A09 || view == this.A02) {
            this.A06.bringChildToFront(view);
            P1 p1 = this.A0A;
            if (p1 != null) {
                this.A06.bringChildToFront(p1);
            }
        }
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void destroy() {
        this.A05.pause(false);
        this.A05.getMediaViewVideoRendererApi().destroy();
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApiProvider
    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final View getAdContentsView() {
        return this.A00;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final int getMediaHeight() {
        if (this.A09.getVisibility() == 0) {
            return this.A09.getImageHeight();
        }
        if (this.A05.getVisibility() == 0) {
            return this.A05.getMediaViewVideoRendererApi().getVideoView().getHeight();
        }
        if (this.A03.getVisibility() == 0) {
            return this.A03.getHeight();
        }
        if (A0E[1].charAt(24) != 't') {
            A0E[7] = "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8";
            return 0;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final int getMediaWidth() {
        if (this.A09.getVisibility() == 0) {
            return this.A09.getImageWidth();
        }
        if (this.A05.getVisibility() == 0) {
            return this.A05.getMediaViewVideoRendererApi().getVideoView().getWidth();
        }
        if (this.A03.getVisibility() == 0) {
            return this.A03.getWidth();
        }
        String[] strArr = A0E;
        if (strArr[6].charAt(12) != strArr[2].charAt(12)) {
            String[] strArr2 = A0E;
            strArr2[5] = "pFreRfYdfw1";
            strArr2[0] = "pVUprXCJsnglf8IlGtX2XFBaJ";
            return 0;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaView mediaView) {
        this.A07 = AnonymousClass56.A02(adViewConstructorParams.getContext());
        this.A07.A0C(this);
        int initializationType = adViewConstructorParams.getInitializationType();
        if (initializationType == 0) {
            A0D(this.A07, mediaView);
        } else if (initializationType == 1) {
            A0C(this.A07, adViewConstructorParams.getAttributeSet(), mediaView);
        } else if (initializationType == 2) {
            A0B(this.A07, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), mediaView);
        } else if (initializationType == 3) {
            A0A(this.A07, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), adViewConstructorParams.getDefStyleRes(), mediaView);
        } else {
            throw new IllegalArgumentException(A02(155, 37, 116));
        }
        A02(true);
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onAttachedToView(AdComponentView adComponentView, AdComponentViewParentApi adComponentViewParentApi) {
        super.onAttachedToView(adComponentView, adComponentViewParentApi);
        this.A06 = adComponentViewParentApi;
    }

    @Override // com.facebook.ads.internal.api.Repairable
    public final void repair(Throwable th) {
        int width = this.A03.getWidth();
        int height = this.A03.getHeight();
        if (width <= 0 || height <= 0) {
            this.A03.repair(th);
            return;
        }
        this.A03.repair(th);
        this.A03.getLayoutParams().width = width;
        MediaView mediaView = this.A03;
        if (A0E[1].charAt(24) != 't') {
            String[] strArr = A0E;
            strArr[5] = "Mgb6bOJjyiN";
            strArr[0] = "MTEeDXbdwkPsq4eW7ABfM3WBi";
            mediaView.getLayoutParams().height = height;
            this.A03.setBackgroundColor(-3355444);
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void setListener(MediaViewListener mediaViewListener) {
        this.A04 = mediaViewListener;
        if (mediaViewListener == null) {
            ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A08(null);
        } else {
            ((AnonymousClass5B) this.A05.getMediaViewVideoRendererApi()).A08(new C0835Tg(this, mediaViewListener));
        }
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer) {
        boolean z;
        if (!this.A0C) {
            MediaViewVideoRenderer mediaViewVideoRenderer2 = this.A05;
            if (A0E[7].charAt(21) != 'L') {
                String[] strArr = A0E;
                strArr[6] = "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT";
                strArr[2] = "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9";
                if (mediaViewVideoRenderer2 != null) {
                    this.A03.removeView(mediaViewVideoRenderer2);
                    this.A05.getMediaViewVideoRendererApi().destroy();
                }
                ((AnonymousClass5B) mediaViewVideoRenderer.getMediaViewVideoRendererApi()).A06(this.A07.A06());
                mediaViewVideoRenderer.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                ((C0836Th) this.A03.getMediaViewApi()).A07(mediaViewVideoRenderer, layoutParams);
                this.A05 = mediaViewVideoRenderer;
                if (!(this.A05 instanceof DefaultMediaViewVideoRenderer)) {
                    z = true;
                } else {
                    z = false;
                }
                this.A0B = z;
                mediaViewVideoRenderer.setId(C0632Lh.A00());
                return;
            }
            throw new RuntimeException();
        }
        throw new IllegalStateException(A02(215, 43, 114));
    }
}
