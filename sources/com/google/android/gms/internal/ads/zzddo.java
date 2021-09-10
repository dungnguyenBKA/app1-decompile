package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.ArrayList;

public final class zzddo implements zzdfi<zzddp> {
    private final PackageInfo zzdue;
    private final zzf zzedg;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;

    public zzddo(zzdzv zzdzv, zzdnp zzdnp, PackageInfo packageInfo, zzf zzf) {
        this.zzghl = zzdzv;
        this.zzfwy = zzdnp;
        this.zzdue = packageInfo;
        this.zzedg = zzf;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f5, code lost:
        if (r9 == 3) goto L_0x011a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ void zza(java.util.ArrayList r9, android.os.Bundle r10) {
        /*
        // Method dump skipped, instructions count: 314
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzddo.zza(java.util.ArrayList, android.os.Bundle):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddp> zzasy() {
        return this.zzghl.zze(new zzddr(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzddp zzati() {
        ArrayList<String> arrayList = this.zzfwy.zzhky;
        if (arrayList == null) {
            return zzddq.zzhcg;
        }
        if (arrayList.isEmpty()) {
            return zzddt.zzhcg;
        }
        return new zzdds(this, arrayList);
    }
}
