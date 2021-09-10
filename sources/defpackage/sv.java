package defpackage;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.analytics.k;
import java.util.HashMap;
import java.util.Map;

/* renamed from: sv  reason: default package */
public class sv {
    Map<String, String> a = new HashMap();

    @RecentlyNonNull
    public final Map<String, String> a(@RecentlyNonNull String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : this.a.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(entry.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), entry.getValue());
        }
        return hashMap;
    }

    @RecentlyNonNull
    public String toString() {
        return k.zzb(this.a);
    }
}
