package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;

/* renamed from: com.facebook.ads.redexgen.X.5n  reason: invalid class name and case insensitive filesystem */
public final class C02635n extends AbstractC1169ce<QE> implements AnonymousClass8B {
    public static String[] A02;
    public XJ A00;
    public boolean A01 = false;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"iVby5wy6H7l4dzY0Hld0xs9tuHtnGk", "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59", "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3", "j6OxXppfxNxejmkkIb10P2S2ED13bfax", "YxA", "okdCTGqDBxOQkU", "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g", "Mu"};
    }

    public C02635n(QE qe, XJ xj) {
        super(qe);
        this.A00 = xj;
    }

    private void A01(int i) {
        if (!this.A01) {
            this.A00.A0A().A3C(i);
        }
        String[] strArr = A02;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A02[1] = "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5";
        this.A01 = true;
    }

    /* JADX INFO: Multiple debug info for r4v1 com.facebook.ads.redexgen.X.QE: [D('adView' android.view.View), D('historicalCount' int), D('animation' android.view.animation.Animation)] */
    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        boolean z;
        boolean z2;
        boolean z3;
        QE qe = (QE) A08();
        int i = 0;
        if (qe == null) {
            A01(0);
            return;
        }
        View view = qe.A0C;
        QD qd = (QD) qe.A0E.get();
        int i2 = 1;
        if (view == null) {
            z = true;
        } else {
            z = false;
        }
        if (!z && qd != null) {
            QF A0E = QE.A0E(view, qe.A0A, this.A00);
            if (A0E.A04()) {
                QE.A05(qe);
            } else {
                qe.A00 = 0;
            }
            if (qe.A00 > qe.A09) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (qe.A05 == null || !qe.A05.A04()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (z2 || !A0E.A04()) {
                qe.A05 = A0E;
            }
            String valueOf = String.valueOf(A0E.A01());
            synchronized (qe) {
                if (qe.A06.containsKey(valueOf)) {
                    i = ((Integer) qe.A06.get(valueOf)).intValue();
                }
                qe.A06.put(valueOf, Integer.valueOf(i + 1));
            }
            if (z2 && !z3) {
                this.A01 = true;
                qe.A03 = System.currentTimeMillis();
                if (qe.A07) {
                    this.A00.A0A().A3D();
                }
                qd.A04();
                if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                    alphaAnimation.setDuration(500);
                    view.startAnimation(alphaAnimation);
                }
                if (!(qe.A0F)) {
                    return;
                }
            } else if (z2 || !z3) {
                qd.A03();
                if (!this.A01 && (qe.A07)) {
                    this.A00.A0A().A3B(A0E.A02());
                }
                this.A01 = true;
            } else {
                this.A01 = true;
                if (qe.A07) {
                    AnonymousClass0R A0A = this.A00.A0A();
                    AnonymousClass0Q A022 = A0E.A02();
                    if (A02[1].charAt(31) != 'Y') {
                        String[] strArr = A02;
                        strArr[0] = "aqGg3VLISO1RonzxWpaMuFcsA6T1VU";
                        strArr[6] = "xPzVxhTd5JHIqZhWukTWbX9dZKpXQ5";
                        A0A.A2i(A022);
                    } else {
                        throw new RuntimeException();
                    }
                }
                qd.A02();
            }
            if (!(qe.A08) && qe.A04 != null) {
                qe.A0B.postDelayed(qe.A04, (long) qe.A02);
            }
        } else if (qe.A07) {
            if (!z) {
                i2 = 2;
            }
            A01(i2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass8B
    public final XJ A5U() {
        return this.A00;
    }
}
