package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpStatus;

public class PD extends RelativeLayout implements QC, PI, QA {
    public static String[] A0D;
    public static final C0626Lb A0E = new C0626Lb();
    public static final KU A0F = new KU();
    public static final KN A0G = new KN();
    public static final K6 A0H = new K6();
    public static final K5 A0I = new K5();
    public static final K2 A0J = new K2();
    public static final K0 A0K = new K0();
    public static final C0600Jy A0L = new C0600Jy();
    public int A00 = HttpStatus.SC_OK;
    public JJ A01;
    public PM A02;
    public boolean A03;
    public boolean A04;
    public boolean A05 = true;
    public final Handler A06 = new Handler();
    public final Handler A07 = new Handler();
    public final View.OnTouchListener A08 = new PG(this);
    public final XJ A09;
    public final AnonymousClass9F<AnonymousClass9G, AnonymousClass9E> A0A = new AnonymousClass9F<>();
    public final List<PP> A0B = new ArrayList();
    public final Q9 A0C;

    public static void A0H() {
        A0D = new String[]{"bTF0mPynjITMPKd7AWnGFE0wjuUHqGk", "NLuteA0O4hImypGMVaagZ7KROvpQko", "vHIsSgA1dNPe0TxNLDw8T5r", "Tu3OEd7", "fTm", "FLX2LFKD3Z9kyRG7iyj3Ajj18EKg1", "ES7oyLysdjBWPeOJZDQ9P8Sn", "e8"};
    }

    static {
        A0H();
    }

    public PD(XJ xj) {
        super(xj);
        this.A09 = xj;
        if (A0P(xj)) {
            this.A0C = new HQ(xj);
        } else {
            this.A0C = new HO(xj);
        }
        A0F();
    }

    public PD(XJ xj, AttributeSet attributeSet) {
        super(xj, attributeSet);
        this.A09 = xj;
        if (A0P(xj)) {
            this.A0C = new HQ(xj, attributeSet);
        } else {
            this.A0C = new HO(xj, attributeSet);
        }
        A0F();
    }

    public PD(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A09 = xj;
        if (A0P(xj)) {
            this.A0C = new HQ(xj, attributeSet, i);
        } else {
            this.A0C = new HO(xj, attributeSet, i);
        }
        A0F();
    }

    public static /* synthetic */ KU A0B() {
        KU ku = A0F;
        if (A0D[1].length() != 30) {
            throw new RuntimeException();
        }
        A0D[2] = "s0JISK";
        return ku;
    }

    public static /* synthetic */ KN A0C() {
        KN kn = A0G;
        if (A0D[0].length() != 31) {
            throw new RuntimeException();
        }
        A0D[6] = "XnBln0F0zo0j2g49JSScdoR2";
        return kn;
    }

    private void A0F() {
        this.A09.A0A().A2u();
        this.A0C.setRequestedVolume(1.0f);
        this.A0C.setVideoStateChangeListener(this);
        this.A02 = new PM(this.A09, this.A0C);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.A02, layoutParams);
        setOnTouchListener(this.A08);
    }

    /* access modifiers changed from: private */
    public void A0G() {
        this.A06.postDelayed(new PU(this), (long) this.A00);
    }

    private final void A0I() {
        for (PP plugin : this.A0B) {
            if (plugin instanceof MP) {
                A0N((MP) plugin);
            }
            plugin.A8K(this);
        }
    }

    /* access modifiers changed from: private */
    public void A0J(JI ji) {
        JJ jj = this.A01;
        if (jj != null) {
            jj.A03(ji, null);
        }
    }

    private void A0M(PP pp) {
        if (pp instanceof MP) {
            A0O((MP) pp);
        }
        pp.AEO(this);
    }

    private void A0N(MP mp) {
        if (mp.getParent() != null) {
            return;
        }
        if (mp instanceof AnonymousClass7Z) {
            this.A02.A01(mp);
        } else {
            addView(mp);
        }
    }

    private void A0O(MP mp) {
        if (mp instanceof AnonymousClass7Z) {
            this.A02.A02(mp);
        } else {
            C0632Lh.A0M(mp);
        }
    }

    private boolean A0P(XJ xj) {
        return J4.A1u(xj, C0751Py.A04());
    }

    public final void A0S() {
        this.A0C.setVideoStateChangeListener(null);
        this.A0C.destroy();
    }

    public final void A0T() {
        if (!A0f()) {
            this.A0C.A7T();
        }
    }

    public final void A0U() {
        Iterator<PP> it = this.A0B.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A0D[0].length() != 31) {
                throw new RuntimeException();
            }
            A0D[0] = "GYUlZXdJo7nruMh2UHaMalRUd7rYm0D";
            if (hasNext) {
                A0M(it.next());
            } else {
                this.A0B.clear();
                String[] strArr = A0D;
                if (strArr[4].length() != strArr[3].length()) {
                    String[] strArr2 = A0D;
                    strArr2[4] = "dBG";
                    strArr2[3] = "pEPub8w";
                    return;
                }
                return;
            }
        }
    }

    public final void A0V(int i) {
        this.A06.removeCallbacksAndMessages(null);
        this.A0C.seekTo(i);
    }

    public final void A0W(int i) {
        this.A0C.AEC(i);
    }

    public final void A0X(PK pk) {
        this.A07.post(new PH(this));
        this.A0C.AE1(pk.A02());
    }

    public final void A0Y(PO po, int i) {
        if (this.A03 && this.A0C.getState() == QB.A06) {
            this.A03 = false;
        }
        this.A0C.AE5(po, i);
    }

    public final void A0Z(PP pp) {
        this.A0B.add(pp);
    }

    public final void A0a(PP pp) {
        this.A0B.remove(pp);
        A0M(pp);
    }

    public final void A0b(boolean z, int i) {
        if (!A0f()) {
            this.A0C.ACK(z, i);
        }
    }

    public final void A0c(boolean z, boolean z2, int i) {
        this.A05 = z2;
        A0b(z, i);
    }

    public final boolean A0d() {
        return this.A0C.A7d();
    }

    public final boolean A0e() {
        return getVolume() == 0.0f;
    }

    public final boolean A0f() {
        return getState() == QB.A05;
    }

    public final boolean A0g() {
        return A0f() && this.A0C.A88();
    }

    public final boolean A0h() {
        return getState() == QB.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public final boolean A81() {
        return A0P(this.A09);
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public final boolean A84() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final void AAk() {
        A0b(true, 4);
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final void AAl() {
        A0Y(PO.A05, 6);
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final void ABZ(int i, int i2) {
        this.A07.post(new PS(this, i, i2));
        A0G();
    }

    @Override // com.facebook.ads.redexgen.X.QC
    public final void AC8(QB qb) {
        int currentPositionInMillis = getCurrentPositionInMillis();
        this.A07.post(new PT(this, qb, getDuration(), currentPositionInMillis));
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public int getCurrentPositionInMillis() {
        return this.A0C.getCurrentPosition();
    }

    public int getDuration() {
        return this.A0C.getDuration();
    }

    @NonNull
    public AnonymousClass9F<AnonymousClass9G, AnonymousClass9E> getEventBus() {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public long getInitialBufferTime() {
        return this.A0C.getInitialBufferTime();
    }

    public QB getState() {
        return this.A0C.getState();
    }

    public Handler getStateHandler() {
        return this.A07;
    }

    public TextureView getTextureView() {
        return (TextureView) this.A0C;
    }

    public int getVideoHeight() {
        return this.A0C.getVideoHeight();
    }

    public int getVideoProgressReportIntervalMs() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public PO getVideoStartReason() {
        return this.A0C.getStartReason();
    }

    public View getVideoView() {
        return this.A02;
    }

    public int getVideoWidth() {
        return this.A0C.getVideoWidth();
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.PI
    public float getVolume() {
        return this.A0C.getVolume();
    }

    public void onAttachedToWindow() {
        this.A0A.A03(A0K);
        super.onAttachedToWindow();
    }

    public void onDetachedFromWindow() {
        this.A0A.A03(A0L);
        super.onDetachedFromWindow();
    }

    public void setControlsAnchorView(View view) {
        Q9 q9 = this.A0C;
        if (q9 != null) {
            q9.setControlsAnchorView(view);
        }
    }

    public void setFunnelLoggingHandler(JJ jj) {
        this.A01 = jj;
    }

    public void setIsFullScreen(boolean z) {
        this.A04 = z;
        this.A0C.setFullScreen(z);
    }

    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
    }

    public void setVideoMPD(@Nullable String str) {
        this.A0C.setVideoMPD(str);
    }

    public void setVideoProgressReportIntervalMs(int i) {
        this.A00 = i;
    }

    public void setVideoURI(@Nullable Uri uri) {
        if (uri == null) {
            A0U();
        } else {
            A0I();
            this.A0C.setup(uri);
        }
        this.A03 = false;
    }

    public void setVideoURI(@Nullable String str) {
        Uri uri;
        this.A09.A0A().A31(str);
        if (str != null) {
            uri = Uri.parse(str);
        } else {
            uri = null;
        }
        setVideoURI(uri);
    }

    public void setVolume(float f) {
        if (f == 1.0f) {
            A0J(JI.A0b);
            this.A09.A0A().A35();
        } else {
            A0J(JI.A0a);
            this.A09.A0A().A34();
        }
        this.A0C.setRequestedVolume(f);
        AnonymousClass9F<AnonymousClass9G, AnonymousClass9E> eventBus = getEventBus();
        if (A0D[2].length() != 19) {
            A0D[2] = "etD2zaPMct9y2wbR2YehsJmmTem";
            eventBus.A03(A0J);
            return;
        }
        throw new RuntimeException();
    }
}
