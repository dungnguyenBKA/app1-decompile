package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzug;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final class zzcqh implements zzdzl<Bundle> {
    private final /* synthetic */ boolean zzgrd;
    final /* synthetic */ zzcqi zzgre;

    zzcqh(zzcqi zzcqi, boolean z) {
        this.zzgre = zzcqi;
        this.zzgrd = z;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcqi zzcqi = this.zzgre;
        ArrayList arrayList = zzcqi.zzl(bundle2);
        zzcqi zzcqi2 = this.zzgre;
        zzug.zzo.zzc zzc = zzcqi.zzk(bundle2);
        this.zzgre.zzgrg.zza(new zzcqk(this, this.zzgrd, arrayList, this.zzgre.zzj(bundle2), zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzazk.zzev("Failed to get signals bundle");
    }
}
