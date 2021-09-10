package com.google.android.gms.internal.gtm;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.analytics.q;

public final class zzfh extends zzbs {
    private SharedPreferences zza;
    private long zzb;
    private long zzc = -1;
    private final zzfg zzd;

    protected zzfh(zzbv zzbv) {
        super(zzbv);
        zzw();
        this.zzd = new zzfg(this, "monitoring", zzeu.zzP.zzb().longValue(), null);
    }

    public final long zza() {
        q.h();
        zzW();
        long j = this.zzb;
        if (j != 0) {
            return j;
        }
        long j2 = this.zza.getLong("first_run", 0);
        if (j2 != 0) {
            this.zzb = j2;
            return j2;
        }
        long a = zzC().a();
        SharedPreferences.Editor edit = this.zza.edit();
        edit.putLong("first_run", a);
        if (!edit.commit()) {
            zzR("Failed to commit first run time");
        }
        this.zzb = a;
        return a;
    }

    public final long zzb() {
        q.h();
        zzW();
        long j = this.zzc;
        if (j != -1) {
            return j;
        }
        long j2 = this.zza.getLong("last_dispatch", 0);
        this.zzc = j2;
        return j2;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
        this.zza = zzo().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public final zzfg zze() {
        return this.zzd;
    }

    public final zzfo zzf() {
        return new zzfo(zzC(), zza());
    }

    public final String zzg() {
        q.h();
        zzW();
        String string = this.zza.getString("installation_campaign", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string;
    }

    public final void zzh(String str) {
        q.h();
        zzW();
        SharedPreferences.Editor edit = this.zza.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (!edit.commit()) {
            zzR("Failed to commit campaign data");
        }
    }

    public final void zzi() {
        q.h();
        zzW();
        long a = zzC().a();
        SharedPreferences.Editor edit = this.zza.edit();
        edit.putLong("last_dispatch", a);
        edit.apply();
        this.zzc = a;
    }
}
