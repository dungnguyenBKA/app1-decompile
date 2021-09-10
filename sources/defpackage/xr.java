package defpackage;

import com.google.auto.value.AutoValue;

@AutoValue
/* renamed from: xr  reason: default package */
public abstract class xr<T> {
    public static <T> xr<T> d(T t) {
        return new vr(null, t, yr.HIGHEST);
    }

    public abstract Integer a();

    public abstract T b();

    public abstract yr c();
}
