package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.ads.zzepa;
import com.vungle.warren.model.CookieDBAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzawm implements zzawz {
    private static List<Future<Void>> zzdzv = Collections.synchronizedList(new ArrayList());
    private final Context context;
    private final Object lock = new Object();
    private final zzawu zzdwr;
    private final zzepa.zzb.C0061zzb zzdzw;
    private final LinkedHashMap<String, zzepa.zzb.zzh.C0067zzb> zzdzx;
    private final List<String> zzdzy = new ArrayList();
    private final List<String> zzdzz = new ArrayList();
    private final zzaxb zzeaa;
    private boolean zzeab;
    private HashSet<String> zzeac = new HashSet<>();
    private boolean zzead = false;
    private boolean zzeae = false;
    private boolean zzeaf = false;

    public zzawm(Context context2, zzazn zzazn, zzawu zzawu, String str, zzaxb zzaxb) {
        n.i(zzawu, "SafeBrowsing config is not present.");
        this.context = context2.getApplicationContext() != null ? context2.getApplicationContext() : context2;
        this.zzdzx = new LinkedHashMap<>();
        this.zzeaa = zzaxb;
        this.zzdwr = zzawu;
        for (String str2 : zzawu.zzeaq) {
            this.zzeac.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.zzeac.remove(CookieDBAdapter.CookieColumns.TABLE_NAME.toLowerCase(Locale.ENGLISH));
        zzepa.zzb.C0061zzb zzblp = zzepa.zzb.zzblp();
        zzblp.zzb(zzepa.zzb.zzg.OCTAGON_AD);
        zzblp.zzie(str);
        zzblp.zzif(str);
        zzepa.zzb.zza.C0060zza zzblr = zzepa.zzb.zza.zzblr();
        String str3 = this.zzdwr.zzeam;
        if (str3 != null) {
            zzblr.zzih(str3);
        }
        zzblp.zzb((zzepa.zzb.zza) ((zzelb) zzblr.zzbiw()));
        zzepa.zzb.zzi.zza zzbv = zzepa.zzb.zzi.zzbmg().zzbv(yv.a(this.context).f());
        String str4 = zzazn.zzbrp;
        if (str4 != null) {
            zzbv.zzim(str4);
        }
        d c = d.c();
        Context context3 = this.context;
        Objects.requireNonNull(c);
        long apkVersion = (long) g.getApkVersion(context3);
        if (apkVersion > 0) {
            zzbv.zzfs(apkVersion);
        }
        zzblp.zzb((zzepa.zzb.zzi) ((zzelb) zzbv.zzbiw()));
        this.zzdzw = zzblp;
    }

    private final zzepa.zzb.zzh.C0067zzb zzdw(String str) {
        zzepa.zzb.zzh.C0067zzb zzb;
        synchronized (this.lock) {
            zzb = this.zzdzx.get(str);
        }
        return zzb;
    }

    static final /* synthetic */ Void zzdx(String str) {
        return null;
    }

    private final zzdzw<Void> zzwz() {
        zzdzw<Void> zzb;
        boolean z = this.zzeab;
        if (!((z && this.zzdwr.zzeas) || (this.zzeaf && this.zzdwr.zzear) || (!z && this.zzdwr.zzeap))) {
            return zzdzk.zzag(null);
        }
        synchronized (this.lock) {
            for (zzepa.zzb.zzh.C0067zzb zzb2 : this.zzdzx.values()) {
                this.zzdzw.zzb((zzepa.zzb.zzh) ((zzelb) zzb2.zzbiw()));
            }
            this.zzdzw.zzo(this.zzdzy);
            this.zzdzw.zzp(this.zzdzz);
            if (zzaww.isEnabled()) {
                String url = this.zzdzw.getUrl();
                String zzbln = this.zzdzw.zzbln();
                StringBuilder sb = new StringBuilder(String.valueOf(url).length() + 53 + String.valueOf(zzbln).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(url);
                sb.append("\n  clickUrl: ");
                sb.append(zzbln);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzepa.zzb.zzh zzh : this.zzdzw.zzblm()) {
                    sb2.append("    [");
                    sb2.append(zzh.zzbmd());
                    sb2.append("] ");
                    sb2.append(zzh.getUrl());
                }
                zzaww.zzdy(sb2.toString());
            }
            zzdzw<String> zza = new zzay(this.context).zza(1, this.zzdwr.zzean, null, ((zzepa.zzb) ((zzelb) this.zzdzw.zzbiw())).toByteArray());
            if (zzaww.isEnabled()) {
                zza.addListener(zzawr.zzeak, zzazp.zzeic);
            }
            zzb = zzdzk.zzb(zza, zzawq.zzeaj, zzazp.zzeih);
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zza(String str, Map<String, String> map, int i) {
        synchronized (this.lock) {
            if (i == 3) {
                this.zzeaf = true;
            }
            if (this.zzdzx.containsKey(str)) {
                if (i == 3) {
                    this.zzdzx.get(str).zzb(zzepa.zzb.zzh.zza.zzib(i));
                }
                return;
            }
            zzepa.zzb.zzh.C0067zzb zzbme = zzepa.zzb.zzh.zzbme();
            zzepa.zzb.zzh.zza zzib = zzepa.zzb.zzh.zza.zzib(i);
            if (zzib != null) {
                zzbme.zzb(zzib);
            }
            zzbme.zzic(this.zzdzx.size());
            zzbme.zzik(str);
            zzepa.zzb.zzd.C0063zzb zzblw = zzepa.zzb.zzd.zzblw();
            if (this.zzeac.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.zzeac.contains(key.toLowerCase(Locale.ENGLISH))) {
                        zzblw.zzb((zzepa.zzb.zzc) ((zzelb) zzepa.zzb.zzc.zzblu().zzap(zzejr.zzhy(key)).zzaq(zzejr.zzhy(value)).zzbiw()));
                    }
                }
            }
            zzbme.zzb((zzepa.zzb.zzd) ((zzelb) zzblw.zzbiw()));
            this.zzdzx.put(str, zzbme);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzdv(String str) {
        synchronized (this.lock) {
            if (str == null) {
                this.zzdzw.zzblt();
            } else {
                this.zzdzw.zzig(str);
            }
        }
    }

    public final /* synthetic */ zzdzw zzi(Map map) {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.lock) {
                            int length = optJSONArray.length();
                            zzepa.zzb.zzh.C0067zzb zzdw = zzdw(str);
                            if (zzdw == null) {
                                String valueOf = String.valueOf(str);
                                zzaww.zzdy(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                boolean z = false;
                                for (int i = 0; i < length; i++) {
                                    zzdw.zzil(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z2 = this.zzeab;
                                if (length > 0) {
                                    z = true;
                                }
                                this.zzeab = z | z2;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (zzado.zzdek.get().booleanValue()) {
                    zzazk.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return zzdzk.immediateFailedFuture(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.zzeab) {
            synchronized (this.lock) {
                this.zzdzw.zzb(zzepa.zzb.zzg.OCTAGON_AD_SB_MATCH);
            }
        }
        return zzwz();
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzl(View view) {
        if (this.zzdwr.zzeao && !this.zzeae) {
            zzr.zzkr();
            Bitmap zzn = zzj.zzn(view);
            if (zzn == null) {
                zzaww.zzdy("Failed to capture the webview bitmap.");
                return;
            }
            this.zzeae = true;
            zzj.zzc(new zzawp(this, zzn));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final zzawu zzwv() {
        return this.zzdwr;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final boolean zzww() {
        return this.zzdwr.zzeao && !this.zzeae;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzwx() {
        this.zzead = true;
    }

    @Override // com.google.android.gms.internal.ads.zzawz
    public final void zzwy() {
        synchronized (this.lock) {
            zzdzw<Map<String, String>> zza = this.zzeaa.zza(this.context, this.zzdzx.keySet());
            zzawo zzawo = new zzawo(this);
            zzdzv zzdzv2 = zzazp.zzeih;
            zzdzw zzb = zzdzk.zzb(zza, zzawo, zzdzv2);
            zzdzw zza2 = zzdzk.zza(zzb, 10, TimeUnit.SECONDS, zzazp.zzeif);
            zzdzk.zza(zzb, new zzawt(this, zza2), zzdzv2);
            zzdzv.add(zza2);
        }
    }

    public final /* synthetic */ void zza(Bitmap bitmap) {
        zzeka zzbgl = zzejr.zzbgl();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzbgl);
        synchronized (this.lock) {
            this.zzdzw.zzb((zzepa.zzb.zzf) ((zzelb) zzepa.zzb.zzf.zzbmb().zzas(zzbgl.zzbfz()).zzii("image/png").zzb(zzepa.zzb.zzf.zza.TYPE_CREATIVE).zzbiw()));
        }
    }
}
