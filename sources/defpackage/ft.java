package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* renamed from: ft  reason: default package */
public final class ft implements qt<Executor> {

    /* access modifiers changed from: private */
    /* renamed from: ft$a */
    public static final class a {
        private static final ft a = new ft();
    }

    @Override // javax.inject.Provider
    public Object get() {
        return new gt(Executors.newSingleThreadExecutor());
    }
}
