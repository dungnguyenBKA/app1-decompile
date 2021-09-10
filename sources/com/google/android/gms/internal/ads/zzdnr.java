package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;

public final class zzdnr {
    private boolean zzbni;
    private zzvs zzbpo;
    private zzaeh zzdoe;
    private zzajt zzdvt;
    private int zzgzc = 1;
    private boolean zzhar = false;
    private zzxz zzhku;
    private zzaau zzhkv;
    private zzvl zzhkw;
    private String zzhkx;
    private ArrayList<String> zzhky;
    private ArrayList<String> zzhkz;
    private zzvx zzhla;
    private AdManagerAdViewOptions zzhlb;
    private PublisherAdViewOptions zzhlc;
    private zzxt zzhld;
    private zzdne zzhlf = new zzdne();

    public final zzvl zzave() {
        return this.zzhkw;
    }

    public final String zzavf() {
        return this.zzhkx;
    }

    public final zzdne zzavg() {
        return this.zzhlf;
    }

    public final zzdnp zzavh() {
        n.i(this.zzhkx, "ad unit must not be null");
        n.i(this.zzbpo, "ad size must not be null");
        n.i(this.zzhkw, "ad request must not be null");
        return new zzdnp(this);
    }

    public final boolean zzavi() {
        return this.zzhar;
    }

    public final zzdnr zzb(zzvx zzvx) {
        this.zzhla = zzvx;
        return this;
    }

    public final zzdnr zzbm(boolean z) {
        this.zzhar = z;
        return this;
    }

    public final zzdnr zzbn(boolean z) {
        this.zzbni = z;
        return this;
    }

    public final zzdnr zzc(zzxz zzxz) {
        this.zzhku = zzxz;
        return this;
    }

    public final zzdnr zzd(ArrayList<String> arrayList) {
        this.zzhkz = arrayList;
        return this;
    }

    public final zzdnr zzee(int i) {
        this.zzgzc = i;
        return this;
    }

    public final zzdnr zzg(zzvs zzvs) {
        this.zzbpo = zzvs;
        return this;
    }

    public final zzdnr zzgs(String str) {
        this.zzhkx = str;
        return this;
    }

    public final zzdnr zzh(zzvl zzvl) {
        this.zzhkw = zzvl;
        return this;
    }

    public final zzvs zzkg() {
        return this.zzbpo;
    }

    public final zzdnr zzb(zzajt zzajt) {
        this.zzdvt = zzajt;
        this.zzhkv = new zzaau(false, true, false);
        return this;
    }

    public final zzdnr zzc(zzaau zzaau) {
        this.zzhkv = zzaau;
        return this;
    }

    public final zzdnr zzd(zzaeh zzaeh) {
        this.zzdoe = zzaeh;
        return this;
    }

    public final zzdnr zzc(ArrayList<String> arrayList) {
        this.zzhky = arrayList;
        return this;
    }

    public final zzdnr zzb(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzhlc = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zzbni = publisherAdViewOptions.getManualImpressionsEnabled();
            this.zzhld = publisherAdViewOptions.zzjv();
        }
        return this;
    }

    public final zzdnr zzc(zzdnp zzdnp) {
        this.zzhlf.zza(zzdnp.zzhle);
        this.zzhkw = zzdnp.zzhkw;
        this.zzbpo = zzdnp.zzbpo;
        this.zzhku = zzdnp.zzhku;
        this.zzhkx = zzdnp.zzhkx;
        this.zzhkv = zzdnp.zzhkv;
        this.zzhky = zzdnp.zzhky;
        this.zzhkz = zzdnp.zzhkz;
        this.zzdoe = zzdnp.zzdoe;
        this.zzhla = zzdnp.zzhla;
        zzdnr zzb = zzb(zzdnp.zzhlb).zzb(zzdnp.zzhlc);
        zzb.zzhar = zzdnp.zzhar;
        return zzb;
    }

    public final zzdnr zzb(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzhlb = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zzbni = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }
}
