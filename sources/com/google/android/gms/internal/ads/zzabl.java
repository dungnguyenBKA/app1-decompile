package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.g;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
public final class zzabl implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Object lock = new Object();
    private Bundle metaData = new Bundle();
    private volatile boolean zzckv = false;
    private final ConditionVariable zzcmd = new ConditionVariable();
    private SharedPreferences zzcme = null;
    private Context zzcmf;
    private JSONObject zzcmg = new JSONObject();
    private volatile boolean zzzl = false;

    private final void zzse() {
        if (this.zzcme != null) {
            try {
                this.zzcmg = new JSONObject((String) zzbr.zza(new zzabn(this)));
            } catch (JSONException unused) {
            }
        }
    }

    public final void initialize(Context context) {
        if (!this.zzzl) {
            synchronized (this.lock) {
                if (!this.zzzl) {
                    if (!this.zzckv) {
                        this.zzckv = true;
                    }
                    Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
                    this.zzcmf = applicationContext;
                    try {
                        this.metaData = yv.a(applicationContext).c(this.zzcmf.getPackageName(), 128).metaData;
                    } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
                    }
                    try {
                        Context remoteContext = g.getRemoteContext(context);
                        if (remoteContext == null) {
                            Context applicationContext2 = context.getApplicationContext();
                            if (applicationContext2 != null) {
                                context = applicationContext2;
                            }
                            remoteContext = context;
                        }
                        if (remoteContext != null) {
                            zzwr.zzqp();
                            SharedPreferences sharedPreferences = remoteContext.getSharedPreferences("google_ads_flags", 0);
                            this.zzcme = sharedPreferences;
                            if (sharedPreferences != null) {
                                sharedPreferences.registerOnSharedPreferenceChangeListener(this);
                            }
                            zzadw.zza(new zzabm(this));
                            zzse();
                            this.zzzl = true;
                            this.zzckv = false;
                            this.zzcmd.open();
                        }
                    } finally {
                        this.zzckv = false;
                        this.zzcmd.open();
                    }
                }
            }
        }
    }

    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzse();
        }
    }

    public final <T> T zzd(zzaba<T> zzaba) {
        if (!this.zzcmd.block(5000)) {
            synchronized (this.lock) {
                if (!this.zzckv) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzzl || this.zzcme == null) {
            synchronized (this.lock) {
                if (this.zzzl) {
                    if (this.zzcme == null) {
                    }
                }
                return zzaba.zzsb();
            }
        }
        if (zzaba.getSource() != 2) {
            return (zzaba.getSource() != 1 || !this.zzcmg.has(zzaba.getKey())) ? (T) zzbr.zza(new zzabk(this, zzaba)) : zzaba.zzb(this.zzcmg);
        }
        Bundle bundle = this.metaData;
        if (bundle == null) {
            return zzaba.zzsb();
        }
        return zzaba.zza(bundle);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Object zze(zzaba zzaba) {
        return zzaba.zza(this.zzcme);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ String zzsf() {
        return this.zzcme.getString("flag_configuration", "{}");
    }
}
