package defpackage;

import java.io.Closeable;
import javax.inject.Singleton;

/* access modifiers changed from: package-private */
@Singleton
/* renamed from: nt  reason: default package */
public abstract class nt implements Closeable {

    /* access modifiers changed from: package-private */
    /* renamed from: nt$a */
    public interface a {
    }

    nt() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        j().close();
    }

    /* access modifiers changed from: package-private */
    public abstract eu j();

    /* access modifiers changed from: package-private */
    public abstract mt o();
}
