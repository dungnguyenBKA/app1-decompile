package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.MultiInstanceInvalidationService;
import androidx.room.c;

public abstract class d extends Binder implements IInterface {
    public d() {
        attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
    }

    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            int P = ((MultiInstanceInvalidationService.b) this).P(c.a.O(parcel.readStrongBinder()), parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(P);
            return true;
        } else if (i == 2) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            ((MultiInstanceInvalidationService.b) this).Q(c.a.O(parcel.readStrongBinder()), parcel.readInt());
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            ((MultiInstanceInvalidationService.b) this).O(parcel.readInt(), parcel.createStringArray());
            return true;
        } else if (i != 1598968902) {
            return super.onTransact(i, parcel, parcel2, i2);
        } else {
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
    }
}
