package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class LifecycleService extends Service implements i {
    private final r b = new r(this);

    @Override // androidx.lifecycle.i
    public f getLifecycle() {
        return this.b.a();
    }

    public IBinder onBind(Intent intent) {
        this.b.b();
        return null;
    }

    public void onCreate() {
        this.b.c();
        super.onCreate();
    }

    public void onDestroy() {
        this.b.d();
        super.onDestroy();
    }

    public void onStart(Intent intent, int i) {
        this.b.e();
        super.onStart(intent, i);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
