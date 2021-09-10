package defpackage;

import java.util.Objects;

/* renamed from: iu  reason: default package */
public final class iu implements qt<fu> {

    /* renamed from: iu$a */
    private static final class a {
        private static final iu a = new iu();
    }

    public static iu a() {
        return a.a;
    }

    @Override // javax.inject.Provider
    public Object get() {
        fu fuVar = fu.a;
        Objects.requireNonNull(fuVar, "Cannot return null from a non-@Nullable @Provides method");
        return fuVar;
    }
}
