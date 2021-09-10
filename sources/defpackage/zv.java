package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzb;

/* renamed from: zv  reason: default package */
public interface zv extends IInterface {

    /* renamed from: zv$a */
    public static abstract class a extends zza implements zv {

        /* renamed from: zv$a$a  reason: collision with other inner class name */
        public static class C0121a extends zzb implements zv {
            C0121a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
            }
        }

        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static zv O(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            if (queryLocalInterface instanceof zv) {
                return (zv) queryLocalInterface;
            }
            return new C0121a(iBinder);
        }
    }
}
