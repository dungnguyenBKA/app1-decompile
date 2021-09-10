package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

public final class zzdje implements zzczc<zzblv> {
    private final Executor zzfsj;
    private final ViewGroup zzfum;
    @GuardedBy("this")
    private final zzdnr zzgxu;
    private final zzcxy zzgxy;
    private final zzbgc zzgzs;
    private final Context zzhfk;
    private final zzcys zzhgg;
    private zzacl zzhgh;
    private final zzbts zzhgi;
    @GuardedBy("this")
    private zzdzw<zzblv> zzhgj;

    public zzdje(Context context, Executor executor, zzvs zzvs, zzbgc zzbgc, zzcxy zzcxy, zzcys zzcys, zzdnr zzdnr) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgc;
        this.zzgxy = zzcxy;
        this.zzhgg = zzcys;
        this.zzgxu = zzdnr;
        this.zzhgi = zzbgc.zzafe();
        this.zzfum = new FrameLayout(context);
        zzdnr.zzg(zzvs);
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<zzblv> zzdzw = this.zzhgj;
        return zzdzw != null && !zzdzw.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvl, String str, zzczb zzczb, zzcze<? super zzblv> zzcze) {
        zzbmr zzbmr;
        if (str == null) {
            zzazk.zzev("Ad unit ID should not be null for banner ad.");
            this.zzfsj.execute(new zzdjh(this));
            return false;
        } else if (isLoading()) {
            return false;
        } else {
            zzdnp zzavh = this.zzgxu.zzgs(str).zzh(zzvl).zzavh();
            if (!zzadn.zzdei.get().booleanValue() || !this.zzgxu.zzkg().zzcik) {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczs)).booleanValue()) {
                    zzbmr = this.zzgzs.zzafh().zzd(new zzbqx.zza().zzcf(this.zzhfk).zza(zzavh).zzalo()).zzd(new zzbwg.zza().zza((zzbua) this.zzgxy, this.zzfsj).zza((AppEventListener) this.zzgxy, this.zzfsj).zzaml()).zza(new zzcxa(this.zzhgh)).zzb(new zzcaq(zzcco.zzgfe, null)).zza(new zzbnq(this.zzhgi)).zzd(new zzblu(this.zzfum)).zzahk();
                } else {
                    zzbmr = this.zzgzs.zzafh().zzd(new zzbqx.zza().zzcf(this.zzhfk).zza(zzavh).zzalo()).zzd(new zzbwg.zza().zza((zzbua) this.zzgxy, this.zzfsj).zza((zzvc) this.zzgxy, this.zzfsj).zza(this.zzhgg, this.zzfsj).zza((zzbse) this.zzgxy, this.zzfsj).zza((zzbrm) this.zzgxy, this.zzfsj).zza((zzbtb) this.zzgxy, this.zzfsj).zza((zzbrr) this.zzgxy, this.zzfsj).zza((AppEventListener) this.zzgxy, this.zzfsj).zza((zzbtt) this.zzgxy, this.zzfsj).zzaml()).zza(new zzcxa(this.zzhgh)).zzb(new zzcaq(zzcco.zzgfe, null)).zza(new zzbnq(this.zzhgi)).zzd(new zzblu(this.zzfum)).zzahk();
                }
                zzdzw<zzblv> zzalb = zzbmr.zzagj().zzalb();
                this.zzhgj = zzalb;
                zzdzk.zza(zzalb, new zzdjg(this, zzcze, zzbmr), this.zzfsj);
                return true;
            }
            zzcxy zzcxy = this.zzgxy;
            if (zzcxy != null) {
                zzcxy.zzc(zzdok.zza(zzdom.INVALID_AD_SIZE, null, null));
            }
            return false;
        }
    }

    public final ViewGroup zzaui() {
        return this.zzfum;
    }

    public final zzdnr zzauj() {
        return this.zzgxu;
    }

    public final boolean zzauk() {
        ViewParent parent = this.zzfum.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return zzr.zzkr().zza(view, view.getContext());
    }

    public final void zzaul() {
        this.zzhgi.zzdx(60);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaum() {
        this.zzgxy.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }

    public final void zza(zzacl zzacl) {
        this.zzhgh = zzacl;
    }

    public final void zza(zzww zzww) {
        this.zzhgg.zzb(zzww);
    }

    public final void zza(zzbtw zzbtw) {
        this.zzhgi.zza(zzbtw, this.zzfsj);
    }
}
