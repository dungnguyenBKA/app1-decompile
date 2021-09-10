package com.google.android.gms.internal.ads;

import android.view.View;

public final class zzblg extends zzbnt {
    private final View view;
    private final zzbeb zzdjd;
    private final zzdmz zzftn;
    private final int zzfto;
    private final boolean zzftp;
    private final boolean zzftq;
    private zzsq zzfuc;
    private final zzbkv zzfud;

    zzblg(zzbnw zzbnw, View view2, zzbeb zzbeb, zzdmz zzdmz, int i, boolean z, boolean z2, zzbkv zzbkv) {
        super(zzbnw);
        this.view = view2;
        this.zzdjd = zzbeb;
        this.zzftn = zzdmz;
        this.zzfto = i;
        this.zzftp = z;
        this.zzftq = z2;
        this.zzfud = zzbkv;
    }

    public final void zza(zzsh zzsh) {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.zza(zzsh);
        }
    }

    public final boolean zzadp() {
        zzbeb zzbeb = this.zzdjd;
        return (zzbeb == null || zzbeb.zzacx() == null || !this.zzdjd.zzacx().zzadp()) ? false : true;
    }

    public final int zzajh() {
        return this.zzfto;
    }

    public final boolean zzaji() {
        return this.zzftp;
    }

    public final boolean zzajj() {
        return this.zzftq;
    }

    public final zzdmz zzajq() {
        return zzdnu.zza(this.zzesr.zzhjf, this.zzftn);
    }

    public final View zzajr() {
        return this.view;
    }

    public final boolean zzajs() {
        zzbeb zzbeb = this.zzdjd;
        return zzbeb != null && zzbeb.zzacz();
    }

    public final zzsq zzajt() {
        return this.zzfuc;
    }

    public final void zzb(long j, int i) {
        this.zzfud.zzb(j, i);
    }

    public final void zza(zzsq zzsq) {
        this.zzfuc = zzsq;
    }
}
