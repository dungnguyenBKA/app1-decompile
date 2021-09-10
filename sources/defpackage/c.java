package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.a;

/* renamed from: c  reason: default package */
public interface c extends IInterface {

    /* renamed from: c$a */
    public static abstract class a extends Binder implements c {
        public a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                a O = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                n(O, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                a O2 = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                u(O2, readString, bundle);
                parcel2.writeNoException();
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            }
        }
    }

    void n(a aVar, Bundle bundle);

    void u(a aVar, String str, Bundle bundle);
}
