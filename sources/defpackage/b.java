package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.a;
import java.util.List;

/* renamed from: b  reason: default package */
public interface b extends IInterface {

    /* renamed from: b$a */
    public static abstract class a extends Binder implements b {

        /* renamed from: b$a$a  reason: collision with other inner class name */
        private static class C0026a implements b {
            private IBinder b;

            C0026a(IBinder iBinder) {
                this.b = iBinder;
            }

            public IBinder asBinder() {
                return this.b;
            }

            @Override // defpackage.b
            public boolean r(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeLong(j);
                    boolean z = false;
                    this.b.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // defpackage.b
            public boolean z(a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    obtain.writeStrongBinder((a.AbstractBinderC0000a) aVar);
                    boolean z = false;
                    this.b.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        public static b O(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof b)) {
                return new C0026a(iBinder);
            }
            return (b) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1598968902) {
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Uri uri = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean r = r(parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(r ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        boolean z = z(a.AbstractBinderC0000a.O(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(z ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        a O = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                        Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean c = c(O, uri2, bundle, parcel.createTypedArrayList(Bundle.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeInt(c ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle j = j(readString, bundle5);
                        parcel2.writeNoException();
                        if (j != null) {
                            parcel2.writeInt(1);
                            j.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        a O2 = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean E = E(O2, bundle4);
                        parcel2.writeNoException();
                        parcel2.writeInt(E ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        a O3 = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean G = G(O3, uri);
                        parcel2.writeNoException();
                        parcel2.writeInt(G ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        a O4 = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int x = x(O4, readString2, bundle3);
                        parcel2.writeNoException();
                        parcel2.writeInt(x);
                        return true;
                    case 9:
                        parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                        a O5 = a.AbstractBinderC0000a.O(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean d = d(O5, readInt, uri3, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(d ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            } else {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
        }
    }

    boolean E(a aVar, Bundle bundle);

    boolean G(a aVar, Uri uri);

    boolean c(a aVar, Uri uri, Bundle bundle, List<Bundle> list);

    boolean d(a aVar, int i, Uri uri, Bundle bundle);

    Bundle j(String str, Bundle bundle);

    boolean r(long j);

    int x(a aVar, String str, Bundle bundle);

    boolean z(a aVar);
}
