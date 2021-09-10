package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Iw  reason: case insensitive filesystem */
public class RunnableC0574Iw implements Runnable {
    public static String[] A05;
    public final /* synthetic */ float A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ int A02;
    public final /* synthetic */ int A03;
    public final /* synthetic */ C0577Iz A04;

    static {
        A00();
    }

    public static void A00() {
        A05 = new String[]{"DJpTE", "hjmigejYKbOgwmfvV1nc5iE8IDOYmXil", "2YKNaj9Qlm", "qxfanbBXI2ZjoCTgG7w8KuDdJjLlXH62", "XtZaZ3wYkBKmpvCnemS2yQk1T2uyfDPG", "Gw99gcoZxN", "lvDFpJS29mpdODJdSJz5AdBwktpN", "hlGH8f80A3YyARPnHLcSnfRHIOI89tOr"};
    }

    public RunnableC0574Iw(C0577Iz iz, int i, int i2, int i3, float f) {
        this.A04 = iz;
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A00 = f;
    }

    public final void run() {
        if (!KT.A02(this)) {
            try {
                this.A04.A01.AC7(this.A03, this.A01, this.A02, this.A00);
            } catch (Throwable th) {
                if (A05[0].length() != 5) {
                    throw new RuntimeException();
                }
                A05[3] = "OXxSdVemaS9DNqMoLNSyLFOeF9oFC1IL";
                KT.A00(th, this);
            }
        }
    }
}
