package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* access modifiers changed from: package-private */
public final class c {
    protected static final Class<?> a;
    protected static final Field b;
    protected static final Field c;
    protected static final Method d;
    protected static final Method e;
    protected static final Method f;
    private static final Handler g = new Handler(Looper.getMainLooper());

    /* access modifiers changed from: package-private */
    public static class a implements Runnable {
        final /* synthetic */ d b;
        final /* synthetic */ Object c;

        a(d dVar, Object obj) {
            this.b = dVar;
            this.c = obj;
        }

        public void run() {
            this.b.b = this.c;
        }
    }

    /* access modifiers changed from: package-private */
    public static class b implements Runnable {
        final /* synthetic */ Application b;
        final /* synthetic */ d c;

        b(Application application, d dVar) {
            this.b = application;
            this.c = dVar;
        }

        public void run() {
            this.b.unregisterActivityLifecycleCallbacks(this.c);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.c$c  reason: collision with other inner class name */
    public static class RunnableC0011c implements Runnable {
        final /* synthetic */ Object b;
        final /* synthetic */ Object c;

        RunnableC0011c(Object obj, Object obj2) {
            this.b = obj;
            this.c = obj2;
        }

        public void run() {
            try {
                Method method = c.d;
                if (method != null) {
                    method.invoke(this.b, this.c, Boolean.FALSE, "AppCompat recreation");
                    return;
                }
                c.e.invoke(this.b, this.c, Boolean.FALSE);
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* access modifiers changed from: private */
    public static final class d implements Application.ActivityLifecycleCallbacks {
        Object b;
        private Activity c;
        private boolean d = false;
        private boolean e = false;
        private boolean f = false;

        d(Activity activity) {
            this.c = activity;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
            if (this.c == activity) {
                this.c = null;
                this.e = true;
            }
        }

        public void onActivityPaused(Activity activity) {
            if (this.e && !this.f && !this.d && c.b(this.b, activity)) {
                this.f = true;
                this.b = null;
            }
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            if (this.c == activity) {
                this.d = true;
            }
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x005d A[SYNTHETIC, Splitter:B:25:0x005d] */
    static {
        /*
        // Method dump skipped, instructions count: 178
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.c.<clinit>():void");
    }

    private static boolean a() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    protected static boolean b(Object obj, Activity activity) {
        try {
            Object obj2 = c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            g.postAtFrontOfQueue(new RunnableC0011c(b.get(activity), obj2));
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    static boolean c(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (a() && f == null) {
            return false;
        } else {
            if (e == null && d == null) {
                return false;
            }
            try {
                Object obj2 = c.get(activity);
                if (obj2 == null || (obj = b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                d dVar = new d(activity);
                application.registerActivityLifecycleCallbacks(dVar);
                Handler handler = g;
                handler.post(new a(dVar, obj2));
                try {
                    if (a()) {
                        Method method = f;
                        Boolean bool = Boolean.FALSE;
                        method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                    } else {
                        activity.recreate();
                    }
                    handler.post(new b(application, dVar));
                    return true;
                } catch (Throwable th) {
                    g.post(new b(application, dVar));
                    throw th;
                }
            } catch (Throwable unused) {
                return false;
            }
        }
    }
}
