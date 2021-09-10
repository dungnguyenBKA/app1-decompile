package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

final class zzbhf extends zzdga {
    private zzeqo<String> zzezj;
    private zzeqo<zzcjz> zzezl;
    private zzeqo<Map<zzdrk, zzcjz>> zzezn;
    private zzeqo<Set<zzbya<zzdrp>>> zzezp;
    private zzeqo<Set<zzbya<zzdrp>>> zzfad;
    private zzeqo zzfae;
    private zzeqo<zzdrj> zzfaf;
    private final /* synthetic */ zzbgz zzffq;
    private final zzdhj zzfju;
    private zzeqo<Integer> zzfjv;
    private zzeqo<zzdfw> zzfjw;
    private zzeqo<String> zzfjx;
    private zzeqo<zzdgg> zzfjy;
    private zzeqo<zzdgk> zzfjz;
    private zzeqo<zzdgq> zzfka;
    private zzeqo<zzdgz> zzfkb;
    private zzeqo<zzdhe> zzfkc;
    private zzeqo<zzdhq> zzfkd;
    private zzeqo<zzcjz> zzfke;
    private zzeqo<zzcjz> zzfkf;
    private zzeqo<zzcjz> zzfkg;

    private zzbhf(zzbgz zzbgz, zzdhj zzdhj) {
        this.zzffq = zzbgz;
        this.zzfju = zzdhj;
        this.zzfjv = new zzdhl(zzdhj);
        this.zzfjw = new zzdgb(zzbjb.zzaiv(), zzbgz.zzewr, zzbgz.zzewx, zzdqj.zzaww(), this.zzfjv);
        this.zzfjx = new zzdhi(zzdhj);
        this.zzfjy = new zzdgi(zzbgq.zzewi, zzbgz.zzewr, this.zzfjx, zzdqj.zzaww());
        this.zzfjz = new zzdgo(zzbjb.zzaiv(), this.zzfjv, zzbgz.zzewr, zzbgz.zzeyb, zzbgz.zzewx, zzdqj.zzaww());
        this.zzfka = new zzdgs(zzbiv.zzaip(), zzdqj.zzaww(), zzbgz.zzewr);
        this.zzfkb = new zzdhb(zzbix.zzair(), zzdqj.zzaww(), this.zzfjx);
        this.zzfkc = new zzdhg(zzbiz.zzait(), zzbgz.zzewx, zzbgz.zzewr);
        this.zzfkd = new zzdhs(zzdqj.zzaww());
        this.zzezj = new zzdhk(zzdhj);
        this.zzezl = zzeqc.zzau(zzcjs.zzaqj());
        this.zzfke = zzeqc.zzau(zzcjq.zzaqh());
        this.zzfkf = zzeqc.zzau(zzcju.zzaql());
        this.zzfkg = zzeqc.zzau(zzcjw.zzaqn());
        this.zzezn = ((zzeqf) ((zzeqf) ((zzeqf) ((zzeqf) zzeqd.zzih(4).zza(zzdrk.GMS_SIGNALS, this.zzezl)).zza(zzdrk.BUILD_URL, this.zzfke)).zza(zzdrk.HTTP, this.zzfkf)).zza(zzdrk.PRE_PROCESS, this.zzfkg)).zzbmn();
        this.zzezp = zzeqc.zzau(new zzcjy(this.zzezj, zzbgz.zzewr, zzdqj.zzaww(), this.zzezn));
        zzeqk zzbmo = zzeqk.zzas(0, 1).zzax(this.zzezp).zzbmo();
        this.zzfad = zzbmo;
        this.zzfae = zzdrr.zzat(zzbmo);
        this.zzfaf = zzeqc.zzau(zzdrs.zzae(zzdqj.zzaww(), zzbgz.zzewx, this.zzfae));
    }

    private final zzdhd zzagy() {
        return new zzdhd((zzaay) zzeqh.zza(new zzaay(), "Cannot return null from a non-@Nullable @Provides method"), zzdqj.zzawx(), (List) zzeqh.zza(this.zzfju.zzaty(), "Cannot return null from a non-@Nullable @Provides method"));
    }

    private final zzdgc zzagz() {
        return new zzdgc(zzbjc.zzaiw(), zzdqj.zzawx(), (String) zzeqh.zza(this.zzfju.zzatw(), "Cannot return null from a non-@Nullable @Provides method"), this.zzfju.zzatx(), this.zzfju.zzaua());
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdfl<JSONObject> zzaha() {
        return zzdfm.zza(zzdqj.zzawx(), zzdxg.zza((zzdfi) zzeqh.zza(new zzddy(new zzdgz(zzbiy.zzais(), zzdqj.zzawx(), zzdhi.zzb(this.zzfju)), 0, (ScheduledExecutorService) this.zzffq.zzewx.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(new zzddy(new zzdhe(zzbja.zzaiu(), (ScheduledExecutorService) this.zzffq.zzewx.get(), zzbge.zza(this.zzffq.zzewm)), ((Long) zzwr.zzqr().zzd(zzabp.zzctx)).longValue(), (ScheduledExecutorService) this.zzffq.zzewx.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(new zzddy(new zzdfw(zzbjc.zzaiw(), zzbge.zza(this.zzffq.zzewm), (ScheduledExecutorService) this.zzffq.zzewx.get(), zzdqj.zzawx(), this.zzfju.zzaua()), 0, (ScheduledExecutorService) this.zzffq.zzewx.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(new zzddy(new zzdhq(zzdqj.zzawx()), 0, (ScheduledExecutorService) this.zzffq.zzewx.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(zzdhn.zzaub(), "Cannot return null from a non-@Nullable @Provides method"), new zzdgg(null, zzbge.zza(this.zzffq.zzewm), zzdhi.zzb(this.zzfju), zzdqj.zzawx()), new zzdgq(zzbiw.zzaiq(), zzdqj.zzawx(), zzbge.zza(this.zzffq.zzewm)), zzagy(), zzagz(), new zzdgk(zzbjc.zzaiw(), this.zzfju.zzaua(), zzbge.zza(this.zzffq.zzewm), (zzayo) this.zzffq.zzeyb.get(), (ScheduledExecutorService) this.zzffq.zzewx.get(), zzdqj.zzawx()), (zzdfi) this.zzffq.zzeyc.get()));
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdfl<JSONObject> zzahb() {
        return zzdho.zza(zzbiy.zzais(), this.zzffq.zzeyc.get(), zzagz(), zzagy(), zzeqc.zzav(this.zzfjw), zzeqc.zzav(this.zzfjy), zzeqc.zzav(this.zzfjz), zzeqc.zzav(this.zzfka), zzeqc.zzav(this.zzfkb), zzeqc.zzav(this.zzfkc), zzeqc.zzav(this.zzfkd), zzdqj.zzawx(), (ScheduledExecutorService) this.zzffq.zzewx.get());
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdrj zzahc() {
        return this.zzfaf.get();
    }
}
