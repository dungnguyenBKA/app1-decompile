package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
public final class zzclx implements zzdzl<String> {
    final /* synthetic */ zzclq zzgng;

    zzclx(zzclq zzclq) {
        this.zzgng = zzclq;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@Nullable String str) {
        String str2 = str;
        synchronized (this) {
            this.zzgng.zzgms = true;
            this.zzgng.zza((zzclq) "com.google.android.gms.ads.MobileAds", (String) true, (boolean) "", (String) ((int) (zzr.zzky().b() - this.zzgng.zzgmt)));
            this.zzgng.executor.execute(new zzcma(this, str2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        synchronized (this) {
            this.zzgng.zzgms = true;
            this.zzgng.zza((zzclq) "com.google.android.gms.ads.MobileAds", (String) false, (boolean) "Internal Error.", (String) ((int) (zzr.zzky().b() - this.zzgng.zzgmt)));
            this.zzgng.zzgmu.setException(new Exception());
        }
    }
}
