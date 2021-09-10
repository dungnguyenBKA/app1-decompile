package com.vungle.warren.persistence;

import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class FutureResult<T> implements Future<T> {
    public static final String TAG = FutureResult.class.getSimpleName();
    private final Future<T> future;

    public FutureResult(Future<T> future2) {
        this.future = future2;
    }

    public boolean cancel(boolean z) {
        return this.future.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        try {
            return this.future.get();
        } catch (InterruptedException unused) {
            String str = TAG;
            StringBuilder q = ic.q("future.get() Interrupted on Thread ");
            q.append(Thread.currentThread().getName());
            Log.w(str, q.toString());
            Thread.currentThread().interrupt();
        } catch (ExecutionException e) {
            Log.e(TAG, "error on execution", e);
        }
        return null;
    }

    public boolean isCancelled() {
        return this.future.isCancelled();
    }

    public boolean isDone() {
        return this.future.isDone();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        try {
            return this.future.get(j, timeUnit);
        } catch (InterruptedException unused) {
            String str = TAG;
            StringBuilder q = ic.q("future.get() Interrupted on Thread ");
            q.append(Thread.currentThread().getName());
            Log.w(str, q.toString());
            Thread.currentThread().interrupt();
        } catch (ExecutionException e) {
            Log.e(TAG, "error on execution", e);
        } catch (TimeoutException unused2) {
            String str2 = TAG;
            StringBuilder q2 = ic.q("future.get() Timeout on Thread ");
            q2.append(Thread.currentThread().getName());
            Log.w(str2, q2.toString());
        }
        return null;
    }
}
