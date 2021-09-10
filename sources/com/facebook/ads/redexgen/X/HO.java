package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import org.apache.http.HttpStatus;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class HO extends TextureView implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener, Q9 {
    public static byte[] A0N;
    public static String[] A0O;
    public static final String A0P = HO.class.getSimpleName();
    public float A00 = 1.0f;
    public int A01 = 3;
    public int A02 = 0;
    public int A03 = 0;
    public int A04 = 0;
    public int A05 = 0;
    @Nullable
    public MediaPlayer A06;
    public Uri A07;
    public Surface A08;
    public View A09;
    @Nullable
    public MediaController A0A;
    public PO A0B = PO.A04;
    public QB A0C = QB.A04;
    public QB A0D = QB.A04;
    public QC A0E;
    public boolean A0F = false;
    public boolean A0G = false;
    public boolean A0H = false;
    public boolean A0I = false;
    public boolean A0J = false;
    public final long A0K;
    public final MediaController.MediaPlayerControl A0L = new Q6(this);
    public final XJ A0M;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0N = new byte[]{89, 87, 91, 89, 30, 3, 15, 9, 26, 89, 91, 65, 91, 89, 57, 102, 105, 75, 68, 68, 69, 94, 10, 90, 88, 79, 90, 75, 88, 79, 10, 71, 79, 78, 67, 75, 10, 90, 70, 75, 83, 79, 88, 10, 93, 67, 94, 66, 10, 121, 95, 88, 76, 75, 73, 79, 126, 79, 82, 94, 95, 88, 79, 16, 10, 45, 1, 27, 2, 10, 0, 73, 26, 78, 28, 11, 26, 28, 7, 11, 24, 11, 78, 24, 7, 10, 11, 1, 78, 7, 0, 8, 1, 28, 3, 15, 26, 7, 1, 0, 93, 122, 114, 119, 126, Byte.MAX_VALUE, 59, 111, 116, 59, 116, 107, 126, 117, 59, 122, 104, 104, 126, 111, 104, 59, 15, 39, 39, 47, 36, 45, 104, 41, 36, 63, 41, 49, 59, 104, 60, 32, 58, 39, 63, 104, 41, 38, 104, 45, 48, 43, 45, 56, 60, 33, 39, 38, 104, 63, 33, 60, 32, 104, 59, 45, 60, 10, 41, 43, 35, 47, 58, 39, 61, 38, 44, 12, 58, 41, 63, 41, 42, 36, 45, 104, 39, 38, 104, 6, 39, 61, 47, 41, 60, 104, 41, 42, 39, 62, 45, 102, 104, 59, 39, 104, 63, 45, 104, 59, 33, 36, 45, 38, 60, 36, 49, 104, 33, 47, 38, 39, 58, 45, 104, 33, 60, 102, 50, 26, 26, 18, 25, 16, 85, 20, 25, 2, 20, 12, 6, 85, 1, 29, 7, 26, 2, 85, 20, 27, 85, 16, 13, 22, 16, 5, 1, 28, 26, 27, 85, 2, 28, 1, 29, 85, 6, 16, 1, 51, 26, 7, 16, 18, 7, 26, 0, 27, 17, 85, 26, 27, 85, 59, 26, 0, 18, 20, 1, 85, 20, 23, 26, 3, 16, 91, 85, 6, 26, 85, 2, 16, 85, 6, 28, 25, 16, 27, 1, 25, 12, 85, 28, 18, 27, 26, 7, 16, 85, 28, 1, 91, 31, 54, 37, 51, 32, 54, 37, 50, 119, 54, 52, 52, 50, 59, 50, 37, 54, 35, 62, 56, 57, 119, 34, 57, 54, 33, 54, 62, 59, 54, 53, 59, 50, 22, 45, 34, 33, 47, 38, 99, 55, 44, 99, 32, 47, 44, 48, 38, 53, 10, 7, 6, 12, 67, 16, 23, 2, 23, 6, 67, 0, 11, 2, 13, 4, 6, 7, 67, 23, 12, 67, 97, 115, 115, 101, 116, 83, 79, 66, 90, 70, 81, 115, 108, 97, 96, 106, 94, 7, 82, 77, 68, 81, 7, 5, 31, 5, 7};
    }

    public static void A05() {
        A0O = new String[]{"w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2", "acNB2lhq8cVPZLtYghlcj8euurSBcqdx", "I2BPPFoGG3lXsTKKPy2FKKasdsM", "uMMu8699SI696vicAGdUyhB1Kjcnsg5D", "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml", "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI", "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI", "euMEykkwaXnS"};
    }

    static {
        A05();
        A04();
    }

    public HO(XJ xj) {
        super(xj);
        this.A0M = xj;
    }

    public HO(XJ xj, AttributeSet attributeSet) {
        super(xj, attributeSet);
        this.A0M = xj;
    }

    public HO(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A0M = xj;
    }

    private boolean A06() {
        return (this.A0C == QB.A08 || this.A0C == QB.A07) ? false : true;
    }

    private boolean A07() {
        return this.A0C == QB.A07 || this.A0C == QB.A0A || this.A0C == QB.A05 || this.A0C == QB.A06;
    }

    private boolean A08() {
        return (this.A0C == QB.A08 || this.A0C == QB.A07) ? false : true;
    }

    private boolean A09() {
        MediaPlayer mediaPlayer = this.A06;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            mediaPlayer.reset();
            return true;
        } catch (IllegalStateException e) {
            this.A0M.A04().A8V(A03(394, 6, 81), C03228e.A1x, new C03238f(e));
            return false;
        }
    }

    private boolean A0A(@Nullable Surface surface) {
        MediaPlayer mediaPlayer = this.A06;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            mediaPlayer.setSurface(surface);
            return true;
        } catch (IllegalStateException e) {
            this.A0M.A04().A8V(A03(394, 6, 81), C03228e.A1y, new C03238f(e));
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A7T() {
        if (!this.A0F) {
            ACK(false, 3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    @SuppressLint({"NewApi"})
    public final boolean A7d() {
        if (this.A06 == null || Build.VERSION.SDK_INT < 16) {
            return false;
        }
        try {
            for (MediaPlayer.TrackInfo trackInfo : this.A06.getTrackInfo()) {
                int trackType = trackInfo.getTrackType();
                String[] strArr = A0O;
                if (strArr[3].charAt(29) != strArr[6].charAt(29)) {
                    throw new RuntimeException();
                }
                A0O[5] = "iSqF26gJBktCMb0RObgKl91oEThpz7Z0";
                if (trackType == 2) {
                    return true;
                }
            }
            return false;
        } catch (RuntimeException e) {
            Log.e(A0P, A03(65, 35, 28), e);
            return true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A7e() {
        return this.A0J;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A88() {
        return this.A0I;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void ACK(boolean z, int i) {
        this.A0M.A0A().A2v(i);
        this.A0D = QB.A05;
        if (this.A06 == null) {
            setVideoState(QB.A04);
        } else if (A06()) {
            this.A0I = z;
            this.A06.pause();
            if (this.A0C != QB.A06) {
                setVideoState(QB.A05);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AE1(int i) {
        this.A0M.A0A().A94(i);
        setVideoState(QB.A09);
        AEC(5);
        this.A03 = 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0041, code lost:
        if (r5.A0C != com.facebook.ads.redexgen.X.QB.A06) goto L_0x004c;
     */
    @Override // com.facebook.ads.redexgen.X.Q9
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void AE5(com.facebook.ads.redexgen.X.PO r6, int r7) {
        /*
        // Method dump skipped, instructions count: 156
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HO.AE5(com.facebook.ads.redexgen.X.PO, int):void");
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AEC(int i) {
        this.A0M.A0A().A38(i);
        this.A0D = QB.A04;
        MediaPlayer mediaPlayer = this.A06;
        if (mediaPlayer != null) {
            int currentPosition = mediaPlayer.getCurrentPosition();
            if (currentPosition > 0) {
                this.A03 = currentPosition;
            }
            this.A06.stop();
            if (A0O[4].charAt(14) != '3') {
                A0O[5] = "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv";
                A09();
                this.A06.release();
                this.A06 = null;
                MediaController mediaController = this.A0A;
                if (mediaController != null) {
                    mediaController.hide();
                    this.A0A.setEnabled(false);
                }
            } else {
                throw new RuntimeException();
            }
        }
        setVideoState(QB.A04);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void destroy() {
        if (this.A06 != null) {
            A0A(null);
            this.A06.setOnBufferingUpdateListener(null);
            this.A06.setOnCompletionListener(null);
            this.A06.setOnErrorListener(null);
            this.A06.setOnInfoListener(null);
            this.A06.setOnPreparedListener(null);
            this.A06.setOnVideoSizeChangedListener(null);
            this.A06.setOnSeekCompleteListener(null);
            A09();
            this.A06 = null;
            setVideoState(QB.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getCurrentPosition() {
        if (this.A06 == null || !A07()) {
            return 0;
        }
        return this.A06.getCurrentPosition();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getDuration() {
        if (this.A06 == null) {
            return 0;
        }
        boolean A072 = A07();
        String[] strArr = A0O;
        if (strArr[3].charAt(29) != strArr[6].charAt(29)) {
            throw new RuntimeException();
        }
        A0O[1] = "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ";
        if (!A072) {
            return 0;
        }
        return this.A06.getDuration();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public long getInitialBufferTime() {
        return this.A0K;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public PO getStartReason() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public QB getState() {
        return this.A0C;
    }

    public QB getTargetState() {
        return this.A0D;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getVideoHeight() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getVideoWidth() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public float getVolume() {
        return this.A00;
    }

    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            setVideoState(QB.A03);
            this.A0M.A0A().A2z(5);
            AEC(8);
            this.A0M.A04().A8V(A03(HttpStatus.SC_BAD_REQUEST, 5, 119), C03228e.A2F, new C03238f(A03(318, 33, 37)));
        }
    }

    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        MediaPlayer mediaPlayer2 = this.A06;
        if (mediaPlayer2 != null) {
            mediaPlayer2.pause();
        }
        setVideoState(QB.A06);
        seekTo(0);
        this.A03 = 0;
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.A0M.A0A().A93(A03(HttpStatus.SC_METHOD_NOT_ALLOWED, 11, 87) + i + A03(0, 14, 9) + i2 + A03(14, 2, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS));
        if (this.A01 <= 0 || getState() != QB.A0A) {
            setVideoState(QB.A03);
            this.A0M.A0A().A2z(1);
            AEC(7);
        } else {
            this.A01--;
            AEC(6);
            AE5(this.A0B, 10);
        }
        return true;
    }

    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        if (i != 3) {
            if (i == 701) {
                QB qb = QB.A02;
                if (A0O[4].charAt(14) != '3') {
                    String[] strArr = A0O;
                    strArr[3] = "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q";
                    strArr[6] = "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6";
                    setVideoState(qb);
                } else {
                    setVideoState(qb);
                }
            } else if (i == 702 && A08()) {
                setVideoState(QB.A0A);
            }
            String[] strArr2 = A0O;
            if (strArr2[3].charAt(29) != strArr2[6].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr3 = A0O;
            strArr3[3] = "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3";
            strArr3[6] = "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg";
            return false;
        }
        this.A0J = true;
        if (this.A0D == QB.A0A) {
            setVideoState(QB.A0A);
        }
        return true;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        setVideoState(QB.A07);
        if (this.A0H && !this.A0G) {
            Activity A092 = this.A0M.A09();
            if (A092 != null) {
                this.A0A = new MediaController(A092);
                MediaController mediaController = this.A0A;
                View view = this.A09;
                if (view == null) {
                    view = this;
                }
                mediaController.setAnchorView(view);
                MediaController mediaController2 = this.A0A;
                MediaController.MediaPlayerControl mediaPlayerControl = this.A0L;
                if (A0O[1].charAt(7) != 'q') {
                    throw new RuntimeException();
                }
                String[] strArr = A0O;
                strArr[3] = "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX";
                strArr[6] = "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL";
                mediaController2.setMediaPlayer(mediaPlayerControl);
                this.A0A.setEnabled(true);
            } else {
                this.A0A = null;
            }
        }
        setRequestedVolume(this.A00);
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        int i = this.A03;
        if (i > 0) {
            if (i >= this.A06.getDuration()) {
                this.A03 = 0;
            }
            this.A06.seekTo(this.A03);
            this.A03 = 0;
        }
        QB qb = this.A0D;
        QB qb2 = QB.A0A;
        String[] strArr2 = A0O;
        if (strArr2[2].length() != strArr2[0].length()) {
            String[] strArr3 = A0O;
            strArr3[3] = "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3";
            strArr3[6] = "nPyigXhxANl12gOwrMulZJ84NGYQcgH1";
            if (qb == qb2) {
                AE5(this.A0B, 8);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        QC qc = this.A0E;
        if (qc != null) {
            qc.ABZ(this.A02, this.A03);
            this.A03 = 0;
        }
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.A08 == null) {
            this.A08 = new Surface(surfaceTexture);
        }
        if (!A0A(this.A08)) {
            setVideoState(QB.A03);
            this.A0M.A0A().A2z(4);
            destroy();
        } else if (this.A0C == QB.A05 && !this.A0I) {
            AE5(this.A0B, 7);
        }
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        A0A(null);
        Surface surface = this.A08;
        if (surface != null) {
            surface.release();
            this.A08 = null;
        }
        if (this.A0C != QB.A05) {
            ACK(false, 5);
        }
        if (A0O[1].charAt(7) != 'q') {
            throw new RuntimeException();
        }
        A0O[5] = "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt";
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        if (this.A05 != 0 && this.A04 != 0) {
            requestLayout();
        }
    }

    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.A06 != null) {
            MediaController mediaController = this.A0A;
            if (mediaController != null && mediaController.isShowing()) {
                return;
            }
            if (!z) {
                if (this.A0C != QB.A05) {
                    A7T();
                }
            } else if (this.A0C == QB.A05 && !this.A0I) {
                AE5(this.A0B, 9);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void seekTo(int i) {
        if (this.A06 == null || !A07()) {
            this.A03 = i;
        } else if (i < getDuration() && i > 0) {
            this.A02 = getCurrentPosition();
            this.A03 = i;
            this.A06.seekTo(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setBackgroundDrawable(drawable);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0P, A03(122, 102, 58));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0F = z;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setControlsAnchorView(View view) {
        this.A09 = view;
        view.setOnTouchListener(new Q8(this));
    }

    public void setForeground(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setForeground(drawable);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0P, A03(224, 94, 7));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setFullScreen(boolean z) {
        this.A0H = z;
        if (this.A0H && !this.A0G) {
            setOnTouchListener(new Q7(this));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setRequestedVolume(float f) {
        this.A00 = f;
        if (this.A06 != null && this.A0C != QB.A08 && this.A0C != QB.A04) {
            this.A06.setVolume(f, f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setVideoMPD(@Nullable String str) {
    }

    private void setVideoState(QB qb) {
        if (qb != this.A0C) {
            if (BuildConfigApi.isDebug()) {
                String str = A03(366, 23, 17) + qb;
            }
            this.A0C = qb;
            QC qc = this.A0E;
            if (qc != null) {
                qc.AC8(qb);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setVideoStateChangeListener(QC qc) {
        this.A0E = qc;
    }

    /* JADX INFO: Multiple debug info for r3v0 java.lang.String: [D('start' long), D('e' java.io.IOException)] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00ec A[SYNTHETIC, Splitter:B:31:0x00ec] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0109 A[SYNTHETIC, Splitter:B:37:0x0109] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x019c  */
    /* JADX WARNING: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.Q9
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setup(android.net.Uri r16) {
        /*
        // Method dump skipped, instructions count: 420
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HO.setup(android.net.Uri):void");
    }
}
