package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* renamed from: ih0  reason: default package */
public final class ih0 implements og0 {
    final gh0 b;
    final mi0 c;
    final vj0 d;
    @Nullable
    private zg0 e;
    final jh0 f;
    final boolean g;
    private boolean h;

    /* renamed from: ih0$a */
    class a extends vj0 {
        a() {
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.vj0
        public void n() {
            ih0.this.c.a();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ih0$b */
    public final class b extends qh0 {
        private final pg0 c;

        b(pg0 pg0) {
            super("OkHttp %s", ih0.this.f.a.w());
            this.c = pg0;
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0030 A[Catch:{ IOException -> 0x004e, all -> 0x0024, all -> 0x008f }] */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0059 A[Catch:{ IOException -> 0x004e, all -> 0x0024, all -> 0x008f }] */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x0079 A[Catch:{ IOException -> 0x004e, all -> 0x0024, all -> 0x008f }] */
        @Override // defpackage.qh0
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a() {
            /*
            // Method dump skipped, instructions count: 156
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ih0.b.a():void");
        }

        /* access modifiers changed from: package-private */
        public void b(ExecutorService executorService) {
            try {
                executorService.execute(this);
            } catch (RejectedExecutionException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(e);
                Objects.requireNonNull(ih0.this.e);
                this.c.onFailure(ih0.this, interruptedIOException);
                ih0.this.b.b.d(this);
            } catch (Throwable th) {
                ih0.this.b.b.d(this);
                throw th;
            }
        }
    }

    private ih0(gh0 gh0, jh0 jh0, boolean z) {
        this.b = gh0;
        this.f = jh0;
        this.g = z;
        this.c = new mi0(gh0, z);
        a aVar = new a();
        this.d = aVar;
        aVar.g((long) gh0.x, TimeUnit.MILLISECONDS);
    }

    static ih0 c(gh0 gh0, jh0 jh0, boolean z) {
        ih0 ih0 = new ih0(gh0, jh0, z);
        ih0.e = ((ah0) gh0.h).a;
        return ih0;
    }

    /* access modifiers changed from: package-private */
    public lh0 b() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.b.f);
        arrayList.add(this.c);
        arrayList.add(new ei0(this.b.j));
        arrayList.add(new th0(this.b.k));
        arrayList.add(new xh0(this.b));
        if (!this.g) {
            arrayList.addAll(this.b.g);
        }
        arrayList.add(new fi0(this.g));
        jh0 jh0 = this.f;
        zg0 zg0 = this.e;
        gh0 gh0 = this.b;
        lh0 f2 = new ji0(arrayList, null, null, null, 0, jh0, this, zg0, gh0.y, gh0.z, gh0.A).f(jh0);
        if (!this.c.d()) {
            return f2;
        }
        rh0.g(f2);
        throw new IOException("Canceled");
    }

    @Override // defpackage.og0
    public void cancel() {
        this.c.a();
    }

    @Override // java.lang.Object
    public Object clone() {
        gh0 gh0 = this.b;
        ih0 ih0 = new ih0(gh0, this.f, this.g);
        ih0.e = ((ah0) gh0.h).a;
        return ih0;
    }

    /* access modifiers changed from: package-private */
    @Nullable
    public IOException d(@Nullable IOException iOException) {
        if (!this.d.l()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* access modifiers changed from: package-private */
    public String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c.d() ? "canceled " : "");
        sb.append(this.g ? "web socket" : "call");
        sb.append(" to ");
        sb.append(this.f.a.w());
        return sb.toString();
    }

    @Override // defpackage.og0
    public lh0 execute() {
        synchronized (this) {
            if (!this.h) {
                this.h = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        this.c.h(mj0.h().k("response.body().close()"));
        this.d.j();
        Objects.requireNonNull(this.e);
        try {
            this.b.b.b(this);
            lh0 b2 = b();
            if (b2 != null) {
                this.b.b.e(this);
                return b2;
            }
            throw new IOException("Canceled");
        } catch (IOException e2) {
            IOException d2 = d(e2);
            Objects.requireNonNull(this.e);
            throw d2;
        } catch (Throwable th) {
            this.b.b.e(this);
            throw th;
        }
    }

    @Override // defpackage.og0
    public void o(pg0 pg0) {
        synchronized (this) {
            if (!this.h) {
                this.h = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        this.c.h(mj0.h().k("response.body().close()"));
        Objects.requireNonNull(this.e);
        this.b.b.a(new b(pg0));
    }
}
