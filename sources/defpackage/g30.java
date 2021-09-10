package defpackage;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.util.Scanner;
import org.json.JSONObject;

/* renamed from: g30  reason: default package */
public class g30 {
    private final Context a;

    public g30(Context context) {
        this.a = context;
    }

    public JSONObject a() {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        JSONObject jSONObject;
        az.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            File file = new File(new c30(this.a).a(), "com.crashlytics.settings.json");
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    Scanner useDelimiter = new Scanner(fileInputStream).useDelimiter("\\A");
                    jSONObject = new JSONObject(useDelimiter.hasNext() ? useDelimiter.next() : "");
                    fileInputStream2 = fileInputStream;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        az.f().e("Failed to fetch cached settings", e);
                        sz.a(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = fileInputStream;
                        sz.a(fileInputStream2, "Error while closing settings cache file.");
                        throw th;
                    }
                }
            } else {
                az.f().h("Settings file does not exist.");
                jSONObject = null;
            }
            sz.a(fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            az.f().e("Failed to fetch cached settings", e);
            sz.a(fileInputStream, "Error while closing settings cache file.");
            return null;
        } catch (Throwable th3) {
            th = th3;
            sz.a(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void b(long j, JSONObject jSONObject) {
        Throwable th;
        Exception e;
        az.f().h("Writing settings to cache file...");
        FileWriter fileWriter = null;
        try {
            jSONObject.put("expires_at", j);
            FileWriter fileWriter2 = new FileWriter(new File(new c30(this.a).a(), "com.crashlytics.settings.json"));
            try {
                fileWriter2.write(jSONObject.toString());
                fileWriter2.flush();
                sz.a(fileWriter2, "Failed to close settings writer.");
            } catch (Exception e2) {
                e = e2;
                fileWriter = fileWriter2;
                try {
                    az.f().e("Failed to cache settings", e);
                    sz.a(fileWriter, "Failed to close settings writer.");
                } catch (Throwable th2) {
                    th = th2;
                    sz.a(fileWriter, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileWriter = fileWriter2;
                sz.a(fileWriter, "Failed to close settings writer.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            az.f().e("Failed to cache settings", e);
            sz.a(fileWriter, "Failed to close settings writer.");
        }
    }
}
