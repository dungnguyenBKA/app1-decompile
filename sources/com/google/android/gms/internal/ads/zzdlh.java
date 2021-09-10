package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.concurrent.atomic.AtomicReference;

public final class zzdlh extends AdMetadataListener implements zzbrm, zzbrr, zzbsa, zzbtb, zzbtt, zzdkk {
    private final zzdov zzhfs;
    private final AtomicReference<AdMetadataListener> zzhia = new AtomicReference<>();
    private final AtomicReference<zzavu> zzhib = new AtomicReference<>();
    private final AtomicReference<zzavr> zzhic = new AtomicReference<>();
    private final AtomicReference<zzauu> zzhid = new AtomicReference<>();
    private final AtomicReference<zzavz> zzhie = new AtomicReference<>();
    private final AtomicReference<zzaup> zzhif = new AtomicReference<>();
    private final AtomicReference<zzyw> zzhig = new AtomicReference<>();
    private zzdlh zzhih = null;

    public zzdlh(zzdov zzdov) {
        this.zzhfs = zzdov;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdlh.zzhfs.onAdClosed();
                zzdkd.zza(zzdlh.zzhic, zzdlz.zzgya);
                zzdkd.zza(zzdlh.zzhid, zzdly.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhid, zzdmb.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhib, zzdlg.zzgya);
                zzdkd.zza(zzdlh.zzhid, zzdlj.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    public final void onAdMetadataChanged() {
        zzdlh zzdlh = this.zzhih;
        if (zzdlh != null) {
            zzdlh.onAdMetadataChanged();
        } else {
            zzdkd.zza(this.zzhia, zzdlq.zzgya);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhic, zzdlx.zzgya);
                zzdkd.zza(zzdlh.zzhid, zzdlw.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhid, zzdlp.zzgya);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhid, zzdli.zzgya);
                return;
            }
        }
    }

    public final void zza(AdMetadataListener adMetadataListener) {
        this.zzhia.set(adMetadataListener);
    }

    public final void zzb(zzavu zzavu) {
        this.zzhib.set(zzavu);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                int i = zzvg.errorCode;
                zzdkd.zza(zzdlh.zzhib, new zzdls(zzvg));
                zzdkd.zza(zzdlh.zzhib, new zzdlv(i));
                zzdkd.zza(zzdlh.zzhid, new zzdlu(i));
                return;
            }
        }
    }

    public final void zzd(zzyw zzyw) {
        this.zzhig.set(zzyw);
    }

    @Override // com.google.android.gms.internal.ads.zzbsa
    public final void zzk(zzvg zzvg) {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhic, new zzdlo(zzvg));
                zzdkd.zza(zzdlh.zzhic, new zzdlr(zzvg));
                return;
            }
        }
    }

    public final void zzb(zzavr zzavr) {
        this.zzhic.set(zzavr);
    }

    public final void zzb(zzavz zzavz) {
        this.zzhie.set(zzavz);
    }

    @Deprecated
    public final void zzb(zzauu zzauu) {
        this.zzhid.set(zzauu);
    }

    @Deprecated
    public final void zzb(zzaup zzaup) {
        this.zzhif.set(zzaup);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void zzb(zzauk zzauk, String str, String str2) {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhic, new zzdll(zzauk));
                zzdkd.zza(zzdlh.zzhie, new zzdlk(zzauk, str, str2));
                zzdkd.zza(zzdlh.zzhid, new zzdln(zzauk));
                zzdkd.zza(zzdlh.zzhif, new zzdlm(zzauk, str, str2));
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtt
    public final void zzb(zzvu zzvu) {
        zzdlh zzdlh = this;
        while (true) {
            zzdlh zzdlh2 = zzdlh.zzhih;
            if (zzdlh2 != null) {
                zzdlh = zzdlh2;
            } else {
                zzdkd.zza(zzdlh.zzhig, new zzdlt(zzvu));
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdkk
    public final void zzb(zzdkk zzdkk) {
        this.zzhih = (zzdlh) zzdkk;
    }
}
