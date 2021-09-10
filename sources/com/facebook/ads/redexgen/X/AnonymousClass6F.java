package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.6F  reason: invalid class name */
public final class AnonymousClass6F {
    public final C02715v A00;
    public final Map<Integer, C02776b> A01;
    public final AtomicBoolean A02 = new AtomicBoolean();

    public AnonymousClass6F(C02715v r4, Map<Integer, C02776b> map) {
        this.A00 = r4;
        this.A01 = map;
        this.A02.compareAndSet(false, true);
    }

    private int A00(int i) {
        if (this.A00.A0e(i) != null) {
            return this.A00.A0e(i).intValue();
        }
        return this.A00.A0R();
    }

    private synchronized void A01(AbstractC02956t r5, C02776b r6) {
        int A002 = r6.A00();
        Map<Integer, AnonymousClass60<AbstractC02956t>> A03 = C02826g.A01().A03();
        if (A03.containsKey(Integer.valueOf(A002))) {
            AnonymousClass60<AbstractC02956t> r2 = A03.get(Integer.valueOf(A002));
            AbstractC02956t A032 = r2 != null ? r2.A03() : null;
            if (r2 == null) {
                r2 = new AnonymousClass60<>(A00(A002));
            }
            if (!r5.A0C(A032, r6.A03())) {
                r2.A05(r5);
                C02826g.A01().A04(A002, r2, r5.A06());
            }
        } else {
            AnonymousClass60<AbstractC02956t> r22 = new AnonymousClass60<>(A00(A002));
            r22.A05(r5);
            C02826g.A01().A04(A002, r22, r5.A06());
        }
    }

    /* JADX INFO: Multiple debug info for r2v0 'this'  com.facebook.ads.redexgen.X.6F: [D('bdProximitySensorSignal' com.facebook.ads.redexgen.X.6b), D('bdStepDetectorSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdRelativeHumiditySensorSignal' com.facebook.ads.redexgen.X.6b), D('bdOrientationSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdTouchSignal' com.facebook.ads.redexgen.X.6b), D('bdMagnetometerSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdBarometerSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdLightSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdAmbientTemperatureSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdAccelerometerSensorSignal' com.facebook.ads.redexgen.X.6b), D('bdGeomagneticRotationSensorSignal' com.facebook.ads.redexgen.X.6b)] */
    @SuppressLint({"CatchGeneralException"})
    public final void A02(AbstractC02956t r3, AnonymousClass6E r4) {
        if (this.A02.get()) {
            try {
                switch (AnonymousClass6D.A00[r4.ordinal()]) {
                    case 1:
                        C02776b r0 = this.A01.get(10800);
                        if (r3 != null && r0 != null) {
                            A01(r3, r0);
                            return;
                        }
                        return;
                    case 2:
                        C02776b r02 = this.A01.get(10810);
                        if (r3 != null && r02 != null) {
                            A01(r3, r02);
                            return;
                        }
                        return;
                    case 3:
                        C02776b r03 = this.A01.get(10812);
                        if (r3 != null && r03 != null) {
                            A01(r3, r03);
                            return;
                        }
                        return;
                    case 4:
                        C02776b r04 = this.A01.get(10813);
                        if (r3 != null && r04 != null) {
                            A01(r3, r04);
                            return;
                        }
                        return;
                    case 5:
                        C02776b r05 = this.A01.get(10814);
                        if (r3 != null && r05 != null) {
                            A01(r3, r05);
                            return;
                        }
                        return;
                    case 6:
                        C02776b r06 = this.A01.get(10815);
                        if (r3 != null && r06 != null) {
                            A01(r3, r06);
                            return;
                        }
                        return;
                    case 7:
                        C02776b r07 = this.A01.get(10816);
                        if (r3 != null && r07 != null) {
                            A01(r3, r07);
                            return;
                        }
                        return;
                    case 8:
                        C02776b r08 = this.A01.get(10817);
                        if (r3 != null && r08 != null) {
                            A01(r3, r08);
                            return;
                        }
                        return;
                    case 9:
                        C02776b r09 = this.A01.get(10818);
                        if (r3 != null && r09 != null) {
                            A01(r3, r09);
                            return;
                        }
                        return;
                    case 10:
                        C02776b r010 = this.A01.get(10819);
                        if (r3 != null && r010 != null) {
                            A01(r3, r010);
                            return;
                        }
                        return;
                    case 11:
                        C02776b r011 = this.A01.get(10820);
                        if (r3 != null && r011 != null) {
                            A01(r3, r011);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            } catch (Throwable th) {
                AnonymousClass67.A04(th);
            }
        }
    }
}
