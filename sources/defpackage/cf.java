package defpackage;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: cf  reason: default package */
final class cf {
    private final Map<String, a> a = new HashMap();
    private final b b = new b();

    /* access modifiers changed from: private */
    /* renamed from: cf$a */
    public static class a {
        final Lock a = new ReentrantLock();
        int b;

        a() {
        }
    }

    /* renamed from: cf$b */
    private static class b {
        private final Queue<a> a = new ArrayDeque();

        b() {
        }

        /* access modifiers changed from: package-private */
        public a a() {
            a poll;
            synchronized (this.a) {
                poll = this.a.poll();
            }
            return poll == null ? new a() : poll;
        }

        /* access modifiers changed from: package-private */
        public void b(a aVar) {
            synchronized (this.a) {
                if (this.a.size() < 10) {
                    this.a.offer(aVar);
                }
            }
        }
    }

    cf() {
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.a.get(str);
            if (aVar == null) {
                aVar = this.b.a();
                this.a.put(str, aVar);
            }
            aVar.b++;
        }
        aVar.a.lock();
    }

    /* access modifiers changed from: package-private */
    public void b(String str) {
        a aVar;
        synchronized (this) {
            a aVar2 = this.a.get(str);
            Objects.requireNonNull(aVar2, "Argument must not be null");
            aVar = aVar2;
            int i = aVar.b;
            if (i >= 1) {
                int i2 = i - 1;
                aVar.b = i2;
                if (i2 == 0) {
                    a remove = this.a.remove(str);
                    if (remove.equals(aVar)) {
                        this.b.b(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.b);
            }
        }
        aVar.a.unlock();
    }
}
