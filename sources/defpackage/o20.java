package defpackage;

import android.util.Base64;
import android.util.JsonReader;
import defpackage.i20;
import defpackage.r20;

/* access modifiers changed from: package-private */
/* renamed from: o20  reason: default package */
public final /* synthetic */ class o20 implements r20.a {
    private static final o20 a = new o20();

    private o20() {
    }

    public static r20.a b() {
        return a;
    }

    @Override // defpackage.r20.a
    public Object a(JsonReader jsonReader) {
        int i = r20.b;
        i20.d.AbstractC0101d.a.b.AbstractC0103a.AbstractC0104a a2 = i20.d.AbstractC0101d.a.b.AbstractC0103a.a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    a2.c(jsonReader.nextString());
                    break;
                case 1:
                    a2.d(jsonReader.nextLong());
                    break;
                case 2:
                    a2.f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    a2.b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return a2.a();
    }
}
