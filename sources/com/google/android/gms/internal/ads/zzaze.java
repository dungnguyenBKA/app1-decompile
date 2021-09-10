package com.google.android.gms.internal.ads;

import android.content.Context;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public final class zzaze {
    private static boolean enabled = false;
    private static Object lock = new Object();
    private static d zzbqg = f.d();
    private static boolean zzehs = false;
    private static final Set<String> zzeht = new HashSet(Arrays.asList(new String[0]));
    private final List<String> zzehu;

    public zzaze() {
        this(null);
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (lock) {
            z = zzehs && enabled;
        }
        return z;
    }

    public static boolean zzaaa() {
        boolean z;
        synchronized (lock) {
            z = zzehs;
        }
        return z;
    }

    public static void zzas(boolean z) {
        synchronized (lock) {
            zzehs = true;
            enabled = z;
        }
    }

    private final void zzb(String str, String str2, Map<String, ?> map, byte[] bArr) {
        zza("onNetworkRequest", new zzazd(str, str2, map, bArr));
    }

    public static boolean zzbs(Context context) {
        if (!zzadh.zzddu.get().booleanValue()) {
            return false;
        }
        try {
            if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            zzazk.zzd("Fail to determine debug setting.", e);
            return false;
        }
    }

    private final void zzet(String str) {
        zza("onNetworkRequestError", new zzazi(str));
    }

    private static synchronized void zzeu(String str) {
        synchronized (zzaze.class) {
            zzazk.zzew("GMA Debug BEGIN");
            int i = 0;
            while (i < str.length()) {
                int i2 = i + 4000;
                String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                zzazk.zzew(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                i = i2;
            }
            zzazk.zzew("GMA Debug FINISH");
        }
    }

    public static void zzzz() {
        synchronized (lock) {
            zzehs = false;
            enabled = false;
            zzazk.zzex("Ad debug logging enablement is out of date.");
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, byte[] bArr) {
        HashMap hashMap;
        if (isEnabled()) {
            if (httpURLConnection.getRequestProperties() == null) {
                hashMap = null;
            } else {
                hashMap = new HashMap(httpURLConnection.getRequestProperties());
            }
            zzb(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), hashMap, bArr);
        }
    }

    public final void zzes(String str) {
        if (isEnabled() && str != null) {
            zzi(str.getBytes());
        }
    }

    public final void zzi(byte[] bArr) {
        zza("onNetworkResponseBody", new zzazf(bArr));
    }

    public zzaze(String str) {
        List<String> list;
        if (!isEnabled()) {
            list = new ArrayList<>();
        } else {
            String[] strArr = new String[1];
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            strArr[0] = valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_");
            list = Arrays.asList(strArr);
        }
        this.zzehu = list;
    }

    private final void zzb(Map<String, ?> map, int i) {
        zza("onNetworkResponse", new zzazg(i, map));
    }

    public final void zza(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (isEnabled()) {
            zzb(str, str2, map, bArr);
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, int i) {
        if (isEnabled()) {
            String str = null;
            zzb(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzazk.zzex(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                zzet(str);
            }
        }
    }

    public final void zza(Map<String, ?> map, int i) {
        if (isEnabled()) {
            zzb(map, i);
            if (i < 200 || i >= 300) {
                zzet(null);
            }
        }
    }

    private static void zza(JsonWriter jsonWriter, Map<String, ?> map) {
        if (map != null) {
            jsonWriter.name("headers").beginArray();
            Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                if (!zzeht.contains(key)) {
                    if (!(next.getValue() instanceof List)) {
                        if (!(next.getValue() instanceof String)) {
                            zzazk.zzev("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                            break;
                        }
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name("value").value((String) next.getValue());
                        jsonWriter.endObject();
                    } else {
                        for (String str : (List) next.getValue()) {
                            jsonWriter.beginObject();
                            jsonWriter.name("name").value(key);
                            jsonWriter.name("value").value(str);
                            jsonWriter.endObject();
                        }
                    }
                }
            }
            jsonWriter.endArray();
        }
    }

    private final void zza(String str, zzazh zzazh) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP).value(zzbqg.a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.zzehu) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            zzazh.zzb(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzazk.zzc("unable to log", e);
        }
        zzeu(stringWriter.toString());
    }

    static final /* synthetic */ void zza(String str, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String e = c2.e(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(e);
        } else {
            String zzeq = zzaza.zzeq(e);
            if (zzeq != null) {
                jsonWriter.name("bodydigest").value(zzeq);
            }
        }
        jsonWriter.name("bodylength").value((long) length);
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value((long) i);
        jsonWriter.endObject();
        zza(jsonWriter, map);
        jsonWriter.endObject();
    }

    static final /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zza(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(c2.e(bArr));
        }
        jsonWriter.endObject();
    }
}
