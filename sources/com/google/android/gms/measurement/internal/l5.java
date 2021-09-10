package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzy;
import java.util.Objects;

public final class l5 {
    final Context a;
    String b;
    String c;
    String d;
    Boolean e;
    long f;
    zzy g;
    boolean h = true;
    final Long i;
    String j;

    public l5(Context context, zzy zzy, Long l) {
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null reference");
        this.a = applicationContext;
        this.i = l;
        if (zzy != null) {
            this.g = zzy;
            this.b = zzy.zzf;
            this.c = zzy.zze;
            this.d = zzy.zzd;
            this.h = zzy.zzc;
            this.f = zzy.zzb;
            this.j = zzy.zzh;
            Bundle bundle = zzy.zzg;
            if (bundle != null) {
                this.e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
