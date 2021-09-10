package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.internal.m6;
import java.util.List;
import java.util.Map;

final class a implements m6 {
    final /* synthetic */ zzbr a;

    a(zzbr zzbr) {
        this.a = zzbr;
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final void a(String str) {
        this.a.zzu(str);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final List<Bundle> b(String str, String str2) {
        return this.a.zzm(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final void c(Bundle bundle) {
        this.a.zzk(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final void d(String str) {
        this.a.zzv(str);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final void e(String str, String str2, Bundle bundle) {
        this.a.zzl(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final int f(String str) {
        return this.a.zzE(str);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final Map<String, Object> g(String str, String str2, boolean z) {
        return this.a.zzB(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final void zza(String str, String str2, Bundle bundle) {
        this.a.zzh(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final String zzg() {
        return this.a.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final String zzh() {
        return this.a.zzA();
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final String zzi() {
        return this.a.zzx();
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final String zzj() {
        return this.a.zzw();
    }

    @Override // com.google.android.gms.measurement.internal.m6
    public final long zzk() {
        return this.a.zzy();
    }
}
