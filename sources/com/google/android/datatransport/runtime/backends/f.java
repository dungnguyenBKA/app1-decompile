package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.a;
import com.google.auto.value.AutoValue;

@AutoValue
public abstract class f {

    @AutoValue.Builder
    public static abstract class a {
        public abstract f a();

        public abstract a b(Iterable<et> iterable);

        public abstract a c(byte[] bArr);
    }

    public static a a() {
        return new a.b();
    }

    public abstract Iterable<et> b();

    public abstract byte[] c();
}
