package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.aB  reason: case insensitive filesystem */
public final class C1018aB implements AbstractC0463Ei {
    public static String[] A06;
    public final HM A00;
    public final AbstractC0535Hh A01;
    public final C1103bY A02;
    public final C0540Hm A03 = new C0540Hm();
    public final IQ A04;
    public final AtomicBoolean A05 = new AtomicBoolean();

    static {
        A00();
    }

    public static void A00() {
        A06 = new String[]{"0vmpU1QtAhI6qjIdcVId", "klBv", "qKjW3ego541fEYihs", "NuBFx4EY8fIgWeMvZ", "vAKBh2R", "FoB4J1nu", "9b5WU1uKCw6g3SYcMdOb", "twQXN8Z"};
    }

    public C1018aB(Uri uri, String str, C0464Ej ej) {
        this.A00 = new HM(uri, 0, -1, str, 0);
        this.A01 = ej.A00();
        this.A02 = ej.A01(false);
        this.A04 = ej.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0463Ei
    public final void A4s() throws InterruptedException, IOException {
        this.A04.A00(-1000);
        try {
            C0541Hn.A04(this.A00, this.A01, this.A02, new byte[131072], this.A04, -1000, this.A03, this.A05, true);
            IQ iq = this.A04;
            String[] strArr = A06;
            if (strArr[3].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[0] = "qX3fQQGAY3dTsBjdyBPn";
            strArr2[6] = "Z0TFAaYyqvVnxMY9deNw";
            iq.A03(-1000);
        } catch (Throwable th) {
            this.A04.A03(-1000);
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0463Ei
    public final float A6G() {
        long j = this.A03.A01;
        if (j == -1) {
            return -1.0f;
        }
        return (((float) this.A03.A00()) * 100.0f) / ((float) j);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0463Ei
    public final long A6H() {
        return this.A03.A00();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0463Ei
    public final void cancel() {
        this.A05.set(true);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0463Ei
    public final void remove() {
        C0541Hn.A06(this.A01, C0541Hn.A02(this.A00));
    }
}
