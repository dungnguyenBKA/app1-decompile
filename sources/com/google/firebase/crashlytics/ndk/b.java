package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.crashlytics.ndk.g;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.HashMap;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;
import org.json.JSONObject;

class b implements e {
    private static final Charset d = Charset.forName(HTTP.UTF_8);
    private final Context a;
    private final d b;
    private final f c;

    b(Context context, d dVar, f fVar) {
        this.a = context;
        this.b = dVar;
        this.c = fVar;
    }

    private static File c(File file, String str) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.getName().endsWith(str)) {
                return file2;
            }
        }
        return null;
    }

    private void i(String str, String str2, String str3) {
        Throwable th;
        File file = new File(this.c.b(str), str3);
        BufferedWriter bufferedWriter = null;
        try {
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), d));
            try {
                bufferedWriter2.write(str2);
                sz.a(bufferedWriter2, "Failed to close " + file);
            } catch (IOException unused) {
                bufferedWriter = bufferedWriter2;
                sz.a(bufferedWriter, "Failed to close " + file);
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter = bufferedWriter2;
                sz.a(bufferedWriter, "Failed to close " + file);
                throw th;
            }
        } catch (IOException unused2) {
            sz.a(bufferedWriter, "Failed to close " + file);
        } catch (Throwable th3) {
            th = th3;
            sz.a(bufferedWriter, "Failed to close " + file);
            throw th;
        }
    }

    public boolean a(String str) {
        this.c.a(str);
        return true;
    }

    public g b(String str) {
        File b2 = this.c.b(str);
        File file = new File(b2, "pending");
        az f = az.f();
        StringBuilder q = ic.q("Minidump directory: ");
        q.append(file.getAbsolutePath());
        f.h(q.toString());
        File c2 = c(file, ".dmp");
        az f2 = az.f();
        StringBuilder q2 = ic.q("Minidump file ");
        q2.append((c2 == null || !c2.exists()) ? "does not exist" : "exists");
        f2.h(q2.toString());
        g.b bVar = new g.b();
        if (b2 != null && b2.exists() && file.exists()) {
            bVar.j(c(file, ".dmp"));
            bVar.i(c(b2, ".device_info"));
            bVar.l(new File(b2, "session.json"));
            bVar.g(new File(b2, "app.json"));
            bVar.h(new File(b2, "device.json"));
            bVar.k(new File(b2, "os.json"));
        }
        return new g(bVar, null);
    }

    public boolean d(String str) {
        File file;
        if (!this.c.c(str) || (file = b(str).a) == null || !file.exists()) {
            return false;
        }
        return true;
    }

    public boolean e(String str) {
        File b2 = this.c.b(str);
        if (b2 == null) {
            return false;
        }
        try {
            String canonicalPath = b2.getCanonicalPath();
            return ((JniNativeApi) this.b).a(canonicalPath, this.a.getAssets());
        } catch (IOException e) {
            az.f().e("Error initializing Crashlytics NDK", e);
            return false;
        }
    }

    public void f(String str, String str2, long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("session_id", str);
        hashMap.put("generator", str2);
        hashMap.put("started_at_seconds", Long.valueOf(j));
        i(str, new JSONObject(hashMap).toString(), "session.json");
    }

    public void g(String str, String str2, String str3, String str4, String str5, int i, String str6) {
        if (TextUtils.isEmpty(str6)) {
            str6 = "";
        }
        HashMap hashMap = new HashMap();
        hashMap.put("app_identifier", str2);
        hashMap.put("version_code", str3);
        hashMap.put("version_name", str4);
        hashMap.put("install_uuid", str5);
        hashMap.put("delivery_mechanism", Integer.valueOf(i));
        hashMap.put("unity_version", str6);
        i(str, new JSONObject(hashMap).toString(), "app.json");
    }

    public void h(String str, int i, String str2, int i2, long j, long j2, boolean z, int i3, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put("arch", Integer.valueOf(i));
        hashMap.put("build_model", str2);
        hashMap.put("available_processors", Integer.valueOf(i2));
        hashMap.put("total_ram", Long.valueOf(j));
        hashMap.put("disk_space", Long.valueOf(j2));
        hashMap.put("is_emulator", Boolean.valueOf(z));
        hashMap.put(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_STATE, Integer.valueOf(i3));
        hashMap.put("build_manufacturer", str3);
        hashMap.put("build_product", str4);
        i(str, new JSONObject(hashMap).toString(), "device.json");
    }

    public void j(String str, String str2, String str3, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(ClientCookie.VERSION_ATTR, str2);
        hashMap.put("build_version", str3);
        hashMap.put("is_rooted", Boolean.valueOf(z));
        i(str, new JSONObject(hashMap).toString(), "os.json");
    }
}
