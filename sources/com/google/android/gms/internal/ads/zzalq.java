package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.n;

public final class zzalq extends zzbad<zzakm> {
    private final Object lock = new Object();
    private zzar<zzakm> zzdjp;
    private boolean zzdkg;
    private int zzdkh;

    public zzalq(zzar<zzakm> zzar) {
        this.zzdjp = zzar;
        this.zzdkg = false;
        this.zzdkh = 0;
    }

    private final void zzup() {
        synchronized (this.lock) {
            n.j(this.zzdkh >= 0);
            if (!this.zzdkg || this.zzdkh != 0) {
                zzd.zzeb("There are still references to the engine. Not destroying.");
            } else {
                zzd.zzeb("No reference is left (including root). Cleaning up engine.");
                zza(new zzalv(this), new zzbab());
            }
        }
    }

    public final zzalm zzum() {
        zzalm zzalm = new zzalm(this);
        synchronized (this.lock) {
            zza(new zzalt(this, zzalm), new zzals(this, zzalm));
            n.j(this.zzdkh >= 0);
            this.zzdkh++;
        }
        return zzalm;
    }

    /* access modifiers changed from: protected */
    public final void zzun() {
        synchronized (this.lock) {
            n.j(this.zzdkh > 0);
            zzd.zzeb("Releasing 1 reference for JS Engine");
            this.zzdkh--;
            zzup();
        }
    }

    public final void zzuo() {
        synchronized (this.lock) {
            n.j(this.zzdkh >= 0);
            zzd.zzeb("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.zzdkg = true;
            zzup();
        }
    }
}
