package com.google.android.gms.internal.gtm;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.n;
import java.util.UUID;

public final class zzfg {
    final /* synthetic */ zzfh zza;
    private final String zzb;
    private final long zzc;

    /* synthetic */ zzfg(zzfh zzfh, String str, long j, zzff zzff) {
        this.zza = zzfh;
        n.e("monitoring");
        n.a(j > 0);
        this.zzb = "monitoring";
        this.zzc = j;
    }

    private final long zzd() {
        return this.zza.zza.getLong(zzf(), 0);
    }

    private final String zze() {
        return this.zzb.concat(":count");
    }

    private final String zzf() {
        return this.zzb.concat(":start");
    }

    private final void zzg() {
        long a = this.zza.zzC().a();
        SharedPreferences.Editor edit = this.zza.zza.edit();
        edit.remove(zze());
        edit.remove(zzb());
        edit.putLong(zzf(), a);
        edit.commit();
    }

    public final Pair<String, Long> zza() {
        long j;
        long zzd = zzd();
        if (zzd == 0) {
            j = 0;
        } else {
            j = Math.abs(zzd - this.zza.zzC().a());
        }
        long j2 = this.zzc;
        if (j < j2) {
            return null;
        }
        if (j > j2 + j2) {
            zzg();
            return null;
        }
        String string = this.zza.zza.getString(zzb(), null);
        long j3 = this.zza.zza.getLong(zze(), 0);
        zzg();
        if (string == null || j3 <= 0) {
            return null;
        }
        return new Pair<>(string, Long.valueOf(j3));
    }

    /* access modifiers changed from: protected */
    public final String zzb() {
        return this.zzb.concat(":value");
    }

    public final void zzc(String str) {
        if (zzd() == 0) {
            zzg();
        }
        if (str == null) {
            str = "";
        }
        synchronized (this) {
            long j = this.zza.zza.getLong(zze(), 0);
            if (j <= 0) {
                SharedPreferences.Editor edit = this.zza.zza.edit();
                edit.putString(zzb(), str);
                edit.putLong(zze(), 1);
                edit.apply();
                return;
            }
            long j2 = j + 1;
            SharedPreferences.Editor edit2 = this.zza.zza.edit();
            if ((UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / j2) {
                edit2.putString(zzb(), str);
            }
            edit2.putLong(zze(), j2);
            edit2.apply();
        }
    }
}
