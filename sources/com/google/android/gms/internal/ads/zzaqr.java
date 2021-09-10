package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

public final class zzaqr extends zzaqq implements zzaif<zzbeb> {
    private final Context context;
    private float density;
    private int maxHeight = -1;
    private int maxWidth = -1;
    private int rotation;
    private final WindowManager zzbre;
    private final zzbeb zzdjd;
    private final zzaaw zzdqh;
    private int zzdqi = -1;
    private int zzdqj = -1;
    private int zzdqk = -1;
    private int zzdql = -1;
    private DisplayMetrics zzwz;

    public zzaqr(zzbeb zzbeb, Context context2, zzaaw zzaaw) {
        super(zzbeb);
        this.zzdjd = zzbeb;
        this.context = context2;
        this.zzdqh = zzaaw;
        this.zzbre = (WindowManager) context2.getSystemService("window");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        this.zzwz = new DisplayMetrics();
        Display defaultDisplay = this.zzbre.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzwz);
        this.density = this.zzwz.density;
        this.rotation = defaultDisplay.getRotation();
        zzwr.zzqn();
        DisplayMetrics displayMetrics = this.zzwz;
        this.zzdqi = zzaza.zzb(displayMetrics, displayMetrics.widthPixels);
        zzwr.zzqn();
        DisplayMetrics displayMetrics2 = this.zzwz;
        this.zzdqj = zzaza.zzb(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzabe = this.zzdjd.zzabe();
        if (zzabe == null || zzabe.getWindow() == null) {
            this.maxWidth = this.zzdqi;
            this.maxHeight = this.zzdqj;
        } else {
            zzr.zzkr();
            int[] zzf = zzj.zzf(zzabe);
            zzwr.zzqn();
            this.maxWidth = zzaza.zzb(this.zzwz, zzf[0]);
            zzwr.zzqn();
            this.maxHeight = zzaza.zzb(this.zzwz, zzf[1]);
        }
        if (this.zzdjd.zzacv().zzaeo()) {
            this.zzdqk = this.zzdqi;
            this.zzdql = this.zzdqj;
        } else {
            this.zzdjd.measure(0, 0);
        }
        zza(this.zzdqi, this.zzdqj, this.maxWidth, this.maxHeight, this.density, this.rotation);
        this.zzdjd.zza("onDeviceFeaturesReceived", new zzaqm(new zzaqo().zzaf(this.zzdqh.zzrx()).zzae(this.zzdqh.zzry()).zzag(this.zzdqh.zzsa()).zzah(this.zzdqh.zzrz()).zzai(true)).zzdr());
        int[] iArr = new int[2];
        this.zzdjd.getLocationOnScreen(iArr);
        zzj(zzwr.zzqn().zzd(this.context, iArr[0]), zzwr.zzqn().zzd(this.context, iArr[1]));
        if (zzazk.isLoggable(2)) {
            zzazk.zzew("Dispatching Ready Event.");
        }
        zzdt(this.zzdjd.zzabj().zzbrp);
    }

    public final void zzj(int i, int i2) {
        int i3 = 0;
        if (this.context instanceof Activity) {
            zzr.zzkr();
            i3 = zzj.zzh((Activity) this.context)[0];
        }
        if (this.zzdjd.zzacv() == null || !this.zzdjd.zzacv().zzaeo()) {
            int width = this.zzdjd.getWidth();
            int height = this.zzdjd.getHeight();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcnu)).booleanValue()) {
                if (width == 0 && this.zzdjd.zzacv() != null) {
                    width = this.zzdjd.zzacv().widthPixels;
                }
                if (height == 0 && this.zzdjd.zzacv() != null) {
                    height = this.zzdjd.zzacv().heightPixels;
                }
            }
            this.zzdqk = zzwr.zzqn().zzd(this.context, width);
            this.zzdql = zzwr.zzqn().zzd(this.context, height);
        }
        zzb(i, i2 - i3, this.zzdqk, this.zzdql);
        this.zzdjd.zzacx().zzi(i, i2);
    }
}
