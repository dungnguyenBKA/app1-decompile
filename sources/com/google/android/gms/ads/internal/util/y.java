package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.c;
import androidx.core.content.a;
import com.google.android.gms.internal.ads.zzaco;
import com.google.android.gms.internal.ads.zzacp;

/* access modifiers changed from: package-private */
public final class y implements zzaco {
    private final /* synthetic */ zzacp a;
    private final /* synthetic */ Context b;
    private final /* synthetic */ Uri c;

    y(zzacp zzacp, Context context, Uri uri) {
        this.a = zzacp;
        this.b = context;
        this.c = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzst() {
        c a2 = new c.a(this.a.zzsv()).a();
        Context context = this.b;
        a2.a.setData(this.c);
        Intent intent = a2.a;
        int i = a.b;
        context.startActivity(intent, null);
        this.a.zzc((Activity) this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzsu() {
    }
}
