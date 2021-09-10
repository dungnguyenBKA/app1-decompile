package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

public abstract class ListenableWorker {
    private Context b;
    private WorkerParameters c;
    private volatile boolean d;
    private boolean e;

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        } else if (workerParameters != null) {
            this.b = context;
            this.c = workerParameters;
        } else {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
    }

    public final Context getApplicationContext() {
        return this.b;
    }

    public Executor getBackgroundExecutor() {
        return this.c.a();
    }

    public final UUID getId() {
        return this.c.b();
    }

    public final e getInputData() {
        return this.c.c();
    }

    public final Network getNetwork() {
        return this.c.d();
    }

    public final int getRunAttemptCount() {
        return this.c.e();
    }

    public final Set<String> getTags() {
        return this.c.f();
    }

    public m6 getTaskExecutor() {
        return this.c.g();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.c.h();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.c.i();
    }

    public q getWorkerFactory() {
        return this.c.j();
    }

    public final boolean isStopped() {
        return this.d;
    }

    public final boolean isUsed() {
        return this.e;
    }

    public void onStopped() {
    }

    public final void setUsed() {
        this.e = true;
    }

    public abstract uy<a> startWork();

    public final void stop() {
        this.d = true;
        onStopped();
    }

    public static abstract class a {

        /* renamed from: androidx.work.ListenableWorker$a$a  reason: collision with other inner class name */
        public static final class C0022a extends a {
            private final e a = e.c;

            public e a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0022a.class != obj.getClass()) {
                    return false;
                }
                return this.a.equals(((C0022a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode() + (C0022a.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder q = ic.q("Failure {mOutputData=");
                q.append(this.a);
                q.append('}');
                return q.toString();
            }
        }

        public static final class b extends a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && b.class == obj.getClass();
            }

            public int hashCode() {
                return b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        a() {
        }

        public static final class c extends a {
            private final e a;

            public c() {
                this.a = e.c;
            }

            public e a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || c.class != obj.getClass()) {
                    return false;
                }
                return this.a.equals(((c) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode() + (c.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder q = ic.q("Success {mOutputData=");
                q.append(this.a);
                q.append('}');
                return q.toString();
            }

            public c(e eVar) {
                this.a = eVar;
            }
        }
    }
}
