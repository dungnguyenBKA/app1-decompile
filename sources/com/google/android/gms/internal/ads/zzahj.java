package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzahj implements zzaif<Object> {
    private final zzahi zzdgz;

    public zzahj(zzahi zzahi) {
        this.zzdgz = zzahi;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzdgz != null) {
            String str = map.get("name");
            if (str == null) {
                zzazk.zzew("Ad metadata with no name parameter.");
                str = "";
            }
            Bundle bundle = null;
            if (map.containsKey("info")) {
                try {
                    bundle = zzbh.zzh(new JSONObject(map.get("info")));
                } catch (JSONException e) {
                    zzazk.zzc("Failed to convert ad metadata to JSON.", e);
                }
            }
            if (bundle == null) {
                zzazk.zzev("Failed to convert ad metadata to Bundle.");
            } else {
                this.zzdgz.zza(str, bundle);
            }
        }
    }
}
