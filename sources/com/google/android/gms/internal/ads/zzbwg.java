package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.util.d;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;

public class zzbwg {
    private final zzdkk zzfwg;
    private final Set<zzbya<zzvc>> zzgag;
    private final Set<zzbya<zzbrm>> zzgah;
    private final Set<zzbya<zzbse>> zzgai;
    private final Set<zzbya<zzbtg>> zzgaj;
    private final Set<zzbya<zzbtb>> zzgak;
    private final Set<zzbya<zzbrr>> zzgal;
    private final Set<zzbya<zzbsa>> zzgam;
    private final Set<zzbya<AdMetadataListener>> zzgan;
    private final Set<zzbya<AppEventListener>> zzgao;
    private final Set<zzbya<zzbtt>> zzgap;
    private final Set<zzbya<zzq>> zzgaq;
    private final Set<zzbya<zzbua>> zzgar;
    private zzbrp zzgas;
    private zzcuw zzgat;

    public static class zza {
        private zzdkk zzfwg;
        private Set<zzbya<zzvc>> zzgag = new HashSet();
        private Set<zzbya<zzbrm>> zzgah = new HashSet();
        private Set<zzbya<zzbse>> zzgai = new HashSet();
        private Set<zzbya<zzbtg>> zzgaj = new HashSet();
        private Set<zzbya<zzbtb>> zzgak = new HashSet();
        private Set<zzbya<zzbrr>> zzgal = new HashSet();
        private Set<zzbya<zzbsa>> zzgam = new HashSet();
        private Set<zzbya<AdMetadataListener>> zzgan = new HashSet();
        private Set<zzbya<AppEventListener>> zzgao = new HashSet();
        private Set<zzbya<zzq>> zzgaq = new HashSet();
        private Set<zzbya<zzbua>> zzgar = new HashSet();
        private Set<zzbya<zzbtt>> zzgau = new HashSet();

        public final zza zza(zzbrm zzbrm, Executor executor) {
            this.zzgah.add(new zzbya<>(zzbrm, executor));
            return this;
        }

        public final zzbwg zzaml() {
            return new zzbwg(this);
        }

        public final zza zza(zzbtb zzbtb, Executor executor) {
            this.zzgak.add(new zzbya<>(zzbtb, executor));
            return this;
        }

        public final zza zza(zzbrr zzbrr, Executor executor) {
            this.zzgal.add(new zzbya<>(zzbrr, executor));
            return this;
        }

        public final zza zza(zzbsa zzbsa, Executor executor) {
            this.zzgam.add(new zzbya<>(zzbsa, executor));
            return this;
        }

        public final zza zza(AppEventListener appEventListener, Executor executor) {
            this.zzgao.add(new zzbya<>(appEventListener, executor));
            return this;
        }

        public final zza zza(zzvc zzvc, Executor executor) {
            this.zzgag.add(new zzbya<>(zzvc, executor));
            return this;
        }

        public final zza zza(zzbse zzbse, Executor executor) {
            this.zzgai.add(new zzbya<>(zzbse, executor));
            return this;
        }

        public final zza zza(zzbtg zzbtg, Executor executor) {
            this.zzgaj.add(new zzbya<>(zzbtg, executor));
            return this;
        }

        public final zza zza(zzq zzq, Executor executor) {
            this.zzgaq.add(new zzbya<>(zzq, executor));
            return this;
        }

        public final zza zza(zzbtt zzbtt, Executor executor) {
            this.zzgau.add(new zzbya<>(zzbtt, executor));
            return this;
        }

        public final zza zza(zzdkk zzdkk) {
            this.zzfwg = zzdkk;
            return this;
        }

        public final zza zza(zzbua zzbua, Executor executor) {
            this.zzgar.add(new zzbya<>(zzbua, executor));
            return this;
        }
    }

    private zzbwg(zza zza2) {
        this.zzgag = zza2.zzgag;
        this.zzgai = zza2.zzgai;
        this.zzgaj = zza2.zzgaj;
        this.zzgah = zza2.zzgah;
        this.zzgak = zza2.zzgak;
        this.zzgal = zza2.zzgal;
        this.zzgam = zza2.zzgam;
        this.zzgan = zza2.zzgan;
        this.zzgao = zza2.zzgao;
        this.zzgap = zza2.zzgau;
        this.zzfwg = zza2.zzfwg;
        this.zzgaq = zza2.zzgaq;
        this.zzgar = zza2.zzgar;
    }

    public final zzcuw zza(d dVar, zzcuy zzcuy, zzcrq zzcrq) {
        if (this.zzgat == null) {
            this.zzgat = new zzcuw(dVar, zzcuy, zzcrq);
        }
        return this.zzgat;
    }

    public final Set<zzbya<zzbrm>> zzaly() {
        return this.zzgah;
    }

    public final Set<zzbya<zzbtb>> zzalz() {
        return this.zzgak;
    }

    public final Set<zzbya<zzbrr>> zzama() {
        return this.zzgal;
    }

    public final Set<zzbya<zzbsa>> zzamb() {
        return this.zzgam;
    }

    public final Set<zzbya<AdMetadataListener>> zzamc() {
        return this.zzgan;
    }

    public final Set<zzbya<AppEventListener>> zzamd() {
        return this.zzgao;
    }

    public final Set<zzbya<zzvc>> zzame() {
        return this.zzgag;
    }

    public final Set<zzbya<zzbse>> zzamf() {
        return this.zzgai;
    }

    public final Set<zzbya<zzbtg>> zzamg() {
        return this.zzgaj;
    }

    public final Set<zzbya<zzbtt>> zzamh() {
        return this.zzgap;
    }

    public final Set<zzbya<zzbua>> zzami() {
        return this.zzgar;
    }

    public final Set<zzbya<zzq>> zzamj() {
        return this.zzgaq;
    }

    public final zzdkk zzamk() {
        return this.zzfwg;
    }

    public final zzbrp zzc(Set<zzbya<zzbrr>> set) {
        if (this.zzgas == null) {
            this.zzgas = new zzbrp(set);
        }
        return this.zzgas;
    }
}
