package defpackage;

import com.google.auto.value.AutoValue;
import defpackage.ms;

@AutoValue
/* renamed from: ss  reason: default package */
public abstract class ss {

    @AutoValue.Builder
    /* renamed from: ss$a */
    public static abstract class a {
        public abstract ss a();

        public abstract a b(ds dsVar);

        public abstract a c(b bVar);
    }

    /* renamed from: ss$b */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private b(int i) {
        }
    }

    public static a a() {
        return new ms.b();
    }

    public abstract ds b();

    public abstract b c();
}
