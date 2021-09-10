package defpackage;

import com.google.firebase.c;
import defpackage.f50;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: h50  reason: default package */
public class h50 {
    private final File a;
    private final c b;

    /* renamed from: h50$a */
    public enum a {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public h50(c cVar) {
        File filesDir = cVar.g().getFilesDir();
        StringBuilder q = ic.q("PersistedInstallation.");
        q.append(cVar.k());
        q.append(".json");
        this.a = new File(filesDir, q.toString());
        this.b = cVar;
    }

    public i50 a(i50 i50) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", i50.c());
            jSONObject.put("Status", i50.f().ordinal());
            jSONObject.put("AuthToken", i50.a());
            jSONObject.put("RefreshToken", i50.e());
            jSONObject.put("TokenCreationEpochInSecs", i50.g());
            jSONObject.put("ExpiresInSecs", i50.b());
            jSONObject.put("FisError", i50.d());
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.b.g().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes(HTTP.UTF_8));
            fileOutputStream.close();
            if (createTempFile.renameTo(this.a)) {
                return i50;
            }
            throw new IOException("unable to rename the tmpfile to PersistedInstallation");
        } catch (IOException | JSONException unused) {
        }
    }

    public i50 b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        FileInputStream fileInputStream = new FileInputStream(this.a);
        while (true) {
            try {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
        try {
            fileInputStream.close();
        } catch (IOException | JSONException unused2) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        a aVar = a.ATTEMPT_MIGRATION;
        int optInt = jSONObject.optInt("Status", 0);
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0);
        String optString4 = jSONObject.optString("FisError", null);
        int i = i50.a;
        f50.b bVar = new f50.b();
        bVar.h(0);
        bVar.g(aVar);
        bVar.c(0);
        bVar.d(optString);
        bVar.g(a.values()[optInt]);
        bVar.b(optString2);
        bVar.f(optString3);
        bVar.h(optLong);
        bVar.c(optLong2);
        bVar.e(optString4);
        return bVar.a();
        throw th;
    }
}
