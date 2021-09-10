package com.google.android.gms.internal.ads;

import org.json.JSONObject;

public final class zzqt {
    private final String zzbrm;
    private final JSONObject zzbrn;
    private final String zzbro;
    private final String zzbrp;
    private final boolean zzbrq = false;
    private final boolean zzbrr;

    public zzqt(String str, zzazn zzazn, String str2, JSONObject jSONObject, boolean z, boolean z2) {
        this.zzbrp = zzazn.zzbrp;
        this.zzbrn = jSONObject;
        this.zzbro = str;
        this.zzbrm = str2;
        this.zzbrr = z2;
    }

    public final String getUniqueId() {
        return this.zzbro;
    }

    public final boolean isNative() {
        return this.zzbrr;
    }

    public final String zzlv() {
        return this.zzbrm;
    }

    public final String zzlw() {
        return this.zzbrp;
    }

    public final JSONObject zzlx() {
        return this.zzbrn;
    }
}
