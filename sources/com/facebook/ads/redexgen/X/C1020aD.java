package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.aD  reason: case insensitive filesystem */
public final class C1020aD extends NS {
    public static byte[] A0D;
    public static String[] A0E;
    public static final String A0F = C1020aD.class.getSimpleName();
    public float A00;
    public C0625La A01 = new C0625La();
    @DoNotStrip
    public QD A02;
    @Nullable
    public QE A03;
    public boolean A04 = true;
    public final Path A05 = new Path();
    public final RectF A06 = new RectF();
    public final XJ A07;
    public final WeakReference<NV> A08;
    public final AtomicBoolean A09 = new AtomicBoolean();
    public final AtomicBoolean A0A = new AtomicBoolean(true);
    public final AtomicInteger A0B = new AtomicInteger(5000);
    public final AtomicReference<String> A0C = new AtomicReference<>();

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0E;
            if (strArr[7].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0E[1] = "qkBM5EbEKD4bLDmS2";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 94);
            i4++;
        }
    }

    public static void A07() {
        A0D = new byte[]{-23, 12, -21, 23, 22, 28, 26, 23, 20};
    }

    public static void A08() {
        A0E = new String[]{"8gq0YClbFfezV7VWazRrkmUo5IqHlAe0", "DZEC2fF8R1zbFaxtc", "FhN1N87P5UC3PnJCVDWnxEC", "JmSzPmcyjiRof3lizahs2qZ", "A3Evrr3LcR4BJzz79LIh", "2a6NLKfKqYFtWGCWoigE8lnPrM", "Nz12Z6hGfXPsqa2uThDzH9TN", "eI6gTMB0yvKckA2LC3VZ0zYV"};
    }

    static {
        A08();
        A07();
    }

    public C1020aD(XJ xj, WeakReference<NV> weakReference, int i) {
        super(xj);
        this.A07 = xj;
        this.A08 = weakReference;
        this.A02 = new C1024aH(this);
        this.A03 = new QE(this, i, new WeakReference(this.A02), this.A07);
        setWebChromeClient(A0D());
        setWebViewClient(A0E());
        getSettings().setSupportZoom(false);
        getSettings().setCacheMode(1);
        if (Build.VERSION.SDK_INT > 16) {
            addJavascriptInterface(new NU(this, weakReference.get(), this.A03, this.A09, this.A0A, this.A07), A04(0, 9, 74));
        }
    }

    /* access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.NS
    public void A06() {
        this.A07.A0A().AEW();
        this.A09.set(true);
        new Handler(Looper.getMainLooper()).post(new C1022aF(this.A03));
    }

    @VisibleForTesting
    private final boolean A0A() {
        return this.A09.get();
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final WebChromeClient A0D() {
        return new NW();
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final WebViewClient A0E() {
        return new NX(this.A07, this.A08, new WeakReference(this.A03), new WeakReference(this.A01), new WeakReference(this.A0A), new WeakReference(this), this.A0B, this.A0C);
    }

    public final void A0F(int i, int i2) {
        QE qe = this.A03;
        if (qe != null) {
            qe.A0X(i);
            this.A03.A0Y(i2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NS
    public final void destroy() {
        QE qe = this.A03;
        if (qe != null) {
            qe.A0W();
            this.A03 = null;
        }
        C0632Lh.A0M(this);
        this.A02 = null;
        this.A01 = null;
        NY.A04(this);
        super.destroy();
    }

    public C0625La getTouchDataRecorder() {
        return this.A01;
    }

    public QE getViewabilityChecker() {
        return this.A03;
    }

    public final void onDraw(Canvas canvas) {
        if (this.A00 > 0.0f) {
            this.A06.set(0.0f, 0.0f, (float) getWidth(), (float) getHeight());
            this.A05.reset();
            Path path = this.A05;
            RectF rectF = this.A06;
            float f = this.A00;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
            canvas.clipPath(this.A05);
        }
        super.onDraw(canvas);
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A01.A07(motionEvent, this, this);
        return super.onTouchEvent(motionEvent);
    }

    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.A08.get() != null) {
            this.A08.get();
        }
        if (this.A03 != null) {
            this.A07.A0A().AEj(i);
            if (A0E[1].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[7] = "DtJWCHxLbH6gtxJRxIB1oyEG";
            strArr[6] = "cIpyg99BbIZ2paT5Gicx86FT";
            if (i == 0 && A0A()) {
                this.A03.A0V();
            } else if (i == 8) {
                this.A03.A0W();
            }
        }
    }

    public void setCheckAssetsByJavascriptBridge(boolean z) {
        this.A0A.set(z);
    }

    public void setCornerRadius(float f) {
        this.A00 = f;
        invalidate();
    }

    public void setLogMultipleImpressions(boolean z) {
        this.A04 = z;
    }

    public void setRequestId(String str) {
        this.A0C.set(str);
    }

    public void setWebViewTimeoutInMillis(int i) {
        if (i >= 0) {
            this.A0B.set(i);
        }
    }
}
