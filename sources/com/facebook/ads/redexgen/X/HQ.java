package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
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
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class HQ extends TextureView implements TextureView.SurfaceTextureListener, AbstractC0748Pv, Q9, AbstractC0750Px {
    public static byte[] A0N;
    public static String[] A0O;
    public static final String A0P = HQ.class.getSimpleName();
    public float A00 = 1.0f;
    public int A01 = -1;
    public int A02 = 0;
    public int A03 = 0;
    public long A04;
    public long A05;
    public Uri A06;
    @Nullable
    public Surface A07;
    public View A08;
    @Nullable
    public MediaController A09;
    public XJ A0A;
    public PO A0B = PO.A04;
    @Nullable
    public C0751Py A0C;
    public QB A0D = QB.A04;
    public QB A0E = QB.A04;
    public QC A0F;
    @Nullable
    public String A0G;
    public boolean A0H = false;
    public boolean A0I = false;
    public boolean A0J = false;
    public boolean A0K = false;
    public boolean A0L = false;
    public boolean A0M = false;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 68);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0N = new byte[]{86, 126, 126, 118, 125, 116, 49, 112, 125, 102, 112, 104, 98, 49, 101, 121, 99, 126, 102, 49, 112, Byte.MAX_VALUE, 49, 116, 105, 114, 116, 97, 101, 120, 126, Byte.MAX_VALUE, 49, 102, 120, 101, 121, 49, 98, 116, 101, 83, 112, 114, 122, 118, 99, 126, 100, Byte.MAX_VALUE, 117, 85, 99, 112, 102, 112, 115, 125, 116, 49, 126, Byte.MAX_VALUE, 49, 95, 126, 100, 118, 112, 101, 49, 112, 115, 126, 103, 116, 63, 49, 98, 126, 49, 102, 116, 49, 98, 120, 125, 116, Byte.MAX_VALUE, 101, 125, 104, 49, 120, 118, Byte.MAX_VALUE, 126, 99, 116, 49, 120, 101, 63, 76, 100, 100, 108, 103, 110, 43, 106, 103, 124, 106, 114, 120, 43, Byte.MAX_VALUE, 99, 121, 100, 124, 43, 106, 101, 43, 110, 115, 104, 110, 123, Byte.MAX_VALUE, 98, 100, 101, 43, 124, 98, Byte.MAX_VALUE, 99, 43, 120, 110, Byte.MAX_VALUE, 77, 100, 121, 110, 108, 121, 100, 126, 101, 111, 43, 100, 101, 43, 69, 100, 126, 108, 106, Byte.MAX_VALUE, 43, 106, 105, 100, 125, 110, 37, 43, 120, 100, 43, 124, 110, 43, 120, 98, 103, 110, 101, Byte.MAX_VALUE, 103, 114, 43, 98, 108, 101, 100, 121, 110, 43, 98, Byte.MAX_VALUE, 37, 33, 30, 19, 18, 24, 87, 4, 3, 22, 3, 18, 87, 20, 31, 22, 25, 16, 18, 19, 87, 3, 24, 87, 95, 93, 86, 93, 74, 81, 91};
        String[] strArr = A0O;
        if (strArr[4].charAt(4) != strArr[6].charAt(4)) {
            String[] strArr2 = A0O;
            strArr2[3] = "4Rjqxy3w03hT2rk3wOaPN94qCv";
            strArr2[0] = "J56YrdEaTg6GnpCj3tljjm9xxp";
            return;
        }
        throw new RuntimeException();
    }

    public static void A08() {
        A0O = new String[]{"5i34yksohRV8hSvEB2dTOBGqhO", "V2RNkeamXobpzSRVkM4sjlG", "1HR", "8SLqGCa2wxiVkGjIaPVK9LXerY", "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN", "hgMiihLf1lx1lIiVFZ8jC", "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw", "iHXqYQoKvaPWKvo"};
    }

    static {
        A08();
        A07();
    }

    public HQ(XJ xj) {
        super(xj);
        this.A0A = xj;
    }

    public HQ(XJ xj, AttributeSet attributeSet) {
        super(xj, attributeSet);
        this.A0A = xj;
    }

    public HQ(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A0A = xj;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0085, code lost:
        if (r4 != null) goto L_0x0087;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x008f, code lost:
        if (r5.A0K == false) goto L_0x009c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00bb, code lost:
        if (r4 != null) goto L_0x0087;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A04() {
        /*
        // Method dump skipped, instructions count: 194
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.HQ.A04():void");
    }

    private void A05() {
        C0751Py py = this.A0C;
        if (py != null) {
            C0749Pw A092 = py.A09();
            String[] strArr = A0O;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0O;
            strArr2[3] = "yniwio37QFCiL85s5GWvJngxgc";
            strArr2[0] = "95HbvmBBNGyB2bovEph22CE4vZ";
            if (A092 != null) {
                A09(A092.A01, A092.A00);
            }
        }
    }

    private void A06() {
        Surface surface = this.A07;
        if (surface != null) {
            surface.release();
            this.A07 = null;
        }
        C0751Py py = this.A0C;
        if (py != null) {
            py.A0A();
            if (A0O[5].length() != 21) {
                throw new RuntimeException();
            }
            String[] strArr = A0O;
            strArr[3] = "he0jjWxzFB8qDestWT3k7cDZmQ";
            strArr[0] = "YQusGxI3ZRGEiRLtvLIlZ3cCdg";
            this.A0C = null;
        }
        this.A09 = null;
        this.A0M = false;
        setVideoState(QB.A04);
    }

    private void A09(int i, int i2) {
        if (i != this.A03 || i2 != this.A02) {
            this.A03 = i;
            this.A02 = i2;
            if (this.A03 != 0 && this.A02 != 0) {
                requestLayout();
            }
        }
    }

    public static boolean A0A() {
        return C0751Py.A04();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void A7T() {
        if (!this.A0H) {
            ACK(false, 3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A7d() {
        C0751Py py = this.A0C;
        return py != null && py.A0L();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A7e() {
        return this.A0M;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final boolean A88() {
        return this.A0L;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0748Pv
    public final void ABA(String str, Exception exc) {
        this.A0A.A0A().A93(str);
        this.A0A.A0A().A2z(1);
        setVideoState(QB.A03);
        this.A0A.A04().A8V(A03(219, 7, 124), C03228e.A16, new C03238f(exc));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0748Pv
    public final void ABB(boolean z, int i) {
        if (this.A0C != null) {
            if (i == 1) {
                QB qb = QB.A04;
                String[] strArr = A0O;
                if (strArr[3].length() != strArr[0].length()) {
                    setVideoState(qb);
                    return;
                }
                A0O[5] = "bt2gfLOq6VYcjgDmYUS3R";
                setVideoState(qb);
            } else if (i != 2) {
                if (i == 3) {
                    A05();
                    this.A04 = System.currentTimeMillis();
                    setRequestedVolume(this.A00);
                    long j = this.A05;
                    if (j > 0 && j < this.A0C.A08()) {
                        this.A0C.A0E(this.A05);
                        this.A05 = 0;
                    }
                    if (this.A0C.A07() != 0 && !z && this.A0M) {
                        setVideoState(QB.A05);
                        return;
                    } else if (!z && this.A0D != QB.A06) {
                        setVideoState(QB.A07);
                        QB qb2 = this.A0E;
                        String[] strArr2 = A0O;
                        if (strArr2[4].charAt(4) != strArr2[6].charAt(4)) {
                            String[] strArr3 = A0O;
                            strArr3[3] = "QOwsd8cFgtBxhwq2W5mYjt9JcX";
                            strArr3[0] = "NiYGjjh9hUScPgNoOA1xOqSddN";
                            if (qb2 != QB.A0A) {
                                return;
                            }
                        } else if (qb2 != QB.A0A) {
                            return;
                        }
                        AE5(this.A0B, 8);
                        QB qb3 = QB.A04;
                        String[] strArr4 = A0O;
                        if (strArr4[3].length() == strArr4[0].length()) {
                            A0O[5] = "yetXNvPdXumqVjXfCpilY";
                            this.A0E = qb3;
                            return;
                        }
                    } else {
                        return;
                    }
                } else if (i == 4) {
                    if (z) {
                        setVideoState(QB.A06);
                    }
                    C0751Py py = this.A0C;
                    if (A0O[5].length() == 21) {
                        A0O[5] = "KLjUXng8f5n9djrrPXv2F";
                        if (py != null) {
                            py.A0J(false);
                            if (!z) {
                                this.A0C.A0B();
                            }
                        }
                        this.A0M = false;
                        return;
                    }
                } else {
                    return;
                }
                throw new RuntimeException();
            } else {
                A05();
                int i2 = this.A01;
                if (A0O[1].length() != 30) {
                    String[] strArr5 = A0O;
                    strArr5[2] = "9yr";
                    strArr5[7] = "mKFyaVoRgsxwFz3";
                    if (i2 >= 0) {
                        int i3 = this.A01;
                        this.A01 = -1;
                        this.A0F.ABZ(i3, getCurrentPosition());
                        return;
                    }
                    return;
                }
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0750Px
    public final void AC7(int i, int i2, int i3, float f) {
        A09(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void ACK(boolean z, int i) {
        this.A0A.A0A().A2v(i);
        this.A0E = QB.A05;
        this.A0L = z;
        C0751Py py = this.A0C;
        if (py != null) {
            py.A0J(false);
        } else {
            setVideoState(QB.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AE1(int i) {
        this.A0A.A0A().A94(i);
        setVideoState(QB.A09);
        AEC(5);
        this.A05 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AE5(PO po, int i) {
        this.A0A.A0A().A36(i);
        this.A0L = false;
        this.A0E = QB.A0A;
        this.A0B = po;
        if (this.A0C == null) {
            setup(this.A06);
        } else if (this.A0D == QB.A07 || this.A0D == QB.A05 || this.A0D == QB.A06) {
            this.A0C.A0J(true);
            setVideoState(QB.A0A);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void AEC(int i) {
        this.A0A.A0A().A38(i);
        this.A0E = QB.A04;
        C0751Py py = this.A0C;
        if (py != null) {
            py.A0C();
            this.A0C.A0A();
            this.A0C = null;
        }
        setVideoState(QB.A04);
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void destroy() {
        A06();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getCurrentPosition() {
        C0751Py py = this.A0C;
        if (py != null) {
            return (int) py.A07();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getDuration() {
        C0751Py py = this.A0C;
        if (py == null) {
            return 0;
        }
        return (int) py.A08();
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public long getInitialBufferTime() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public PO getStartReason() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public QB getState() {
        return this.A0D;
    }

    public QB getTargetState() {
        return this.A0E;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getVideoHeight() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public int getVideoWidth() {
        return this.A03;
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
        if (J4.A1e(getContext()) && !isHardwareAccelerated()) {
            setVideoState(QB.A03);
            AEC(8);
        }
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = this.A07;
        if (surface != null) {
            surface.release();
        }
        this.A07 = new Surface(surfaceTexture);
        C0751Py py = this.A0C;
        if (py != null) {
            py.A0G(this.A07);
            if (this.A0D == QB.A05 && !this.A0L) {
                AE5(this.A0B, 7);
            }
        }
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Surface surface = this.A07;
        if (surface != null) {
            surface.release();
            this.A07 = null;
            C0751Py py = this.A0C;
            if (py != null) {
                py.A0G(null);
            }
        }
        if (this.A0D == QB.A05) {
            return true;
        }
        if (A0O[5].length() != 21) {
            throw new RuntimeException();
        }
        A0O[5] = "TScQzo9LVHiM3saFvXTgi";
        ACK(false, 5);
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.A0C != null) {
            MediaController mediaController = this.A09;
            if (mediaController != null && mediaController.isShowing()) {
                return;
            }
            if (!z) {
                if (this.A0D != QB.A05) {
                    A7T();
                }
            } else if (this.A0D == QB.A05 && !this.A0L) {
                AE5(this.A0B, 9);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public final void seekTo(int i) {
        if (this.A0C != null) {
            this.A01 = getCurrentPosition();
            this.A0C.A0E((long) i);
            return;
        }
        long j = (long) i;
        String[] strArr = A0O;
        if (strArr[2].length() != strArr[7].length()) {
            A0O[5] = "kfjJwAtkK1UY2s6fcoM3d";
            this.A05 = j;
            return;
        }
        throw new RuntimeException();
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        boolean isDebugBuild = AdInternalSettings.isDebugBuild();
        if (A0O[5].length() != 21) {
            throw new RuntimeException();
        }
        A0O[1] = "HF5JdwiOlRNKOfaOH";
        if (isDebugBuild) {
            Log.w(A0P, A03(0, 102, 85));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0H = z;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setControlsAnchorView(View view) {
        this.A08 = view;
        view.setOnTouchListener(new Q5(this));
    }

    public void setForeground(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setForeground(drawable);
        } else if (AdInternalSettings.isDebugBuild()) {
            String str = A0P;
            String[] strArr = A0O;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0O;
            strArr2[4] = "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY";
            strArr2[6] = "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m";
            Log.w(str, A03(102, 94, 79));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setFullScreen(boolean z) {
        this.A0J = z;
        if (z && !this.A0I) {
            setOnTouchListener(new Q4(this));
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setRequestedVolume(float f) {
        this.A00 = f;
        if (this.A0C != null && this.A0D != QB.A08 && this.A0D != QB.A04) {
            this.A0C.A0D(f);
        }
    }

    public void setTestMode(boolean z) {
        this.A0K = z;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setVideoMPD(@Nullable String str) {
        this.A0G = str;
    }

    private void setVideoState(QB qb) {
        if (qb != this.A0D) {
            if (BuildConfigApi.isDebug()) {
                String str = A03(196, 23, 51) + qb;
            }
            this.A0D = qb;
            if (this.A0D == QB.A0A) {
                this.A0M = true;
            }
            QC qc = this.A0F;
            if (qc != null) {
                qc.AC8(qb);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setVideoStateChangeListener(QC qc) {
        this.A0F = qc;
    }

    @Override // com.facebook.ads.redexgen.X.Q9
    public void setup(Uri uri) {
        this.A0A.A0A().A2y();
        if (this.A0C != null) {
            A06();
        }
        this.A06 = uri;
        setSurfaceTextureListener(this);
        A04();
    }
}
