package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzahl implements zzaif<Object> {
    private final zzahk zzdha;

    public zzahl(zzahk zzahk) {
        this.zzdha = zzahk;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzazk.zzex("App event with no name parameter.");
        } else {
            this.zzdha.onAppEvent(str, map.get("info"));
        }
    }
}
