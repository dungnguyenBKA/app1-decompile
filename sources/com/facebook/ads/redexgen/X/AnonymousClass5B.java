package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5B  reason: invalid class name */
public final class AnonymousClass5B implements MediaViewVideoRendererApi {
    public static byte[] A0G;
    public static String[] A0H;
    public static final String A0I = MediaViewVideoRenderer.class.getSimpleName();
    public MediaViewVideoRenderer A00;
    public VideoAutoplayBehavior A01;
    public AnonymousClass55 A02 = new AnonymousClass55();
    public XJ A03;
    @Nullable
    public JT A04;
    public C0387At A05;
    public boolean A06;
    public boolean A07;
    @Nullable
    public NativeAd A08;
    public final AbstractC0629Le A09 = new C0461Eg(this);
    public final L4 A0A = new C0457Ec(this);
    public final KW A0B = new C0465Ek(this);
    public final KQ A0C = new El(this);
    public final KL A0D = new Em(this);
    public final K7 A0E = new C0462Eh(this);
    public final K1 A0F = new C0460Ef(this);

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A0G = new byte[]{-30, 7, 15, -6, 5, 2, -3, -71, -17, 2, -2, 16, -71, -4, 8, 7, 12, 13, 11, 14, -4, 13, 8, 11, -71, 9, -6, 11, -6, 6, 12, -71, 13, 18, 9, -2, -57, -34, -16, -16, -10, -12, -7, -14, -85, -8, 0, -2, -1, -85, -19, -16, -85, -5, -3, -16, -18, -16, -17, -16, -17, -85, -19, 4, -85, -20, -85, -18, -20, -9, -9, -85, -1, -6, -85, -16, -7, -14, -20, -14, -16, -34, -16, -16, -10, -73, -85, -20, -7, -17, -85, -15, -6, -9, -9, -6, 2, -16, -17, -85, -19, 4, -85, -20, -85, -18, -20, -9, -9, -85, -1, -6, -85, -17, -12, -2, -16, -7, -14, -20, -14, -16, -34, -16, -16, -10, -71, -27, -22, -12, -26, -17, -24, -30, -24, -26, -44, -26, -26, -20, -95, -28, -30, -19, -19, -26, -27, -95, -8, -22, -11, -23, -16, -10, -11, -95, -26, -17, -24, -30, -24, -26, -44, -26, -26, -20, -81, 74, 83, 76, 70, 76, 74, 56, 74, 74, 80, 5, 72, 70, 81, 81, 74, 73, 5, 92, 78, 89, 77, 84, 90, 89, 5, 73, 78, 88, 74, 83, 76, 70, 76, 74, 56, 74, 74, 80, 19};
    }

    public static void A03() {
        A0H = new String[]{"Ds1OlE9QLNwB", "aoTFD1mdY9qS2iG1b6xBMIzf9BXXSrYm", "osndMvDCAJCV1YpU", "nBivoQhUG9UhcV9idWewaYAmGQw5UcJS", "JB025Vwse6xgHKaH4PdlPsgjNbTaZijW", "Rr8Hg5ZtJOltbAd8rryGswWrdJNm13cq", "EfdUYpEvlCzoAxPYZB8PQhxNy", "DXUiKhR"};
    }

    static {
        A03();
        A02();
    }

    public final void A04() {
        this.A00.pause(false);
        this.A05.setClientToken(null);
        this.A05.setVideoMPD(null);
        this.A05.setVideoURI((Uri) null);
        this.A05.setVideoCTA(null);
        this.A05.setNativeAd(null);
        this.A01 = VideoAutoplayBehavior.DEFAULT;
        NativeAd nativeAd = this.A08;
        if (nativeAd != null) {
            C1143cD.A0J(nativeAd.getInternalNativeAd()).A1b(false, false);
        }
        this.A08 = null;
        JT jt = this.A04;
        if (jt != null) {
            jt.AEQ();
        }
    }

    public final void A05(NativeAd nativeAd) {
        this.A08 = nativeAd;
        this.A03.A0D(((C1143cD) nativeAd.getInternalNativeAd()).A11());
        AnonymousClass5C r2 = (AnonymousClass5C) nativeAd.getNativeAdApi();
        this.A05.setClientToken(C1143cD.A0J(nativeAd.getInternalNativeAd()).A1A());
        this.A05.setVideoMPD(r2.A02());
        this.A05.setVideoURI(r2.A03());
        C0794Rp adapter = C1143cD.A0J(nativeAd.getInternalNativeAd()).A0y();
        if (adapter != null) {
            this.A05.setVideoProgressReportIntervalMs(adapter.A0G());
        }
        this.A05.setVideoCTA(nativeAd.getAdCallToAction());
        this.A05.setNativeAd(nativeAd);
        this.A01 = r2.getVideoAutoplayBehavior();
        JT jt = this.A04;
        if (jt != null) {
            jt.ADo(nativeAd);
        }
    }

    public final void A06(JC jc) {
        this.A05.setAdEventManager(jc);
    }

    public final void A07(@Nullable JT jt) {
        this.A04 = jt;
    }

    public final void A08(@Nullable MH mh) {
        this.A05.setListener(mh);
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void destroy() {
        this.A05.A0S();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void disengageSeek(VideoStartReason videoStartReason) {
        if (!this.A06) {
            boolean isDebugBuild = AdInternalSettings.isDebugBuild();
            if (A0H[6].length() != 25) {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[0] = "WtsbSHtQErqq";
            strArr[2] = "XLMSbaKAMNULMDv3";
            if (isDebugBuild) {
                Log.w(A0I, A01(127, 40, 5));
                return;
            }
            return;
        }
        this.A06 = false;
        if (this.A07) {
            this.A05.A0Y(PO.A00(videoStartReason), 3);
        }
        this.A00.onSeekDisengaged();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void engageSeek() {
        if (!this.A06) {
            this.A06 = true;
            this.A07 = QB.A0A.equals(this.A05.getState());
            this.A05.A0b(false, 1);
            this.A00.onSeekEngaged();
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0I, A01(167, 40, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
        }
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApiProvider
    public final AdComponentViewApi getAdComponentViewApi() {
        return this.A02;
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int getCurrentTimeMs() {
        return this.A05.getCurrentPositionInMillis();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED)
    public final int getDuration() {
        return this.A05.getDuration();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final View getVideoView() {
        return this.A05.getVideoView();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    @FloatRange(from = 0.0d, to = 1.0d)
    public final float getVolume() {
        return this.A05.getVolume();
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer) {
        XJ A022;
        this.A00 = mediaViewVideoRenderer;
        Context context = adViewConstructorParams.getContext();
        if (context instanceof XJ) {
            A022 = (XJ) context;
        } else {
            A022 = AnonymousClass56.A02(context);
        }
        this.A03 = A022;
        int initializationType = adViewConstructorParams.getInitializationType();
        if (initializationType == 0) {
            this.A05 = new C0387At(A022);
        } else if (initializationType == 1) {
            this.A05 = new C0387At(A022, adViewConstructorParams.getAttributeSet());
        } else if (initializationType == 2) {
            this.A05 = new C0387At(A022, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr());
        } else if (initializationType == 3) {
            this.A05 = new C0387At(A022, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleRes());
        } else {
            throw new IllegalArgumentException(A01(0, 37, 29));
        }
        this.A05.setEnableBackgroundVideo(mediaViewVideoRenderer.shouldAllowBackgroundPlayback());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.A05.setLayoutParams(layoutParams);
        this.A02.addView(this.A05, -1, layoutParams);
        LF.A04(this.A05, LF.A0A);
        this.A05.getEventBus().A04(this.A0D, this.A0C, this.A0B, this.A0E, this.A09, this.A0F, this.A0A);
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void pause(boolean z) {
        this.A05.A0b(z, 2);
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void play(VideoStartReason videoStartReason) {
        this.A05.A0Y(PO.A00(videoStartReason), 2);
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void seekTo(@IntRange(from = 0) int i) {
        if (this.A06) {
            this.A05.A0V(i);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0I, A01(37, 90, 15));
        }
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.A05.setVolume(f);
    }

    @Override // com.facebook.ads.internal.api.MediaViewVideoRendererApi
    public final boolean shouldAutoplay() {
        C0387At at = this.A05;
        if (at == null || at.getState() == QB.A06) {
            return false;
        }
        if (this.A01 == VideoAutoplayBehavior.ON || this.A01 == VideoAutoplayBehavior.DEFAULT) {
            return true;
        }
        return false;
    }
}
