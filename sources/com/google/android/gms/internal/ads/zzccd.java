package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.Collections;
import java.util.List;

public final class zzccd {
    private Bundle extras;
    private zzaej zzdfv;
    private List<zzzu> zzdgj = Collections.emptyList();
    private List<?> zzeuv;
    private double zzeuy;
    private float zzevk;
    private zv zzfvs;
    private int zzgee;
    private zzzc zzgef;
    private View zzgeg;
    private zzzu zzgeh;
    private zzbeb zzgei;
    private zzbeb zzgej;
    private View zzgek;
    private zv zzgel;
    private zzaer zzgem;
    private zzaer zzgen;
    private String zzgeo;
    private e0<String, zzaed> zzgep = new e0<>();
    private e0<String, String> zzgeq = new e0<>();
    private String zzger;

    private final synchronized void setMediaContentAspectRatio(float f) {
        this.zzevk = f;
    }

    private static <T> T zzau(zv zvVar) {
        if (zvVar == null) {
            return null;
        }
        return (T) aw.P(zvVar);
    }

    private final synchronized String zzfz(String str) {
        return this.zzgeq.getOrDefault(str, null);
    }

    public final synchronized void destroy() {
        zzbeb zzbeb = this.zzgei;
        if (zzbeb != null) {
            zzbeb.destroy();
            this.zzgei = null;
        }
        zzbeb zzbeb2 = this.zzgej;
        if (zzbeb2 != null) {
            zzbeb2.destroy();
            this.zzgej = null;
        }
        this.zzfvs = null;
        this.zzgep.clear();
        this.zzgeq.clear();
        this.zzgef = null;
        this.zzdfv = null;
        this.zzgeg = null;
        this.zzeuv = null;
        this.extras = null;
        this.zzgek = null;
        this.zzgel = null;
        this.zzgem = null;
        this.zzgen = null;
        this.zzgeo = null;
    }

    public final synchronized String getAdvertiser() {
        return zzfz(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER);
    }

    public final synchronized String getBody() {
        return zzfz("body");
    }

    public final synchronized String getCallToAction() {
        return zzfz("call_to_action");
    }

    public final synchronized String getCustomTemplateId() {
        return this.zzgeo;
    }

    public final synchronized Bundle getExtras() {
        if (this.extras == null) {
            this.extras = new Bundle();
        }
        return this.extras;
    }

    public final synchronized String getHeadline() {
        return zzfz("headline");
    }

    public final synchronized List<?> getImages() {
        return this.zzeuv;
    }

    public final synchronized float getMediaContentAspectRatio() {
        return this.zzevk;
    }

    public final synchronized List<zzzu> getMuteThisAdReasons() {
        return this.zzdgj;
    }

    public final synchronized String getPrice() {
        return zzfz("price");
    }

    public final synchronized double getStarRating() {
        return this.zzeuy;
    }

    public final synchronized String getStore() {
        return zzfz("store");
    }

    public final synchronized zzzc getVideoController() {
        return this.zzgef;
    }

    public final synchronized void setImages(List<zzaed> list) {
        this.zzeuv = list;
    }

    public final synchronized void setStarRating(double d) {
        this.zzeuy = d;
    }

    public final synchronized void zza(zzaej zzaej) {
        this.zzdfv = zzaej;
    }

    public final synchronized void zzac(View view) {
        this.zzgek = view;
    }

    public final synchronized int zzanu() {
        return this.zzgee;
    }

    public final synchronized View zzanv() {
        return this.zzgeg;
    }

    public final zzaer zzanw() {
        List<?> list = this.zzeuv;
        if (!(list == null || list.size() == 0)) {
            Object obj = this.zzeuv.get(0);
            if (obj instanceof IBinder) {
                return zzaeq.zzo((IBinder) obj);
            }
        }
        return null;
    }

    public final synchronized zzzu zzanx() {
        return this.zzgeh;
    }

    public final synchronized View zzany() {
        return this.zzgek;
    }

    public final synchronized zzbeb zzanz() {
        return this.zzgei;
    }

    public final synchronized zzbeb zzaoa() {
        return this.zzgej;
    }

    public final synchronized zv zzaob() {
        return this.zzfvs;
    }

    public final synchronized e0<String, zzaed> zzaoc() {
        return this.zzgep;
    }

    public final synchronized String zzaod() {
        return this.zzger;
    }

    public final synchronized e0<String, String> zzaoe() {
        return this.zzgeq;
    }

    public final synchronized void zzat(zv zvVar) {
        this.zzfvs = zvVar;
    }

    public final synchronized void zzb(zzzc zzzc) {
        this.zzgef = zzzc;
    }

    public final synchronized void zzdz(int i) {
        this.zzgee = i;
    }

    public final synchronized void zzf(zzbeb zzbeb) {
        this.zzgei = zzbeb;
    }

    public final synchronized void zzfx(String str) {
        this.zzgeo = str;
    }

    public final synchronized void zzfy(String str) {
        this.zzger = str;
    }

    public final synchronized void zzg(zzbeb zzbeb) {
        this.zzgej = zzbeb;
    }

    public final synchronized void zzh(List<zzzu> list) {
        this.zzdgj = list;
    }

    public final synchronized void zzn(String str, String str2) {
        if (str2 == null) {
            this.zzgeq.remove(str);
        } else {
            this.zzgeq.put(str, str2);
        }
    }

    public final synchronized zzaer zztn() {
        return this.zzgem;
    }

    public final synchronized zzaej zzto() {
        return this.zzdfv;
    }

    public final synchronized zv zztp() {
        return this.zzgel;
    }

    public final synchronized zzaer zztq() {
        return this.zzgen;
    }

    public final synchronized void zza(zzzu zzzu) {
        this.zzgeh = zzzu;
    }

    public final synchronized void zzb(zzaer zzaer) {
        this.zzgen = zzaer;
    }

    public static zzccd zzb(zzanx zzanx) {
        try {
            return zza(zza(zzanx.getVideoController(), zzanx), zzanx.zzto(), (View) zzau(zzanx.zzvg()), zzanx.getHeadline(), zzanx.getImages(), zzanx.getBody(), zzanx.getExtras(), zzanx.getCallToAction(), (View) zzau(zzanx.zzvh()), zzanx.zztp(), zzanx.getStore(), zzanx.getPrice(), zzanx.getStarRating(), zzanx.zztn(), zzanx.getAdvertiser(), zzanx.getMediaContentAspectRatio());
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public final synchronized void zza(zzaer zzaer) {
        this.zzgem = zzaer;
    }

    public final synchronized void zza(String str, zzaed zzaed) {
        if (zzaed == null) {
            this.zzgep.remove(str);
        } else {
            this.zzgep.put(str, zzaed);
        }
    }

    public static zzccd zza(zzans zzans) {
        try {
            zzcce zza = zza(zzans.getVideoController(), (zzanx) null);
            zzaej zzto = zzans.zzto();
            String headline = zzans.getHeadline();
            List<?> images = zzans.getImages();
            String body = zzans.getBody();
            Bundle extras2 = zzans.getExtras();
            String callToAction = zzans.getCallToAction();
            zv zztp = zzans.zztp();
            String advertiser = zzans.getAdvertiser();
            zzaer zztq = zzans.zztq();
            zzccd zzccd = new zzccd();
            zzccd.zzgee = 1;
            zzccd.zzgef = zza;
            zzccd.zzdfv = zzto;
            zzccd.zzgeg = (View) zzau(zzans.zzvg());
            zzccd.zzn("headline", headline);
            zzccd.zzeuv = images;
            zzccd.zzn("body", body);
            zzccd.extras = extras2;
            zzccd.zzn("call_to_action", callToAction);
            zzccd.zzgek = (View) zzau(zzans.zzvh());
            zzccd.zzgel = zztp;
            zzccd.zzn(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, advertiser);
            zzccd.zzgen = zztq;
            return zzccd;
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static zzccd zzb(zzanr zzanr) {
        try {
            return zza(zza(zzanr.getVideoController(), (zzanx) null), zzanr.zzto(), (View) zzau(zzanr.zzvg()), zzanr.getHeadline(), zzanr.getImages(), zzanr.getBody(), zzanr.getExtras(), zzanr.getCallToAction(), (View) zzau(zzanr.zzvh()), zzanr.zztp(), zzanr.getStore(), zzanr.getPrice(), zzanr.getStarRating(), zzanr.zztn(), null, 0.0f);
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzccd zza(zzanr zzanr) {
        try {
            zzcce zza = zza(zzanr.getVideoController(), (zzanx) null);
            zzaej zzto = zzanr.zzto();
            String headline = zzanr.getHeadline();
            List<?> images = zzanr.getImages();
            String body = zzanr.getBody();
            Bundle extras2 = zzanr.getExtras();
            String callToAction = zzanr.getCallToAction();
            zv zztp = zzanr.zztp();
            String store = zzanr.getStore();
            String price = zzanr.getPrice();
            double starRating = zzanr.getStarRating();
            zzaer zztn = zzanr.zztn();
            zzccd zzccd = new zzccd();
            zzccd.zzgee = 2;
            zzccd.zzgef = zza;
            zzccd.zzdfv = zzto;
            zzccd.zzgeg = (View) zzau(zzanr.zzvg());
            zzccd.zzn("headline", headline);
            zzccd.zzeuv = images;
            zzccd.zzn("body", body);
            zzccd.extras = extras2;
            zzccd.zzn("call_to_action", callToAction);
            zzccd.zzgek = (View) zzau(zzanr.zzvh());
            zzccd.zzgel = zztp;
            zzccd.zzn("store", store);
            zzccd.zzn("price", price);
            zzccd.zzeuy = starRating;
            zzccd.zzgem = zztn;
            return zzccd;
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzccd zzb(zzans zzans) {
        try {
            return zza(zza(zzans.getVideoController(), (zzanx) null), zzans.zzto(), (View) zzau(zzans.zzvg()), zzans.getHeadline(), zzans.getImages(), zzans.getBody(), zzans.getExtras(), zzans.getCallToAction(), (View) zzau(zzans.zzvh()), zzans.zztp(), null, null, -1.0d, zzans.zztq(), zzans.getAdvertiser(), 0.0f);
        } catch (RemoteException e) {
            zzazk.zzd("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    private static zzccd zza(zzzc zzzc, zzaej zzaej, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, zv zvVar, String str4, String str5, double d, zzaer zzaer, String str6, float f) {
        zzccd zzccd = new zzccd();
        zzccd.zzgee = 6;
        zzccd.zzgef = zzzc;
        zzccd.zzdfv = zzaej;
        zzccd.zzgeg = view;
        zzccd.zzn("headline", str);
        zzccd.zzeuv = list;
        zzccd.zzn("body", str2);
        zzccd.extras = bundle;
        zzccd.zzn("call_to_action", str3);
        zzccd.zzgek = view2;
        zzccd.zzgel = zvVar;
        zzccd.zzn("store", str4);
        zzccd.zzn("price", str5);
        zzccd.zzeuy = d;
        zzccd.zzgem = zzaer;
        zzccd.zzn(VisionDataDBAdapter.VisionDataColumns.COLUMN_ADVERTISER, str6);
        zzccd.setMediaContentAspectRatio(f);
        return zzccd;
    }

    private static zzcce zza(zzzc zzzc, zzanx zzanx) {
        if (zzzc == null) {
            return null;
        }
        return new zzcce(zzzc, zzanx);
    }
}
