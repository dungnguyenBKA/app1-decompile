package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.LinearLayout;
import com.facebook.ads.internal.view.ToolbarActionView$ToolbarActionMode;

public abstract class M4 extends LinearLayout {
    public static int A00 = ((int) (C0632Lh.A01 * 56.0f));

    public abstract void A05(AnonymousClass1I v, boolean z);

    public abstract boolean A07();

    public abstract int getToolbarHeight();

    public abstract void setAdReportingVisible(boolean z);

    public abstract void setPageDetails(AnonymousClass1S v, String str, int i, AnonymousClass1Z v2);

    public abstract void setPageDetailsVisible(boolean z);

    public abstract void setProgress(float f);

    public abstract void setToolbarActionMessage(String str);

    public abstract void setToolbarActionMode(@ToolbarActionView$ToolbarActionMode int i);

    public abstract void setToolbarListener(M3 m3);

    public M4(Context context) {
        super(context);
    }

    public void A06(MT mt) {
    }
}
