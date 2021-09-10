package defpackage;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Map;
import org.apache.http.protocol.HTTP;
import org.json.JSONObject;

/* access modifiers changed from: package-private */
/* renamed from: x00  reason: default package */
public class x00 {
    private static final Charset b = Charset.forName(HTTP.UTF_8);
    private final File a;

    public x00(File file) {
        this.a = file;
    }

    public File a(String str) {
        return new File(this.a, ic.j(str, "keys", ".meta"));
    }

    public File b(String str) {
        return new File(this.a, ic.j(str, "user", ".meta"));
    }

    public void c(String str, Map<String, String> map) {
        Throwable th;
        Exception e;
        File a2 = a(str);
        BufferedWriter bufferedWriter = null;
        try {
            String jSONObject = new JSONObject(map).toString();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(a2), b));
            try {
                bufferedWriter2.write(jSONObject);
                bufferedWriter2.flush();
                sz.a(bufferedWriter2, "Failed to close key/value metadata file.");
            } catch (Exception e2) {
                e = e2;
                bufferedWriter = bufferedWriter2;
                try {
                    az.f().e("Error serializing key/value metadata.", e);
                    sz.a(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Throwable th2) {
                    th = th2;
                    sz.a(bufferedWriter, "Failed to close key/value metadata file.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedWriter = bufferedWriter2;
                sz.a(bufferedWriter, "Failed to close key/value metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            az.f().e("Error serializing key/value metadata.", e);
            sz.a(bufferedWriter, "Failed to close key/value metadata file.");
        }
    }

    public void d(String str, e10 e10) {
        Throwable th;
        Exception e;
        File b2 = b(str);
        BufferedWriter bufferedWriter = null;
        try {
            String jSONObject = new w00(e10).toString();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b2), b));
            try {
                bufferedWriter2.write(jSONObject);
                bufferedWriter2.flush();
                sz.a(bufferedWriter2, "Failed to close user metadata file.");
            } catch (Exception e2) {
                e = e2;
                bufferedWriter = bufferedWriter2;
                try {
                    az.f().e("Error serializing user metadata.", e);
                    sz.a(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter2 = bufferedWriter;
                    sz.a(bufferedWriter2, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                sz.a(bufferedWriter2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            az.f().e("Error serializing user metadata.", e);
            sz.a(bufferedWriter, "Failed to close user metadata file.");
        }
    }
}
