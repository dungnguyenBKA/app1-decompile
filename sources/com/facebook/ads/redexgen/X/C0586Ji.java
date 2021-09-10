package com.facebook.ads.redexgen.X;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.LinkedList;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Ji  reason: case insensitive filesystem */
public final class C0586Ji {
    public long A00;
    public final int A01 = FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD;
    public final int A02 = FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE;
    public final int A03 = FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION;
    public final int A04 = FacebookMediationAdapter.ERROR_NULL_CONTEXT;
    public final int A05 = FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS;
    public final int A06 = FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD;
    public final int A07 = 101;
    public final int A08 = FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT;
    public final int A09 = FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS;
    public final int A0A = 102;
    public final AbstractC0584Jg A0B;
    public final String A0C = C0586Ji.class.getSimpleName();
    public final List<C0585Jh> A0D;
    public final boolean A0E;
    public final boolean A0F;

    public C0586Ji(AnonymousClass8D r8, AbstractC0584Jg jg) {
        boolean z = false;
        this.A0E = false;
        this.A00 = -1;
        this.A0D = new LinkedList();
        int A0D2 = J6.A0D(r8);
        if (A0D2 < 1) {
            this.A0F = false;
        } else {
            this.A0F = r8.A05().A00() < 1.0d / ((double) A0D2) ? true : z;
        }
        this.A0B = jg;
    }

    private int A00() {
        return this.A0B.A66();
    }

    private int A01() {
        if (this.A00 > 0) {
            return (int) (System.currentTimeMillis() - this.A00);
        }
        return -1;
    }

    private void A03(C0585Jh jh) {
        synchronized (this.A0D) {
            this.A0D.add(jh);
        }
    }

    public final void A04() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, A00(), null));
        }
    }

    public final void A05() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, A00(), null));
        }
    }

    public final void A06() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, A00(), null));
        }
    }

    public final void A07() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, -1, null));
        }
    }

    public final void A08() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_NULL_CONTEXT, A00(), null));
        }
    }

    public final void A09() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, A00(), null));
        }
    }

    public final void A0A() {
        if (this.A0F) {
            this.A00 = System.currentTimeMillis();
            A03(new C0585Jh(0, 101, -1, null));
        }
    }

    public final void A0B() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, A00(), null));
        }
    }

    public final void A0C() {
        if (this.A0F) {
            A03(new C0585Jh(A01(), 102, A00(), null));
        }
    }

    public final void A0D(AnonymousClass8D r6, String str) {
        if (this.A0F) {
            A03(new C0585Jh(A01(), FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, A00(), null));
            ExecutorC0637Lm.A06.execute(new RunnableC0583Jf(this, str, r6));
        }
    }
}
