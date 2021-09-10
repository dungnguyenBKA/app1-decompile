package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.j5;

final class zzbh extends zzu {
    private final j5 zza;

    zzbh(j5 j5Var) {
        this.zza = j5Var;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zzd(String str, String str2, Bundle bundle, long j) {
        this.zza.a(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final int zze() {
        return System.identityHashCode(this.zza);
    }
}
