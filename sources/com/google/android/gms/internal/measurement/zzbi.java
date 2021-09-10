package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.k5;

/* access modifiers changed from: package-private */
public final class zzbi extends zzu {
    private final k5 zza;

    zzbi(k5 k5Var) {
        this.zza = k5Var;
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
