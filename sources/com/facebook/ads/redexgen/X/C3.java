package com.facebook.ads.redexgen.X;

import androidx.recyclerview.widget.RecyclerView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.nio.ByteBuffer;
import java.util.Arrays;

public abstract class C3 extends AbstractC0958Ya<C0416By, AbstractC0412Bs, GD> implements AbstractC1055am {
    public static byte[] A01;
    public final String A00;

    static {
        A0K();
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 125);
        }
        return new String(copyOfRange);
    }

    public static void A0K() {
        A01 = new byte[]{63, 88, 79, 98, 90, 79, 77, 94, 79, 78, 10, 78, 79, 77, 89, 78, 79, 10, 79, 92, 92, 89, 92};
    }

    public abstract GC A0d(byte[] bArr, int i, boolean z) throws GD;

    public C3(String str) {
        super(new C0416By[2], new AbstractC0412Bs[2]);
        this.A00 = str;
        A0a(1024);
    }

    /* access modifiers changed from: private */
    /* renamed from: A0F */
    public final GD A0Y(C0416By by, AbstractC0412Bs bs, boolean z) {
        try {
            ByteBuffer byteBuffer = by.A01;
            bs.A09(((YY) by).A00, A0d(byteBuffer.array(), byteBuffer.limit(), z), by.A00);
            bs.A01(RecyclerView.UNDEFINED_DURATION);
            return null;
        } catch (GD e) {
            return e;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: A0G */
    public final GD A0Z(Throwable th) {
        return new GD(A0J(0, 23, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), th);
    }

    /* access modifiers changed from: private */
    /* renamed from: A0H */
    public final C0416By A0V() {
        return new C0416By();
    }

    /* access modifiers changed from: private */
    /* renamed from: A0I */
    public final AbstractC0412Bs A0X() {
        return new C01993a(this);
    }

    /* renamed from: A0e */
    public final void A0c(AbstractC0412Bs bs) {
        super.A0c(bs);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1055am
    public final void ADr(long j) {
    }
}
