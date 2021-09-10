package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzcf;
import java.io.IOException;

public final class zzfw extends zzgn {
    public zzfw(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2) {
        super(zzfc, str, str2, zzb, i, 24);
    }

    private final void zzcz() {
        AdvertisingIdClient zzcs = this.zzwc.zzcs();
        if (zzcs != null) {
            try {
                AdvertisingIdClient.Info info = zzcs.getInfo();
                String zzaq = zzfh.zzaq(info.getId());
                if (zzaq != null) {
                    synchronized (this.zzabb) {
                        this.zzabb.zzak(zzaq);
                        this.zzabb.zzb(info.isLimitAdTrackingEnabled());
                        this.zzabb.zzb(zzcf.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        if (this.zzwc.zzck()) {
            zzcz();
            return;
        }
        synchronized (this.zzabb) {
            this.zzabb.zzak((String) this.zzabl.invoke(null, this.zzwc.getContext()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    /* renamed from: zzcy */
    public final Void call() {
        if (this.zzwc.isInitialized()) {
            return super.call();
        }
        if (!this.zzwc.zzck()) {
            return null;
        }
        zzcz();
        return null;
    }
}
