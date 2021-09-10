package defpackage;

import android.util.Base64;
import com.google.auto.value.AutoValue;
import defpackage.at;

@AutoValue
/* renamed from: it  reason: default package */
public abstract class it {

    @AutoValue.Builder
    /* renamed from: it$a */
    public static abstract class a {
        public abstract it a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(yr yrVar);
    }

    public static a a() {
        at.b bVar = new at.b();
        bVar.d(yr.DEFAULT);
        return bVar;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract yr d();

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
