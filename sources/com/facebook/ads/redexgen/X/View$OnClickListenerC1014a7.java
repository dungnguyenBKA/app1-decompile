package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.a7  reason: case insensitive filesystem */
public final class View$OnClickListenerC1014a7 extends C0688Nm implements View.OnClickListener {
    @Nullable
    public String A00;
    @Nullable
    public String A01;
    public final C0685Nj A02;
    public final Map<String, String> A03 = new HashMap();

    public View$OnClickListenerC1014a7(XJ xj, String str, AnonymousClass1I r10, JC jc, M9 m9, QE qe, C0625La la) {
        super(xj, r10);
        this.A02 = new C0685Nj(xj, str, qe, la, jc, m9);
        setOnClickListener(this);
        C0632Lh.A0J(AdError.NO_FILL_ERROR_CODE, this);
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                if (TextUtils.isEmpty(this.A00)) {
                    return;
                }
                if (!TextUtils.isEmpty(this.A01)) {
                    this.A02.A08(this.A00, this.A01, this.A03);
                }
            } catch (Throwable th) {
                KT.A00(th, this);
            }
        }
    }

    public void setCta(AnonymousClass1J r2, String str, Map<String, String> map) {
        setCta(r2, str, map, null);
    }

    public void setCta(AnonymousClass1J r3, String str, Map<String, String> map, @Nullable AbstractC0684Ni ni) {
        this.A00 = str;
        this.A01 = r3.A04();
        this.A03.putAll(map);
        this.A02.A07(ni);
        String A032 = r3.A03();
        if (TextUtils.isEmpty(A032) || TextUtils.isEmpty(this.A01)) {
            setVisibility(8);
        } else {
            setText(A032);
        }
    }

    public void setIsInAppBrowser(boolean z) {
        this.A02.A09(z);
    }
}
