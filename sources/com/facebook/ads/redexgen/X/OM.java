package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.FrameLayout;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public final class OM extends FrameLayout {
    public static byte[] A0K;
    public static String[] A0L;
    public PO A00;
    public boolean A01 = false;
    public boolean A02 = false;
    public boolean A03 = false;
    public boolean A04 = false;
    public final AnonymousClass16 A05;
    public final AnonymousClass7D A06;
    public final XJ A07;
    public final JJ A08;
    public final M9 A09;
    public final AbstractC0655Me A0A;
    public final OL A0B;
    public final PD A0C;
    public final C03177y A0D;
    public final AbstractC0629Le A0E = new AnonymousClass9D(this);
    public final L4 A0F = new C03378t(this);
    public final KW A0G = new AnonymousClass9W(this);
    public final KQ A0H = new C03469d(this);
    public final KL A0I = new C03489f(this);
    public final KJ A0J = new AnonymousClass9R(this);

    static {
        A0C();
        A0B();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 38);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A0K = new byte[]{5, 19, 20, 20, 3, 8, 18, 50, 15, 11, 3, 78, 95, 88, 75, 94, 67, 69, 68, 95, 71, 70, 87, 86, 98, 115, 103, 97, 119, 118, 80, 107, 71, 97, 119, 96, 38, 36, 57, 49, 36, 51, 37, 37, 88, 71, 74, 75, 65};
    }

    public static void A0C() {
        A0L = new String[]{"tg98T7YqorVxljyy5rC9rRviyjZQ3PWt", "vfHBQfbeXMWpx0Lt9J2p4bolhXFdVoUD", "nuD8gLvjahybAxP4K7AI7EnQPexhi40p", "Mle9DIn2BhVQrDGkT0Ym6c4cXgC65WVc", "K7R1lop0AG70QQAdOPTNlaEDkQeUTiOI", "yRh0uKXr8zSd48KJrOgjFYKLFGGCRN1w", "QQOq4rDYvkiUVU0ErOwgNbjJJCuazTiH", "YmsKh0Z7MVbEzdUA2tq2qo4jdnYDOoVM"};
    }

    public OM(XJ xj, JC jc, AnonymousClass16 r8, AnonymousClass7D r9, JJ jj, M9 m9, AbstractC0655Me me, OL ol) {
        super(xj);
        this.A07 = xj;
        this.A05 = r8;
        this.A06 = r9;
        this.A08 = jj;
        this.A09 = m9;
        this.A0A = me;
        this.A0C = new PD(xj);
        this.A0B = ol;
        this.A0C.setFunnelLoggingHandler(jj);
        this.A0C.getEventBus().A04(this.A0I, this.A0H, this.A0G, this.A0J, this.A0E, this.A0F);
        this.A0D = new C03177y(xj, jc, this.A0C, r8.A0T());
        A0A();
        this.A0C.setVideoURI(this.A06.A0O(this.A05.A0N().A0E().A08()));
        A08();
        C0632Lh.A0P(this, this.A05.A0M().A01().A07(true));
        String A072 = r8.A0N().A0E().A07();
        if (!TextUtils.isEmpty(A072)) {
            C0697Nv.A00(xj, this, A072);
        }
        addView(this.A0C, new FrameLayout.LayoutParams(-1, -1));
    }

    /* access modifiers changed from: public */
    private JSONObject A03() {
        return A04(this.A0C.getCurrentPositionInMillis());
    }

    /* access modifiers changed from: public */
    private JSONObject A04(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(0, 11, 64), i);
            jSONObject.put(A02(11, 8, 12), this.A0C.getDuration());
            jSONObject.put(A02(19, 5, 20), this.A0C.A0e());
            jSONObject.put(A02(24, 12, 52), this.A0C.A0g());
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private void A07() {
        this.A0C.postDelayed(new Y3(this), (long) J4.A0I(this.A07));
    }

    private void A08() {
        this.A0C.postDelayed(new Y2(this), (long) J4.A0J(this.A07));
    }

    /* access modifiers changed from: public */
    private void A09() {
        this.A0B.AC0(A02(36, 8, 112), A03());
    }

    /* JADX INFO: Multiple debug info for r5v0 'this'  com.facebook.ads.redexgen.X.OM: [D('placeholderImagePlugin' com.facebook.ads.redexgen.X.7Z), D('touchPlayPausePlugin' com.facebook.ads.redexgen.X.7L)] */
    private void A0A() {
        if (!TextUtils.isEmpty(this.A05.A0N().A0E().A07())) {
            AnonymousClass7Z r1 = new AnonymousClass7Z(this.A07);
            this.A0C.A0Z(r1);
            r1.setImage(this.A05.A0N().A0E().A07());
        }
        AnonymousClass7L r3 = new AnonymousClass7L(this.A07, true, this.A08);
        this.A0C.A0Z(r3);
        this.A0C.A0Z(new C0554Ia(r3, EnumC0728Pb.A03, true));
        this.A0C.A0Z(new AnonymousClass7T(this.A07));
    }

    /* access modifiers changed from: public */
    private void A0H(C03167w r2, boolean z) {
        if (!this.A02) {
            this.A02 = true;
        }
    }

    /* access modifiers changed from: public */
    private void A0I(AnonymousClass7s r5) {
        if (this.A0C.getState() == QB.A02 && J4.A0y(this.A07)) {
            this.A0C.postDelayed(new C0935Xd(this, r5), 5000);
        }
    }

    /* access modifiers changed from: public */
    private void A0J(String str) {
        int i = 0;
        int i2 = 0;
        PD pd = this.A0C;
        if (pd != null) {
            i = pd.getCurrentPositionInMillis();
            i2 = this.A0C.getDuration();
        }
        this.A07.A04().A8V(A02(44, 5, 8), C03228e.A2F, new C03238f(str));
        if (J4.A0z(this.A07)) {
            A0H(new C03167w(i, i2), false);
            return;
        }
        this.A09.A3t(this.A0A.A6Q());
        this.A09.A3t(this.A0A.A6L());
    }

    public final void A0O() {
        float f;
        PD pd = this.A0C;
        if (this.A05.A0N().A0E().A09()) {
            f = 0.0f;
        } else {
            f = 1.0f;
        }
        pd.setVolume(f);
        this.A0C.A0Y(PO.A03, 26);
        A07();
    }

    public final void A0P() {
        PD pd = this.A0C;
        if (pd != null) {
            if (!this.A02) {
                pd.A0X(PK.A03);
            }
            this.A0C.getEventBus().A05(this.A0I, this.A0H, this.A0G, this.A0J, this.A0E, this.A0F);
            this.A0C.A0S();
        }
        this.A0D.A0h();
    }

    public final void A0Q() {
        this.A0C.A0W(9);
        C0632Lh.A0Y(this);
        C0632Lh.A0K(this.A0C);
        C0632Lh.A0e(this.A0C);
    }

    public final void A0R() {
        this.A0C.A0X(PK.A04);
    }

    public final void A0S(boolean z) {
        if (z) {
            this.A0C.setVolume(0.0f);
        } else {
            this.A0C.setVolume(1.0f);
        }
        A09();
        if (A0L[7].charAt(5) != 'u') {
            A0L[4] = "yn69DofMHsLSVfdL7HK9OU5c1k1rZYJH";
            return;
        }
        throw new RuntimeException();
    }

    public final void A0T(boolean z) {
        if (!this.A0C.A0f()) {
            this.A00 = this.A0C.getVideoStartReason();
            this.A01 = z;
            this.A0C.A0b(false, 19);
        }
    }

    public final void A0U(boolean z) {
        if (!this.A0C.A0g() && !this.A02 && this.A0C.getState() != QB.A06 && this.A00 != null) {
            boolean z2 = this.A01;
            if (A0L[7].charAt(5) != 'u') {
                String[] strArr = A0L;
                strArr[1] = "icjW3n8vZZxsaCmttUmjcTI7CQu2m51p";
                strArr[0] = "kS3lp82K2YolC4kFtdcvtTBENFWE8ibh";
                if (!z2 || z) {
                    this.A0C.A0Y(this.A00, 27);
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A0V(boolean z) {
        this.A0C.A0b(z, 18);
    }

    public final void A0W(boolean z) {
        this.A0C.A0Y(PO.A05, 25);
    }
}
