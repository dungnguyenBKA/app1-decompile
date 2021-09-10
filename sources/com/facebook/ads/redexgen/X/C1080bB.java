package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.vungle.warren.AdLoader;

/* renamed from: com.facebook.ads.redexgen.X.bB  reason: case insensitive filesystem */
public final class C1080bB implements HD, AbstractC0531Hd<Object> {
    public static String[] A0A;
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    @Nullable
    public final Handler A06;
    @Nullable
    public final HC A07;
    public final I0 A08;
    public final IX A09;

    static {
        A01();
    }

    public static void A01() {
        A0A = new String[]{"8v43OWLt8X4Ft8FSsUnUJEljk6O9jZtl", "gqJU9rJqtCXP9nVsCJhzhjWr3OTUONn5", "evi8lnvhIGFpGwxvrEQ2HxpF9HfAYNb4", "XM9iQGBoaLQIRrKYvs1BFwTGSVuWakLP", "oYKHkHYzGvwdV8VAJO5FvOndhShHo3uL", "GsOQXWL80Wqi8CBj4PFxcrgidstVbv5Z", "TfEJwESWFeUjyASkqvscuoRhiyKsiSGj", "R3GeLkF45fmp7DtCtFYf0NMS1ko1sZ3Y"};
    }

    public C1080bB() {
        this(null, null, 1000000, AdError.SERVER_ERROR_CODE, I0.A00);
    }

    public C1080bB(@Nullable Handler handler, @Nullable HC hc, long j, int i, I0 i0) {
        this.A06 = handler;
        this.A07 = hc;
        this.A09 = new IX(i);
        this.A08 = i0;
        this.A01 = j;
    }

    private void A02(int i, long j, long j2) {
        Handler handler = this.A06;
        if (handler != null) {
            HC hc = this.A07;
            String[] strArr = A0A;
            if (strArr[3].charAt(14) != strArr[2].charAt(14)) {
                String[] strArr2 = A0A;
                strArr2[3] = "mcMhHiKL1Hs40ZODL70g4thjgDTU4mJQ";
                strArr2[2] = "gdrxxP25NVrEqdTm0xFGwMteDAr0ERpE";
                if (hc != null) {
                    handler.post(new HN(this, i, j, j2));
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.HD
    public final synchronized long A5g() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0531Hd
    public final synchronized void A9f(Object obj, int i) {
        this.A02 += (long) i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0531Hd
    public final synchronized void ABr(Object obj) {
        C0551Hx.A04(this.A00 > 0);
        long A56 = this.A08.A56();
        int i = (int) (A56 - this.A03);
        this.A05 += (long) i;
        this.A04 += this.A02;
        if (i > 0) {
            this.A09.A04((int) Math.sqrt((double) this.A02), (float) ((this.A02 * 8000) / ((long) i)));
            int i2 = (this.A05 > AdLoader.RETRY_DELAY ? 1 : (this.A05 == AdLoader.RETRY_DELAY ? 0 : -1));
            String[] strArr = A0A;
            if (strArr[6].charAt(30) != strArr[5].charAt(30)) {
                String[] strArr2 = A0A;
                strArr2[3] = "ZGZYZVMOjrgZsL4omJYgF6CzP4kXRh7Y";
                strArr2[2] = "w8y5sfHjCRRFpoxn3MnbYbSKFexwF0nZ";
                if (i2 >= 0 || this.A04 >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    this.A01 = (long) this.A09.A03(0.5f);
                }
            } else {
                throw new RuntimeException();
            }
        }
        A02(i, this.A02, this.A01);
        int i3 = this.A00 - 1;
        this.A00 = i3;
        if (i3 > 0) {
            this.A03 = A56;
        }
        this.A02 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0531Hd
    public final synchronized void ABs(Object obj, HM hm) {
        if (this.A00 == 0) {
            this.A03 = this.A08.A56();
        }
        this.A00++;
    }
}
