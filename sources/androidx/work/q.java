package androidx.work;

import android.content.Context;

public abstract class q {
    private static final String a = h.f("WorkerFactory");
    public static final /* synthetic */ int b = 0;

    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        try {
            try {
                return (ListenableWorker) Class.forName(str).asSubclass(ListenableWorker.class).getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
            } catch (Exception e) {
                h.c().b(a, ic.i("Could not instantiate ", str), e);
                return null;
            }
        } catch (ClassNotFoundException unused) {
            h.c().b(a, ic.i("Class not found: ", str), new Throwable[0]);
            return null;
        }
    }
}
