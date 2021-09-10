package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Tp  reason: case insensitive filesystem */
public class C0843Tp implements AnonymousClass5I {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ AnonymousClass5K A01;
    public final /* synthetic */ C1143cD A02;

    public C0843Tp(AnonymousClass5K r1, ImageView imageView, C1143cD cDVar) {
        this.A01 = r1;
        this.A00 = imageView;
        this.A02 = cDVar;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass5I
    public final void AAK(@Nullable Drawable drawable) {
        C1143cD.A0c(drawable, this.A00);
        this.A02.A1J(drawable);
    }
}
