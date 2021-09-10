package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public final class zzcrq {
    private final List<zzvw> zzadw = Collections.synchronizedList(new ArrayList());
    private zzdmw zzesr = null;
    private final Map<String, zzvw> zzgsy = Collections.synchronizedMap(new HashMap());

    public final List<zzvw> getAdapterResponses() {
        return this.zzadw;
    }

    public final void zza(zzdmw zzdmw, long j, zzvg zzvg) {
        String str = zzdmw.zzdlu;
        if (this.zzgsy.containsKey(str)) {
            if (this.zzesr == null) {
                this.zzesr = zzdmw;
            }
            zzvw zzvw = this.zzgsy.get(str);
            zzvw.zzcip = j;
            zzvw.zzciq = zzvg;
        }
    }

    public final zzbrh zzasa() {
        return new zzbrh(this.zzesr, "", this);
    }

    public final void zzd(zzdmw zzdmw) {
        String str = zzdmw.zzdlu;
        if (!this.zzgsy.containsKey(str)) {
            Bundle bundle = new Bundle();
            Iterator<String> keys = zzdmw.zzhjj.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    bundle.putString(next, zzdmw.zzhjj.getString(next));
                } catch (JSONException unused) {
                }
            }
            zzvw zzvw = new zzvw(zzdmw.zzhjn, 0, null, bundle);
            this.zzadw.add(zzvw);
            this.zzgsy.put(str, zzvw);
        }
    }
}
