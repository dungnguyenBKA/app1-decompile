package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazb;

/* access modifiers changed from: package-private */
public final class a0 implements zzazb {
    private final /* synthetic */ Context a;
    private final /* synthetic */ String b;

    a0(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzazb
    public final void zzel(String str) {
        zzr.zzkr();
        zzj.zzb(this.a, this.b, str);
    }
}
