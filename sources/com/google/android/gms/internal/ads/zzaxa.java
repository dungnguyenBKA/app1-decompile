package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzf;
import javax.annotation.concurrent.GuardedBy;

public final class zzaxa implements SharedPreferences.OnSharedPreferenceChangeListener {
    @GuardedBy("AdMobPlusIdlessListener.class")
    private static zzaxa zzeau;
    private final SharedPreferences zzeav;
    private final zzf zzeaw;
    private String zzeax = "";

    private zzaxa(Context context, zzf zzf) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzeav = defaultSharedPreferences;
        this.zzeaw = zzf;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(defaultSharedPreferences, "IABTCF_PurposeConsents");
    }

    public static synchronized zzaxa zza(Context context, zzf zzf) {
        zzaxa zzaxa;
        synchronized (zzaxa.class) {
            if (zzeau == null) {
                zzeau = new zzaxa(context, zzf);
            }
            zzaxa = zzeau;
        }
        return zzaxa;
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("IABTCF_PurposeConsents".equals(str)) {
            String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
            if (!string.isEmpty() && !this.zzeax.equals(string)) {
                this.zzeax = string;
                boolean z = false;
                if (string.charAt(0) != '1') {
                    z = true;
                }
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcos)).booleanValue()) {
                    this.zzeaw.zzar(z);
                }
                ((Boolean) zzwr.zzqr().zzd(zzabp.zzcor)).booleanValue();
            }
        }
    }
}
