package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzclz extends zzaji {
    private final /* synthetic */ zzclq zzgng;
    private final /* synthetic */ Object zzgnh;
    private final /* synthetic */ String zzgni;
    private final /* synthetic */ long zzgnj;
    private final /* synthetic */ zzbaa zzgnk;

    zzclz(zzclq zzclq, Object obj, String str, long j, zzbaa zzbaa) {
        this.zzgng = zzclq;
        this.zzgnh = obj;
        this.zzgni = str;
        this.zzgnj = j;
        this.zzgnk = zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationFailed(String str) {
        synchronized (this.zzgnh) {
            this.zzgng.zza((zzclq) this.zzgni, (String) false, (boolean) str, (String) ((int) (zzr.zzky().b() - this.zzgnj)));
            this.zzgng.zzgmx.zzs(this.zzgni, "error");
            this.zzgng.zzgmz.zzm(this.zzgni, "error");
            this.zzgnk.set(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationSucceeded() {
        synchronized (this.zzgnh) {
            this.zzgng.zza((zzclq) this.zzgni, (String) true, (boolean) "", (String) ((int) (zzr.zzky().b() - this.zzgnj)));
            this.zzgng.zzgmx.zzgg(this.zzgni);
            this.zzgng.zzgmz.zzfu(this.zzgni);
            this.zzgnk.set(Boolean.TRUE);
        }
    }
}
