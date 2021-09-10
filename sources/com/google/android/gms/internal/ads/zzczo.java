package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbwg;
import com.google.android.gms.internal.ads.zzdab;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public final class zzczo extends zzayb {
    private static final List<String> zzgzo = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    private static final List<String> zzgzp = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    private static final List<String> zzgzq = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    private static final List<String> zzgzr = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    private Context context;
    private zzazn zzboz;
    private final ScheduledExecutorService zzfri;
    private zzei zzfrl;
    private Point zzgcr = new Point();
    private Point zzgcs = new Point();
    private final zzdzv zzghl;
    private zzdof<zzcgk> zzgup;
    private zzbgc zzgzs;
    private zzasq zzgzt;

    public zzczo(zzbgc zzbgc, Context context2, zzei zzei, zzazn zzazn, zzdof<zzcgk> zzdof, zzdzv zzdzv, ScheduledExecutorService scheduledExecutorService) {
        this.zzgzs = zzbgc;
        this.context = context2;
        this.zzfrl = zzei;
        this.zzboz = zzazn;
        this.zzgup = zzdof;
        this.zzghl = zzdzv;
        this.zzfri = scheduledExecutorService;
    }

    private final boolean zzasu() {
        Map<String, WeakReference<View>> map;
        zzasq zzasq = this.zzgzt;
        return (zzasq == null || (map = zzasq.zzdto) == null || map.isEmpty()) ? false : true;
    }

    static /* synthetic */ Uri zzc(Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zza(uri, "nas", str) : uri;
    }

    private final zzdzw<String> zzgq(String str) {
        zzcgk[] zzcgkArr = new zzcgk[1];
        zzdzw zzb = zzdzk.zzb(this.zzgup.zzavm(), new zzczv(this, zzcgkArr, str), this.zzghl);
        zzb.addListener(new zzczy(this, zzcgkArr), this.zzghl);
        return zzdzf.zzg(zzb).zza((long) ((Integer) zzwr.zzqr().zzd(zzabp.zzczd)).intValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(zzczt.zzeaj, this.zzghl).zza(Exception.class, zzczw.zzeaj, this.zzghl);
    }

    private static boolean zzk(Uri uri) {
        return zza(uri, zzgzq, zzgzr);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zv zvVar, zzaye zzaye, zzaxx zzaxx) {
        Context context2 = (Context) aw.P(zvVar);
        this.context = context2;
        String str = zzaye.zzbut;
        String str2 = zzaye.zzbrm;
        zzvs zzvs = zzaye.zzebq;
        zzvl zzvl = zzaye.zzebr;
        zzczl zzafr = this.zzgzs.zzafr();
        zzbqx.zza zzcf = new zzbqx.zza().zzcf(context2);
        zzdnr zzdnr = new zzdnr();
        if (str == null) {
            str = "adUnitId";
        }
        zzdnr zzgs = zzdnr.zzgs(str);
        if (zzvl == null) {
            zzvl = new zzvo().zzqd();
        }
        zzdnr zzh = zzgs.zzh(zzvl);
        if (zzvs == null) {
            zzvs = new zzvs();
        }
        zzdzk.zza(zzafr.zzg(zzcf.zza(zzh.zzg(zzvs).zzavh()).zzalo()).zza(new zzdab(new zzdab.zza().zzgr(str2))).zzg(new zzbwg.zza().zzaml()).zzaim().zzail(), new zzczx(this, zzaxx), this.zzgzs.zzafa());
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzan(zv zvVar) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) aw.P(zvVar);
            zzasq zzasq = this.zzgzt;
            this.zzgcr = zzbn.zza(motionEvent, zzasq == null ? null : zzasq.zzaat);
            if (motionEvent.getAction() == 0) {
                this.zzgcs = this.zzgcr;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            Point point = this.zzgcr;
            obtain.setLocation((float) point.x, (float) point.y);
            this.zzfrl.zza(obtain);
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final zv zzao(zv zvVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final zv zzb(zv zvVar, zv zvVar2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzb(List<Uri> list, zv zvVar, zzasj zzasj) {
        try {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
                zzasj.onError("The updating URL feature is not enabled.");
            } else if (list.size() != 1) {
                zzasj.onError("There should be only 1 click URL.");
            } else {
                Uri uri = list.get(0);
                if (!zza(uri, zzgzo, zzgzp)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzazk.zzex(sb.toString());
                    zzasj.onSuccess(list);
                    return;
                }
                zzdzw zze = this.zzghl.zze(new zzczp(this, uri, zvVar));
                if (zzasu()) {
                    zze = zzdzk.zzb(zze, new zzczs(this), this.zzghl);
                } else {
                    zzazk.zzew("Asset view map is empty.");
                }
                zzdzk.zza(zze, new zzczz(this, zzasj), this.zzgzs.zzafa());
            }
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzl(Uri uri) {
        return zzdzk.zzb(zzgq("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzczu(this, uri), this.zzghl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzb(ArrayList arrayList) {
        return zzdzk.zzb(zzgq("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzczr(this, arrayList), this.zzghl);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zzasq zzasq) {
        this.zzgzt = zzasq;
        this.zzgup.ensureSize(1);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(List<Uri> list, zv zvVar, zzasj zzasj) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzczc)).booleanValue()) {
            try {
                zzasj.onError("The updating URL feature is not enabled.");
            } catch (RemoteException e) {
                zzazk.zzc("", e);
            }
        } else {
            zzdzw zze = this.zzghl.zze(new zzczn(this, list, zvVar));
            if (zzasu()) {
                zze = zzdzk.zzb(zze, new zzczq(this), this.zzghl);
            } else {
                zzazk.zzew("Asset view map is empty.");
            }
            zzdzk.zza(zze, new zzdaa(this, zzasj), this.zzgzs.zzafa());
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: zza */
    public final Uri zzb(Uri uri, zv zvVar) {
        try {
            uri = this.zzfrl.zza(uri, this.context, (View) aw.P(zvVar), null);
        } catch (zzeh e) {
            zzazk.zzd("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    private static boolean zza(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (!(host == null || path == null)) {
            for (String str : list) {
                if (path.contains(str)) {
                    for (String str2 : list2) {
                        if (host.endsWith(str2)) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    private static Uri zza(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = indexOf + 1;
        return Uri.parse(uri2.substring(0, i) + str + "=" + str2 + "&" + uri2.substring(i));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(zzcgk[] zzcgkArr) {
        if (zzcgkArr[0] != null) {
            this.zzgup.zzd(zzdzk.zzag(zzcgkArr[0]));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzcgk[] zzcgkArr, String str, zzcgk zzcgk) {
        zzcgkArr[0] = zzcgk;
        Context context2 = this.context;
        zzasq zzasq = this.zzgzt;
        Map<String, WeakReference<View>> map = zzasq.zzdto;
        JSONObject zza = zzbn.zza(context2, map, map, zzasq.zzaat);
        JSONObject zza2 = zzbn.zza(this.context, this.zzgzt.zzaat);
        JSONObject zzt = zzbn.zzt(this.zzgzt.zzaat);
        JSONObject zzb = zzbn.zzb(this.context, this.zzgzt.zzaat);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", zza);
        jSONObject.put("ad_view_signal", zza2);
        jSONObject.put("scroll_view_signal", zzt);
        jSONObject.put("lock_screen_signal", zzb);
        if (str == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
            jSONObject.put("click_signal", zzbn.zza((String) null, this.context, this.zzgcs, this.zzgcr));
        }
        return zzcgk.zzc(str, jSONObject);
    }

    static /* synthetic */ ArrayList zza(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzk(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zza(uri, "nas", str));
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ ArrayList zza(List list, zv zvVar) {
        String zza = this.zzfrl.zzca() != null ? this.zzfrl.zzca().zza(this.context, (View) aw.P(zvVar), (Activity) null) : "";
        if (!TextUtils.isEmpty(zza)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzk(uri)) {
                    String valueOf = String.valueOf(uri);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append("Not a Google URL: ");
                    sb.append(valueOf);
                    zzazk.zzex(sb.toString());
                    arrayList.add(uri);
                } else {
                    arrayList.add(zza(uri, "ms", zza));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception("Empty impression URLs result.");
        }
        throw new Exception("Failed to get view signals.");
    }
}
