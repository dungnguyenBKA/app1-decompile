package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Canvas;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import androidx.annotation.Nullable;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
/* renamed from: com.facebook.ads.redexgen.X.aO  reason: case insensitive filesystem */
public final class C1031aO extends NS {
    @Nullable
    public static ValueCallback A08;
    public static boolean A09 = false;
    public static boolean A0A = false;
    public static byte[] A0B;
    public static final String A0C = C1031aO.class.getSimpleName();
    public static final Set<String> A0D = new HashSet(2);
    public long A00 = -1;
    public long A01 = -1;
    public long A02 = -1;
    public long A03 = -1;
    public NJ A04;
    public NM A05;
    public final XJ A06;
    public final NP A07;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0B = new byte[]{83, 79, 79, 75, 49, 45, 45, 41, 42};
    }

    static {
        A09();
        A0D.add(A05(0, 4, 102));
        A0D.add(A05(4, 5, 4));
    }

    public C1031aO(XJ xj, Activity activity, NM nm) {
        super(activity);
        this.A05 = nm;
        this.A06 = xj;
        setWebChromeClient(A0D());
        this.A07 = A0E();
        setWebViewClient(this.A07);
        A08();
    }

    public C1031aO(XJ xj, NM nm) {
        super(xj);
        this.A05 = nm;
        this.A06 = xj;
        setWebChromeClient(A0D());
        this.A07 = A0E();
        setWebViewClient(this.A07);
        A08();
    }

    /* access modifiers changed from: private */
    /* renamed from: A04 */
    public final NP A0E() {
        return new NP(new WeakReference(this.A05), new WeakReference(this.A06));
    }

    private void A07() {
        if (this.A00 > -1 && this.A03 > -1 && this.A01 > -1) {
            this.A04.A06(false);
        }
    }

    private void A08() {
        A09 = J5.A03(this.A06);
        A0A = J5.A04(this.A06);
        WebSettings settings = getSettings();
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setAllowFileAccess(false);
        this.A04 = new NJ(this);
    }

    public static void A0A(int i, int i2, Intent intent) {
        if (A08 != null && i == 1001) {
            if (Build.VERSION.SDK_INT >= 21) {
                A08.onReceiveValue(WebChromeClient.FileChooserParams.parseResult(i2, intent));
            } else {
                A08.onReceiveValue(intent.getData());
            }
            A08 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final WebChromeClient A0D() {
        return new NO(new WeakReference(this.A06), new WeakReference(this.A05), new WeakReference(this.A04));
    }

    public final void A0F(long j) {
        if (this.A00 < 0) {
            this.A00 = j;
        }
        A07();
    }

    public final void A0G(long j) {
        if (this.A01 < 0) {
            this.A01 = j;
        }
        A07();
    }

    public final void A0H(long j) {
        if (this.A02 < 0) {
            this.A02 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final void destroy() {
        this.A05 = null;
        NY.A04(this);
        super.destroy();
    }

    public long getDomContentLoadedMs() {
        return this.A00;
    }

    public String getFirstUrl() {
        WebBackForwardList copyBackForwardList = copyBackForwardList();
        if (copyBackForwardList.getSize() > 0) {
            return copyBackForwardList.getItemAtIndex(0).getUrl();
        }
        return getUrl();
    }

    public long getLoadFinishMs() {
        return this.A01;
    }

    public long getResponseEndMs() {
        return this.A02;
    }

    public long getScrollReadyMs() {
        return this.A03;
    }

    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.A03 < 0 && computeVerticalScrollRange() > getHeight()) {
            this.A03 = System.currentTimeMillis();
            A07();
        }
    }

    public void setBrowserNavigationListener(NN nn) {
        this.A07.A03(new WeakReference<>(nn));
    }
}
