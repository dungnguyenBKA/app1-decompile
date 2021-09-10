package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;
import org.json.JSONObject;

public final class zzame {
    private static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    public static final zzamf<JSONObject> zzdks = new zzamg();
    public static final zzamd<InputStream> zzdkt = zzamh.zzdku;

    static final /* synthetic */ InputStream zze(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
