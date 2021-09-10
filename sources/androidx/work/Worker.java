package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;

public abstract class Worker extends ListenableWorker {
    l6<ListenableWorker.a> f;

    class a implements Runnable {
        a() {
        }

        public void run() {
            try {
                Worker.this.f.i(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.f.k(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.a doWork();

    @Override // androidx.work.ListenableWorker
    public final uy<ListenableWorker.a> startWork() {
        this.f = l6.j();
        getBackgroundExecutor().execute(new a());
        return this.f;
    }
}
