package androidx.core.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class JobIntentService extends Service {
    static final HashMap<ComponentName, g> g = new HashMap<>();
    b b;
    g c;
    a d;
    boolean e = false;
    final ArrayList<d> f;

    /* access modifiers changed from: package-private */
    public final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object[]] */
        /* access modifiers changed from: protected */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x004c A[LOOP:0: B:1:0x0002->B:28:0x004c, LOOP_END] */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x0059 A[SYNTHETIC] */
        @Override // android.os.AsyncTask
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Void doInBackground(java.lang.Void[] r5) {
            /*
                r4 = this;
                java.lang.Void[] r5 = (java.lang.Void[]) r5
            L_0x0002:
                androidx.core.app.JobIntentService r5 = androidx.core.app.JobIntentService.this
                androidx.core.app.JobIntentService$b r0 = r5.b
                r1 = 0
                if (r0 == 0) goto L_0x0031
                androidx.core.app.JobIntentService$f r0 = (androidx.core.app.JobIntentService.f) r0
                java.lang.Object r2 = r0.b
                monitor-enter(r2)
                android.app.job.JobParameters r5 = r0.c     // Catch:{ all -> 0x002e }
                if (r5 != 0) goto L_0x0014
                monitor-exit(r2)     // Catch:{ all -> 0x002e }
                goto L_0x0049
            L_0x0014:
                android.app.job.JobWorkItem r5 = r5.dequeueWork()     // Catch:{ all -> 0x002e }
                monitor-exit(r2)     // Catch:{ all -> 0x002e }
                if (r5 == 0) goto L_0x0049
                android.content.Intent r2 = r5.getIntent()
                androidx.core.app.JobIntentService r3 = r0.a
                java.lang.ClassLoader r3 = r3.getClassLoader()
                r2.setExtrasClassLoader(r3)
                androidx.core.app.JobIntentService$f$a r2 = new androidx.core.app.JobIntentService$f$a
                r2.<init>(r5)
                goto L_0x004a
            L_0x002e:
                r5 = move-exception
                monitor-exit(r2)
                throw r5
            L_0x0031:
                java.util.ArrayList<androidx.core.app.JobIntentService$d> r0 = r5.f
                monitor-enter(r0)
                java.util.ArrayList<androidx.core.app.JobIntentService$d> r2 = r5.f     // Catch:{ all -> 0x005a }
                int r2 = r2.size()     // Catch:{ all -> 0x005a }
                if (r2 <= 0) goto L_0x0048
                java.util.ArrayList<androidx.core.app.JobIntentService$d> r5 = r5.f     // Catch:{ all -> 0x005a }
                r2 = 0
                java.lang.Object r5 = r5.remove(r2)     // Catch:{ all -> 0x005a }
                r2 = r5
                androidx.core.app.JobIntentService$e r2 = (androidx.core.app.JobIntentService.e) r2     // Catch:{ all -> 0x005a }
                monitor-exit(r0)     // Catch:{ all -> 0x005a }
                goto L_0x004a
            L_0x0048:
                monitor-exit(r0)     // Catch:{ all -> 0x005a }
            L_0x0049:
                r2 = r1
            L_0x004a:
                if (r2 == 0) goto L_0x0059
                androidx.core.app.JobIntentService r5 = androidx.core.app.JobIntentService.this
                android.content.Intent r0 = r2.getIntent()
                r5.b(r0)
                r2.a()
                goto L_0x0002
            L_0x0059:
                return r1
            L_0x005a:
                r5 = move-exception
                monitor-exit(r0)
                goto L_0x005e
            L_0x005d:
                throw r5
            L_0x005e:
                goto L_0x005d
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.JobIntentService.a.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Void r1) {
            JobIntentService.this.c();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        /* access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r1) {
            JobIntentService.this.c();
        }
    }

    interface b {
    }

    static final class c extends g {
        private final PowerManager.WakeLock b;
        private final PowerManager.WakeLock c;
        boolean d;

        c(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.c = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.g
        public void a() {
            synchronized (this) {
                if (this.d) {
                    this.d = false;
                    this.c.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.g
        public void b() {
            synchronized (this) {
                if (!this.d) {
                    this.d = true;
                    this.c.acquire(600000);
                    this.b.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.g
        public void c() {
            synchronized (this) {
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final class d implements e {
        final Intent a;
        final int b;

        d(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void a() {
            JobIntentService.this.stopSelf(this.b);
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.a;
        }
    }

    interface e {
        void a();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {
        final JobIntentService a;
        final Object b = new Object();
        JobParameters c;

        final class a implements e {
            final JobWorkItem a;

            a(JobWorkItem jobWorkItem) {
                this.a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public void a() {
                synchronized (f.this.b) {
                    JobParameters jobParameters = f.this.c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.a = jobIntentService;
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.a.a(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            a aVar = this.a.d;
            if (aVar != null) {
                aVar.cancel(false);
            }
            synchronized (this.b) {
                this.c = null;
            }
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public static abstract class g {
        final ComponentName a;

        g(ComponentName componentName) {
            this.a = componentName;
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f = null;
        } else {
            this.f = new ArrayList<>();
        }
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        if (this.d == null) {
            this.d = new a();
            g gVar = this.c;
            if (gVar != null && z) {
                gVar.b();
            }
            this.d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void b(Intent intent);

    /* access modifiers changed from: package-private */
    public void c() {
        ArrayList<d> arrayList = this.f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.d = null;
                ArrayList<d> arrayList2 = this.f;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    a(false);
                } else if (!this.e) {
                    this.c.a();
                }
            }
        }
    }

    public IBinder onBind(Intent intent) {
        b bVar = this.b;
        if (bVar != null) {
            return ((f) bVar).getBinder();
        }
        return null;
    }

    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.b = new f(this);
            this.c = null;
            return;
        }
        this.b = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap<ComponentName, g> hashMap = g;
        g gVar = hashMap.get(componentName);
        if (gVar == null) {
            if (i < 26) {
                gVar = new c(this, componentName);
                hashMap.put(componentName, gVar);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
        }
        this.c = gVar;
    }

    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.e = true;
                this.c.a();
            }
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f == null) {
            return 2;
        }
        this.c.c();
        synchronized (this.f) {
            ArrayList<d> arrayList = this.f;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i2));
            a(true);
        }
        return 3;
    }
}
