package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;

public final class zzna implements zznd, zzne {
    private final Uri uri;
    private final Handler zzaet;
    private final zzif zzaex;
    private zzid zzafe;
    private final int zzbdm;
    private final zzmz zzbdn;
    private zznd zzbdo;
    private final String zzbdq = null;
    private final zzoq zzbeu;
    private final zzkb zzbev;
    private final int zzbew;
    private boolean zzbex;

    public zzna(Uri uri2, zzoq zzoq, zzkb zzkb, int i, Handler handler, zzmz zzmz, String str, int i2) {
        this.uri = uri2;
        this.zzbeu = zzoq;
        this.zzbev = zzkb;
        this.zzbdm = i;
        this.zzaet = handler;
        this.zzbdn = zzmz;
        this.zzbew = i2;
        this.zzaex = new zzif();
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zza(zzhh zzhh, boolean z, zznd zznd) {
        this.zzbdo = zznd;
        zzns zzns = new zzns(-9223372036854775807L, false);
        this.zzafe = zzns;
        zznd.zzb(zzns, null);
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzb(zznc zznc) {
        ((zzms) zznc).release();
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzhz() {
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzia() {
        this.zzbdo = null;
    }

    @Override // com.google.android.gms.internal.ads.zznd
    public final void zzb(zzid zzid, Object obj) {
        boolean z = false;
        if (zzid.zza(0, this.zzaex, false).zzaip != -9223372036854775807L) {
            z = true;
        }
        if (!this.zzbex || z) {
            this.zzafe = zzid;
            this.zzbex = z;
            this.zzbdo.zzb(zzid, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zznc zza(int i, zzol zzol) {
        zzpg.checkArgument(i == 0);
        return new zzms(this.uri, this.zzbeu.zzip(), this.zzbev.zzgr(), this.zzbdm, this.zzaet, this.zzbdn, this, zzol, null, this.zzbew);
    }
}
