package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.concurrent.atomic.AtomicReference;

public final class zzdil implements zzq, zzbrr, zzbtg, zzdkk {
    private final zzdov zzhfs;
    private final AtomicReference<zzsp> zzhft = new AtomicReference<>();
    private final AtomicReference<zzsq> zzhfu = new AtomicReference<>();
    private final AtomicReference<zzsv> zzhfv = new AtomicReference<>();
    private final AtomicReference<zzbtg> zzhfw = new AtomicReference<>();
    private final AtomicReference<zzq> zzhfx = new AtomicReference<>();
    private zzdil zzhfy = null;

    public zzdil(zzdov zzdov) {
        this.zzhfs = zzdov;
    }

    public static zzdil zzb(zzdil zzdil) {
        zzdil zzdil2 = new zzdil(zzdil.zzhfs);
        zzdil2.zzb((zzdkk) zzdil);
        return zzdil2;
    }

    public final void onAdClosed() {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdil.zzhfs.onAdClosed();
                zzdkd.zza(zzdil.zzhfu, zzdip.zzgya);
                zzdkd.zza(zzdil.zzhfv, zzdio.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhfx, zzdiv.zzgya);
                return;
            }
        }
    }

    public final void zza(zzsv zzsv) {
        this.zzhfv.set(zzsv);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzalq() {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhfw, zzdir.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhft, new zzdin(zzvg));
                zzdkd.zza(zzdil.zzhft, new zzdim(zzvg));
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhfx, zzdiq.zzgya);
                zzdkd.zza(zzdil.zzhfv, zzdit.zzgya);
                return;
            }
        }
    }

    public final void zza(zzbtg zzbtg) {
        this.zzhfw.set(zzbtg);
    }

    public final void zza(zzq zzq) {
        this.zzhfx.set(zzq);
    }

    public final void zzb(zzsp zzsp) {
        this.zzhft.set(zzsp);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhfx, new zzdis(zzn));
                return;
            }
        }
    }

    public final void zzb(zzsq zzsq) {
        this.zzhfu.set(zzsq);
    }

    public final void zzb(zzsk zzsk) {
        zzdil zzdil = this;
        while (true) {
            zzdil zzdil2 = zzdil.zzhfy;
            if (zzdil2 != null) {
                zzdil = zzdil2;
            } else {
                zzdkd.zza(zzdil.zzhft, new zzdik(zzsk));
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdkk
    public final void zzb(zzdkk zzdkk) {
        this.zzhfy = (zzdil) zzdkk;
    }
}
