package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaev;
import com.google.android.gms.internal.ads.zzaey;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzarf;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzasd;
import com.google.android.gms.internal.ads.zzaur;
import com.google.android.gms.internal.ads.zzavm;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzccx;
import com.google.android.gms.internal.ads.zzccy;
import com.google.android.gms.internal.ads.zzcxu;
import com.google.android.gms.internal.ads.zzdid;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzxi;
import com.google.android.gms.internal.ads.zzxl;
import com.google.android.gms.internal.ads.zzxx;
import com.google.android.gms.internal.ads.zzyg;
import java.util.HashMap;

public class ClientApi extends zzxx {
    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        return zzbgc.zza(context, zzane, i).zzafi().zzby(context).zzc(zzvs).zzfp(str).zzaht().zzahw();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzb(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        return zzbgc.zza(context, zzane, i).zzafn().zzbz(context).zzd(zzvs).zzfq(str).zzahy().zzaic();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzc(zv zvVar, zzvs zzvs, String str, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        zzdid zzahi = zzbgc.zza(context, zzane, i).zzafl().zzfo(str).zzbx(context).zzahi();
        if (i >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcvx)).intValue()) {
            return zzahi.zzahm();
        }
        return zzahi.zzahl();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zzc(zv zvVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzasd zzd(zv zvVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxi zza(zv zvVar, String str, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        return new zzcxu(zzbgc.zza(context, zzane, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaro zzb(zv zvVar) {
        Activity activity = (Activity) aw.P(zvVar);
        AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(activity.getIntent());
        if (zzd == null) {
            return new zzu(activity);
        }
        int i = zzd.zzdta;
        if (i == 1) {
            return new zzr(activity);
        }
        if (i == 2) {
            return new zzac(activity);
        }
        if (i == 3) {
            return new zzab(activity);
        }
        if (i == 4) {
            return new zzw(activity, zzd);
        }
        if (i != 5) {
            return new zzu(activity);
        }
        return new zzaa(activity);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaev zza(zv zvVar, zv zvVar2) {
        return new zzccx((FrameLayout) aw.P(zvVar), (FrameLayout) aw.P(zvVar2), 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzarf zzc(zv zvVar, zzane zzane, int i) {
        return zzbgc.zza((Context) aw.P(zvVar), zzane, i).zzaft();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaur zza(zv zvVar, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        return zzbgc.zza(context, zzane, i).zzafq().zzca(context).zzaib().zzaie();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzavm zzb(zv zvVar, String str, zzane zzane, int i) {
        Context context = (Context) aw.P(zvVar);
        return zzbgc.zza(context, zzane, i).zzafq().zzca(context).zzfr(str).zzaib().zzaif();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zza(zv zvVar, int i) {
        return zzbgc.zzh((Context) aw.P(zvVar), i).zzafg();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(zv zvVar, zzvs zzvs, String str, int i) {
        return new zzl((Context) aw.P(zvVar), zzvs, str, new zzazn(204204000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaxy zzb(zv zvVar, zzane zzane, int i) {
        return zzbgc.zza((Context) aw.P(zvVar), zzane, i).zzafs();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaey zza(zv zvVar, zv zvVar2, zv zvVar3) {
        return new zzccy((View) aw.P(zvVar), (HashMap) aw.P(zvVar2), (HashMap) aw.P(zvVar3));
    }
}
