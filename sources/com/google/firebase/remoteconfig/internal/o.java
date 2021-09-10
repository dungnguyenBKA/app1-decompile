package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.protocol.HTTP;

public class o {
    private static final Map<String, o> c = new HashMap();
    private final Context a;
    private final String b;

    private o(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public static synchronized o c(Context context, String str) {
        o oVar;
        synchronized (o.class) {
            Map<String, o> map = c;
            if (!map.containsKey(str)) {
                map.put(str, new o(context, str));
            }
            oVar = map.get(str);
        }
        return oVar;
    }

    public synchronized Void a() {
        this.a.deleteFile(this.b);
        return null;
    }

    /* access modifiers changed from: package-private */
    public String b() {
        return this.b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0038  */
    @javax.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.google.firebase.remoteconfig.internal.f d() {
        /*
            r6 = this;
            monitor-enter(r6)
            r0 = 0
            android.content.Context r1 = r6.a     // Catch:{ FileNotFoundException | JSONException -> 0x0035, all -> 0x002b }
            java.lang.String r2 = r6.b     // Catch:{ FileNotFoundException | JSONException -> 0x0035, all -> 0x002b }
            java.io.FileInputStream r1 = r1.openFileInput(r2)     // Catch:{ FileNotFoundException | JSONException -> 0x0035, all -> 0x002b }
            int r2 = r1.available()     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            byte[] r3 = new byte[r2]     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            r4 = 0
            r1.read(r3, r4, r2)     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            java.lang.String r2 = new java.lang.String     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            java.lang.String r4 = "UTF-8"
            r2.<init>(r3, r4)     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            r3.<init>(r2)     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            com.google.firebase.remoteconfig.internal.f r0 = com.google.firebase.remoteconfig.internal.f.b(r3)     // Catch:{ FileNotFoundException | JSONException -> 0x0036, all -> 0x0029 }
            r1.close()     // Catch:{ all -> 0x003c }
            monitor-exit(r6)
            return r0
        L_0x0029:
            r0 = move-exception
            goto L_0x002f
        L_0x002b:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x002f:
            if (r1 == 0) goto L_0x0034
            r1.close()
        L_0x0034:
            throw r0
        L_0x0035:
            r1 = r0
        L_0x0036:
            if (r1 == 0) goto L_0x003f
            r1.close()
            goto L_0x003f
        L_0x003c:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        L_0x003f:
            monitor-exit(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.o.d():com.google.firebase.remoteconfig.internal.f");
    }

    /* JADX INFO: finally extract failed */
    public synchronized Void e(f fVar) {
        FileOutputStream openFileOutput = this.a.openFileOutput(this.b, 0);
        try {
            openFileOutput.write(fVar.toString().getBytes(HTTP.UTF_8));
            openFileOutput.close();
        } catch (Throwable th) {
            openFileOutput.close();
            throw th;
        }
        return null;
    }
}
