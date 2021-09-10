package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import defpackage.i20;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: l20  reason: default package */
public final /* synthetic */ class l20 implements r20.a {
    private static final l20 a = new l20();

    private l20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        int i = r20.b;
        i20.c.b.a a2 = i20.c.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("filename")) {
                a2.c(jsonReader.nextString());
            } else if (!nextName.equals("contents")) {
                jsonReader.skipValue();
            } else {
                a2.b(Base64.decode(jsonReader.nextString(), 2));
            }
        }
        jsonReader.endObject();
        return a2.a();
    }
}
