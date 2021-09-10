package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzdfd;
import com.google.android.gms.internal.ads.zzvl;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;

/* access modifiers changed from: package-private */
public final class h {
    private final Context a;
    private final String b;
    private final Map<String, String> c = new TreeMap();
    private String d;
    private String e;

    public h(Context context, String str) {
        this.a = context.getApplicationContext();
        this.b = str;
    }

    public final String a() {
        return this.d;
    }

    public final void b(zzvl zzvl, zzazn zzazn) {
        this.d = zzvl.zzchs.zzbrb;
        Bundle bundle = zzvl.zzchu;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String str = zzadb.zzdcq.get();
            for (String str2 : bundle2.keySet()) {
                if (str.equals(str2)) {
                    this.e = bundle2.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    this.c.put(str2.substring(4), bundle2.getString(str2));
                }
            }
            this.c.put("SDKVersion", zzazn.zzbrp);
            if (zzadb.zzdco.get().booleanValue()) {
                try {
                    Bundle zza = zzdfd.zza(this.a, new JSONArray(zzadb.zzdcp.get()));
                    for (String str3 : zza.keySet()) {
                        this.c.put(str3, zza.get(str3).toString());
                    }
                } catch (JSONException e2) {
                    zzazk.zzc("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e2);
                }
            }
        }
    }

    public final String c() {
        return this.e;
    }

    public final String d() {
        return this.b;
    }

    public final Map<String, String> e() {
        return this.c;
    }
}
