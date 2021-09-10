package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;

public class MultiInstanceInvalidationService extends Service {
    int b = 0;
    final f0<String> c = new f0<>(10);
    final RemoteCallbackList<c> d = new a();
    private final d e = new b();

    class a extends RemoteCallbackList<c> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.os.IInterface, java.lang.Object] */
        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(c cVar, Object obj) {
            MultiInstanceInvalidationService.this.c.k(((Integer) obj).intValue());
        }
    }

    class b extends d {
        b() {
        }

        public void O(int i, String[] strArr) {
            synchronized (MultiInstanceInvalidationService.this.d) {
                String f = MultiInstanceInvalidationService.this.c.f(i, null);
                if (f == null) {
                    Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = MultiInstanceInvalidationService.this.d.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        int intValue = ((Integer) MultiInstanceInvalidationService.this.d.getBroadcastCookie(i2)).intValue();
                        String e = MultiInstanceInvalidationService.this.c.e(intValue);
                        if (i != intValue && f.equals(e)) {
                            try {
                                MultiInstanceInvalidationService.this.d.getBroadcastItem(i2).h(strArr);
                            } catch (RemoteException e2) {
                                Log.w("ROOM", "Error invoking a remote callback", e2);
                            }
                        }
                    } catch (Throwable th) {
                        MultiInstanceInvalidationService.this.d.finishBroadcast();
                        throw th;
                    }
                }
                MultiInstanceInvalidationService.this.d.finishBroadcast();
            }
        }

        public int P(c cVar, String str) {
            if (str == null) {
                return 0;
            }
            synchronized (MultiInstanceInvalidationService.this.d) {
                MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
                int i = multiInstanceInvalidationService.b + 1;
                multiInstanceInvalidationService.b = i;
                if (multiInstanceInvalidationService.d.register(cVar, Integer.valueOf(i))) {
                    MultiInstanceInvalidationService.this.c.a(i, str);
                    return i;
                }
                MultiInstanceInvalidationService multiInstanceInvalidationService2 = MultiInstanceInvalidationService.this;
                multiInstanceInvalidationService2.b--;
                return 0;
            }
        }

        public void Q(c cVar, int i) {
            synchronized (MultiInstanceInvalidationService.this.d) {
                MultiInstanceInvalidationService.this.d.unregister(cVar);
                MultiInstanceInvalidationService.this.c.k(i);
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return this.e;
    }
}
