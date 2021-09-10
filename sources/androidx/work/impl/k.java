package androidx.work.impl;

import android.annotation.SuppressLint;
import androidx.work.ListenableWorker;
import androidx.work.h;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

class k implements Runnable {
    final /* synthetic */ l6 b;
    final /* synthetic */ String c;
    final /* synthetic */ l d;

    k(l lVar, l6 l6Var, String str) {
        this.d = lVar;
        this.b = l6Var;
        this.c = str;
    }

    @SuppressLint({"SyntheticAccessor"})
    public void run() {
        try {
            ListenableWorker.a aVar = (ListenableWorker.a) this.b.get();
            if (aVar == null) {
                h.c().b(l.t, String.format("%s returned a null result. Treating it as a failure.", this.d.f.c), new Throwable[0]);
            } else {
                h.c().a(l.t, String.format("%s returned a %s result.", this.d.f.c, aVar), new Throwable[0]);
                this.d.h = aVar;
            }
        } catch (CancellationException e) {
            h.c().d(l.t, String.format("%s was cancelled", this.c), e);
        } catch (InterruptedException | ExecutionException e2) {
            h.c().b(l.t, String.format("%s failed because it threw an exception/error", this.c), e2);
        } catch (Throwable th) {
            this.d.e();
            throw th;
        }
        this.d.e();
    }
}
