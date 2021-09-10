package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* renamed from: androidx.room.c$a$a  reason: collision with other inner class name */
        private static class C0019a implements c {
            private IBinder b;

            C0019a(IBinder iBinder) {
                this.b = iBinder;
            }

            public IBinder asBinder() {
                return this.b;
            }

            @Override // androidx.room.c
            public void h(String[] strArr) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    this.b.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static c O(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof c)) {
                return new C0019a(iBinder);
            }
            return (c) queryLocalInterface;
        }
    }

    void h(String[] strArr);
}
