package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdv implements Runnable {
    private final /* synthetic */ zzdw zzwb;

    zzdv(zzdw zzdw) {
        this.zzwb = zzdw;
    }

    public final void run() {
        boolean z;
        if (this.zzwb.zzwf == null) {
            synchronized (zzdw.zzwd) {
                if (this.zzwb.zzwf == null) {
                    boolean z2 = false;
                    try {
                        z = zzabp.zzcrw.get().booleanValue();
                    } catch (IllegalStateException unused) {
                        z = false;
                    }
                    if (z) {
                        try {
                            zzdw.zzwe = new zztz(this.zzwb.zzwc.context, "ADSHIELD", null);
                        } catch (Throwable unused2) {
                        }
                    }
                    z2 = z;
                    this.zzwb.zzwf = Boolean.valueOf(z2);
                    zzdw.zzwd.open();
                }
            }
        }
    }
}
