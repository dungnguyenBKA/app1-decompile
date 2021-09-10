package defpackage;

import android.util.JsonReader;
import defpackage.i20;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: m20  reason: default package */
public final /* synthetic */ class m20 implements r20.a {
    private static final m20 a = new m20();

    private m20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        int i = r20.b;
        i20.b.a a2 = i20.b.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("key")) {
                a2.b(jsonReader.nextString());
            } else if (!nextName.equals("value")) {
                jsonReader.skipValue();
            } else {
                a2.c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return a2.a();
    }
}
