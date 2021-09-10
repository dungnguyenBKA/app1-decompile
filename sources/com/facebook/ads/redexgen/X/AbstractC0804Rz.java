package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.proguard.annotations.DoNotStrip;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Rz  reason: case insensitive filesystem */
public abstract class AbstractC0804Rz extends AnonymousClass48<C1181cq> {
    public static final int A05 = ((int) (C0632Lh.A01 * 4.0f));
    @Nullable
    public AnonymousClass15 A00;
    public final List<C1143cD> A01;
    public final int A02;
    public final XJ A03;
    @DoNotStrip
    public final QD A04 = new C0802Rx(this);

    public AbstractC0804Rz(AnonymousClass1W r2, List<C1143cD> list, XJ xj) {
        this.A03 = xj;
        this.A02 = r2.getChildSpacing();
        this.A01 = list;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass48
    private ViewGroup.MarginLayoutParams A04(int i) {
        int i2;
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i3 = this.A02;
        if (i == 0) {
            i3 *= 2;
        }
        if (i >= this.A01.size() - 1) {
            i2 = this.A02 * 2;
        } else {
            i2 = this.A02;
        }
        marginLayoutParams.setMargins(i3, 0, i2, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass48
    public final int A0E() {
        return this.A01.size();
    }

    public final void A0G(ImageView imageView, int i) {
        C1143cD cDVar = this.A01.get(i);
        JY A12 = cDVar.getAdCoverImage();
        if (A12 != null) {
            AsyncTaskC1017aA A052 = new AsyncTaskC1017aA(imageView, this.A03).A05();
            A052.A07(new C0803Ry(this, i, cDVar));
            A052.A08(A12.getUrl());
        }
    }

    public final void A0H(AnonymousClass15 r1) {
        this.A00 = r1;
    }

    /* renamed from: A0I */
    public void A0F(C1181cq cqVar, int i) {
        cqVar.A0m().setLayoutParams(A04(i));
    }
}
