package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazo;

public final class zzbq extends zza {
    private final zzazo a;
    private final String b;

    public zzbq(Context context, String str, String str2) {
        this.a = new zzazo(zzr.zzkr().zzq(context, str));
        this.b = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        this.a.zzel(this.b);
    }
}
