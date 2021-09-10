package defpackage;

import android.content.Context;
import java.io.File;

/* renamed from: c30  reason: default package */
public class c30 {
    private final Context a;

    public c30(Context context) {
        this.a = context;
    }

    public File a() {
        File file = new File(this.a.getFilesDir(), ".com.google.firebase.crashlytics");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        az.f().i("Couldn't create file");
        return null;
    }

    public String b() {
        return new File(this.a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }
}
