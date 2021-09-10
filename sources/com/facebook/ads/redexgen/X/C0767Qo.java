package com.facebook.ads.redexgen.X;

import androidx.annotation.VisibleForTesting;
import com.facebook.ads.AdError;

/* renamed from: com.facebook.ads.redexgen.X.Qo  reason: case insensitive filesystem */
public final class C0767Qo {
    @VisibleForTesting
    public static boolean A02 = false;
    public static String[] A03;
    public long A00 = 0;
    public final G1 A01;

    public static void A01() {
        A03 = new String[]{"qsn7C6zn3PdSVfgubJel9atpLV8UzMkS", "d5sl1UvhAH", "h3HSO", "RPMH8", "hkIXVCWcwK478YEFfwbo8RGIomhe8bPZ", "XzI0qoLX56", "bH89tdse0KsHc3c1ijve", "fX7ikpx60ZPhJLse4FRwcVwuHJXGRP"};
    }

    static {
        A01();
    }

    public C0767Qo(G1 g1) {
        this.A01 = g1;
        new Thread(new RunnableC0766Qn(this)).start();
    }

    /* access modifiers changed from: private */
    public void A00() {
        while (true) {
            synchronized (this) {
                if (this.A00 == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    long nanoTime = System.nanoTime();
                    if (nanoTime < this.A00) {
                        int i = (int) ((this.A00 - nanoTime) / 1000000);
                        if (((long) i) >= 1) {
                            try {
                                wait((long) i);
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    this.A00 = 0;
                    this.A01.A0A();
                    long nanoTime2 = System.nanoTime();
                    synchronized (this) {
                        if (this.A00 < nanoTime2) {
                            this.A00 = 0;
                        }
                    }
                }
            }
        }
    }

    public final synchronized void A03() {
        this.A00 = System.nanoTime();
        notifyAll();
    }

    public final synchronized void A04(int i) {
        long nanoTime = System.nanoTime() + (((long) i) * 1000000 * ((long) (A02 ? 1 : AdError.NETWORK_ERROR_CODE)));
        if (this.A00 == 0 || this.A00 > nanoTime) {
            this.A00 = nanoTime;
            notifyAll();
        }
        String[] strArr = A03;
        if (strArr[7].length() != strArr[6].length()) {
            String[] strArr2 = A03;
            strArr2[3] = "scQbN";
            strArr2[2] = "fyfTH";
            return;
        }
        throw new RuntimeException();
    }
}
