package com.facebook.ads.redexgen.X;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.google.ads.ADRequestList;
import java.util.Iterator;
import java.util.List;

public final class YI implements J0, B7, GF, AbstractC0452Dx, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01;
    public final /* synthetic */ C0442Dj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"tENgV7sVRmCggStQb7ahqyncu3McMlqx", "EBCLDe86SI67l2WgLGk", "Xc2z6PWfFp", "ZjGJvfPpi7mMWyj8ThC73X2hXIQsvVeY", "O", "wm4K2NOZzdg8zteNHm", "uxR1U8t68FFaIgGW", "ZP1sAESULwb937k6ya35I8qp57tsUFN9"};
    }

    public YI(C0442Dj dj) {
        this.A00 = dj;
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9S(String str, long j, long j2) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((B7) it.next()).A9S(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9T(C0394Ba ba) {
        Iterator it = this.A00.A0I.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[0].charAt(30) != strArr[7].charAt(30)) {
                String[] strArr2 = A01;
                strArr2[4] = ADRequestList.ORDER_R;
                strArr2[1] = "Pw7sEp82k0vieihjeRw";
                if (hasNext) {
                    B7 b7 = (B7) it.next();
                    if (A01[3].charAt(20) != '3') {
                        throw new RuntimeException();
                    }
                    A01[5] = "rZ";
                    b7.A9T(ba);
                } else {
                    C0442Dj dj = this.A00;
                    String[] strArr3 = A01;
                    if (strArr3[0].charAt(30) != strArr3[7].charAt(30)) {
                        A01[5] = "AJXnTxM8Cjr";
                        dj.A06 = null;
                        this.A00.A09 = null;
                        this.A00.A01 = 0;
                        return;
                    }
                    throw new RuntimeException();
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9U(C0394Ba ba) {
        this.A00.A09 = ba;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((B7) it.next()).A9U(ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9V(Format format) {
        this.A00.A06 = format;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((B7) it.next()).A9V(format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9W(int i) {
        this.A00.A01 = i;
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            B7 b7 = (B7) it.next();
            if (A01[2].length() != 11) {
                A01[2] = "0C";
                b7.A9W(i);
            } else {
                throw new RuntimeException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B7
    public final void A9X(int i, long j, long j2) {
        Iterator it = this.A00.A0I.iterator();
        while (it.hasNext()) {
            ((B7) it.next()).A9X(i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.GF
    public final void A9s(List<GB> list) {
        this.A00.A0C = list;
        Iterator it = this.A00.A0K.iterator();
        while (it.hasNext()) {
            ((GF) it.next()).A9s(list);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void AA3(int i, long j) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((J0) it.next()).AA3(i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0452Dx
    public final void AAr(Metadata metadata) {
        Iterator it = this.A00.A0J.iterator();
        while (it.hasNext()) {
            ((AbstractC0452Dx) it.next()).AAr(metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABQ(Surface surface) {
        if (this.A00.A03 == surface) {
            Iterator it = this.A00.A0M.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        Iterator it2 = this.A00.A0L.iterator();
        while (it2.hasNext()) {
            ((J0) it2.next()).ABQ(surface);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABx(String str, long j, long j2) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((J0) it.next()).ABx(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABy(C0394Ba ba) {
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            ((J0) it.next()).ABy(ba);
        }
        this.A00.A07 = null;
        this.A00.A0A = null;
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void ABz(C0394Ba ba) {
        this.A00.A0A = ba;
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            J0 j0 = (J0) it.next();
            if (A01[3].charAt(20) != '3') {
                throw new RuntimeException();
            }
            A01[5] = "6iGRC7";
            j0.ABz(ba);
        }
    }

    @Override // com.facebook.ads.redexgen.X.J0
    public final void AC2(Format format) {
        this.A00.A07 = format;
        Iterator it = this.A00.A0L.iterator();
        while (it.hasNext()) {
            J0 j0 = (J0) it.next();
            String[] strArr = A01;
            if (strArr[0].charAt(30) != strArr[7].charAt(30)) {
                A01[5] = "M1lNqMtLlEQhDRLPZV8vitTN6y5pnm";
                j0.AC2(format);
            } else {
                throw new RuntimeException();
            }
        }
    }

    /* JADX INFO: Multiple debug info for r3v0 int: [D('videoDebugListener' com.facebook.ads.redexgen.X.J0), D('videoListener' com.facebook.ads.redexgen.X.Ir)] */
    @Override // com.facebook.ads.redexgen.X.J0
    public final void AC7(int i, int i2, int i3, float f) {
        Iterator it = this.A00.A0M.iterator();
        while (it.hasNext()) {
            ((AbstractC0569Ir) it.next()).AC7(i, i2, i3, f);
        }
        Iterator it2 = this.A00.A0L.iterator();
        while (it2.hasNext()) {
            ((J0) it2.next()).AC7(i, i2, i3, f);
        }
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.A00.A0H(new Surface(surfaceTexture), true);
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.A00.A0H(null, true);
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.A00.A0H(surfaceHolder.getSurface(), false);
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.A00.A0H(null, false);
    }
}
