package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;

public class M1 implements View.OnClickListener {
    public final /* synthetic */ AnonymousClass1S A00;
    public final /* synthetic */ JJ A01;
    public final /* synthetic */ M2 A02;
    public final /* synthetic */ M9 A03;
    public final /* synthetic */ String A04;

    public M1(M2 m2, JJ jj, M9 m9, String str, AnonymousClass1S r5) {
        this.A02 = m2;
        this.A01 = jj;
        this.A03 = m9;
        this.A04 = str;
        this.A00 = r5;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A01.A03(JI.A0A, null);
                if (AnonymousClass28.A0Q(this.A02.A02.A00(), true)) {
                    this.A03.A8F(this.A04, this.A00);
                } else if (!TextUtils.isEmpty(this.A00.A00())) {
                    C0623Ky.A09(new C0623Ky(), this.A02.A02, Uri.parse(this.A00.A00()), this.A04);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }
}
