package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.ADRequestList;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzbdu;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfh;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfo;
import com.google.android.gms.internal.ads.zzvc;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

public final class zzaij<T extends zzvc & zzbdu & zzbeb & zzaki & zzbfa & zzbfd & zzbfh & zzbfm & zzbfo> implements zzaif<T> {
    private final zza zzdhw;
    private final zzaqg zzdhx;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzazo zzdid;
    private final zzcqr zzdie;
    private zzt zzdif = null;

    public zzaij(zza zza, zzaqg zzaqg, zzcqr zzcqr, zzckn zzckn, zzdrz zzdrz) {
        this.zzdhw = zza;
        this.zzdhx = zzaqg;
        this.zzdie = zzcqr;
        this.zzdib = zzckn;
        this.zzdic = zzdrz;
        this.zzdid = new zzazo();
    }

    private final boolean zza(T t, Context context, String str, String str2) {
        zzr.zzkr();
        boolean zzba = zzj.zzba(context);
        zzr.zzkr();
        zzbg zzbd = zzj.zzbd(context);
        zzckn zzckn = this.zzdib;
        if (zzckn != null) {
            zzcrb.zza(context, zzckn, this.zzdic, this.zzdie, str2, "offline_open");
        }
        T t2 = t;
        boolean z = t2.zzacv().zzaeo() && t2.zzabe() == null;
        if (zzba) {
            this.zzdie.zzb(this.zzdid, str2);
            return false;
        }
        zzr.zzkr();
        if (zzj.zzbc(context) && zzbd != null && !z) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdae)).booleanValue()) {
                if (t2.zzacv().zzaeo()) {
                    zzcrb.zza(t2.zzabe(), null, zzbd, this.zzdie, this.zzdib, this.zzdic, str2, str);
                } else {
                    t.zza(zzbd, this.zzdie, this.zzdib, this.zzdic, str2, str, zzr.zzkt().zzzc());
                }
                zzckn zzckn2 = this.zzdib;
                if (zzckn2 != null) {
                    zzcrb.zza(context, zzckn2, this.zzdic, this.zzdie, str2, "dialog_impression");
                }
                t.onAdClicked();
                return true;
            }
        }
        this.zzdie.zzgm(str2);
        if (this.zzdib != null) {
            HashMap hashMap = new HashMap();
            zzr.zzkr();
            if (!zzj.zzbc(context)) {
                hashMap.put("dialog_not_shown_reason", "notifications_disabled");
            } else if (zzbd == null) {
                hashMap.put("dialog_not_shown_reason", "work_manager_unavailable");
            } else {
                if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzdae)).booleanValue()) {
                    hashMap.put("dialog_not_shown_reason", "notification_flow_disabled");
                } else if (z) {
                    hashMap.put("dialog_not_shown_reason", "fullscreen_no_activity");
                }
            }
            zzcrb.zza(context, this.zzdib, this.zzdic, this.zzdie, str2, "dialog_not_shown", hashMap);
        }
        return false;
    }

    private final void zzac(boolean z) {
        zzaqg zzaqg = this.zzdhx;
        if (zzaqg != null) {
            zzaqg.zzad(z);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzb(zzacr zzacr) {
        if (this.zzdib != null) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
                this.zzdic.zzb(zzdsa.zzgx("cct_action").zzu("cct_open_status", zzacr.toString()));
            } else {
                this.zzdib.zzaqr().zzr("action", "cct_action").zzr("cct_open_status", zzacr.toString()).zzaqt();
            }
        }
    }

    private static boolean zzc(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zzd(Map<String, String> map) {
        String str = map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        if ("c".equalsIgnoreCase(str)) {
            return zzr.zzkt().zzzc();
        }
        return -1;
    }

    static Uri zze(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            zzazk.zzc(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
        }
        return uri;
    }

    static Uri zza(Context context, zzei zzei, Uri uri, View view, Activity activity) {
        if (zzei == null) {
            return uri;
        }
        try {
            if (zzei.zzc(uri)) {
                return zzei.zza(uri, context, view, activity);
            }
            return uri;
        } catch (zzeh unused) {
            return uri;
        } catch (Exception e) {
            zzr.zzkv().zza(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
            return uri;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r21v0, resolved type: com.google.android.gms.internal.ads.zzaij<T extends com.google.android.gms.internal.ads.zzvc & com.google.android.gms.internal.ads.zzbdu & com.google.android.gms.internal.ads.zzbeb & com.google.android.gms.internal.ads.zzaki & com.google.android.gms.internal.ads.zzbfa & com.google.android.gms.internal.ads.zzbfd & com.google.android.gms.internal.ads.zzbfh & com.google.android.gms.internal.ads.zzbfm & com.google.android.gms.internal.ads.zzbfo> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(Object obj, Map map) {
        String str;
        boolean z;
        zzvc zzvc = (zzvc) obj;
        zzbeb zzbeb = (zzbeb) zzvc;
        String zzc = zzaxu.zzc((String) map.get("u"), zzbeb.getContext(), true);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            zzazk.zzex("Action missing from an open GMSG.");
            return;
        }
        zza zza = this.zzdhw;
        if (zza == null || zza.zzjy()) {
            zzdmw zzacp = zzbeb.zzacp();
            zzdnb zzadn = zzbeb.zzadn();
            boolean z2 = false;
            if (zzacp == null || zzadn == null) {
                str = "";
                z = false;
            } else {
                boolean z3 = zzacp.zzhjz;
                str = zzadn.zzbvs;
                z = z3;
            }
            if ("expand".equalsIgnoreCase(str2)) {
                if (zzbeb.zzadc()) {
                    zzazk.zzex("Cannot expand WebView that is already expanded.");
                    return;
                }
                zzac(false);
                ((zzbfh) zzvc).zzc(zzc(map), zzd(map));
            } else if ("webapp".equalsIgnoreCase(str2)) {
                zzac(false);
                if (zzc != null) {
                    ((zzbfh) zzvc).zza(zzc(map), zzd(map), zzc);
                } else {
                    ((zzbfh) zzvc).zza(zzc(map), zzd(map), (String) map.get("html"), (String) map.get("baseurl"));
                }
            } else {
                if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcur)).booleanValue()) {
                        zzac(true);
                        if (TextUtils.isEmpty(zzc)) {
                            zzazk.zzex("Cannot open browser with null or empty url");
                            zzb(zzacr.EMPTY_URL);
                            return;
                        }
                        Uri zze = zze(zza(zzbeb.getContext(), zzbeb.zzada(), Uri.parse(zzc), zzbeb.getView(), zzbeb.zzabe()));
                        if (!z || this.zzdie == null || !zza(zzvc, zzbeb.getContext(), zze.toString(), str)) {
                            this.zzdif = new zzaii(this);
                            ((zzbfh) zzvc).zza(new zzd(zze.toString(), this.zzdif, true));
                            return;
                        }
                        return;
                    }
                }
                if ("app".equalsIgnoreCase(str2) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                    zzac(true);
                    Intent zze2 = new zzaik(zzbeb.getContext(), zzbeb.zzada(), zzbeb.getView()).zze(map);
                    if (!z || this.zzdie == null || zze2 == null || !zza(zzvc, zzbeb.getContext(), zze2.getData().toString(), str)) {
                        try {
                            ((zzbfh) zzvc).zza(new zzd(zze2, this.zzdif));
                        } catch (ActivityNotFoundException e) {
                            zzazk.zzex(e.getMessage());
                        }
                    }
                } else if ("open_app".equalsIgnoreCase(str2)) {
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczw)).booleanValue()) {
                        zzac(true);
                        String str3 = (String) map.get("p");
                        if (str3 == null) {
                            zzazk.zzex("Package name missing from open app action.");
                        } else if (!z || this.zzdie == null || !zza(zzvc, zzbeb.getContext(), str3, str)) {
                            PackageManager packageManager = zzbeb.getContext().getPackageManager();
                            if (packageManager == null) {
                                zzazk.zzex("Cannot get package manager from open app action.");
                                return;
                            }
                            Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str3);
                            if (launchIntentForPackage != null) {
                                ((zzbfh) zzvc).zza(new zzd(launchIntentForPackage, this.zzdif));
                            }
                        }
                    }
                } else {
                    zzac(true);
                    String str4 = (String) map.get("intent_url");
                    Intent intent = null;
                    if (!TextUtils.isEmpty(str4)) {
                        try {
                            intent = Intent.parseUri(str4, 0);
                        } catch (URISyntaxException e2) {
                            String valueOf = String.valueOf(str4);
                            zzazk.zzc(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                        }
                    }
                    if (!(intent == null || intent.getData() == null)) {
                        Uri data = intent.getData();
                        if (!Uri.EMPTY.equals(data)) {
                            Uri zze3 = zze(zza(zzbeb.getContext(), zzbeb.zzada(), data, zzbeb.getView(), zzbeb.zzabe()));
                            if (!TextUtils.isEmpty(intent.getType())) {
                                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczx)).booleanValue()) {
                                    intent.setDataAndType(zze3, intent.getType());
                                }
                            }
                            intent.setData(zze3);
                        }
                    }
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdah)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id")) {
                        z2 = true;
                    }
                    HashMap hashMap = new HashMap();
                    if (z2) {
                        this.zzdif = new zzail(this, hashMap, map, zzvc);
                    }
                    if (intent == null) {
                        if (!TextUtils.isEmpty(zzc)) {
                            zzc = zze(zza(zzbeb.getContext(), zzbeb.zzada(), Uri.parse(zzc), zzbeb.getView(), zzbeb.zzabe())).toString();
                        }
                        if (!z || this.zzdie == null || !zza(zzvc, zzbeb.getContext(), zzc, str)) {
                            ((zzbfh) zzvc).zza(new zzd((String) map.get("i"), zzc, (String) map.get(ADRequestList.ORDER_M), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), this.zzdif));
                        } else if (z2) {
                            hashMap.put((String) map.get("event_id"), Boolean.TRUE);
                            ((zzaki) zzvc).zza("openIntentAsync", hashMap);
                        }
                    } else if (!z || this.zzdie == null || !zza(zzvc, zzbeb.getContext(), intent.getData().toString(), str)) {
                        ((zzbfh) zzvc).zza(new zzd(intent, this.zzdif));
                    } else if (z2) {
                        hashMap.put((String) map.get("event_id"), Boolean.TRUE);
                        ((zzaki) zzvc).zza("openIntentAsync", hashMap);
                    }
                }
            }
        } else {
            this.zzdhw.zzbk(zzc);
        }
    }
}
