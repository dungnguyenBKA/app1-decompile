package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();
    ArrayList<FragmentState> b;
    ArrayList<String> c;
    BackStackState[] d;
    String e = null;
    int f;

    static class a implements Parcelable.Creator<FragmentManagerState> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    public FragmentManagerState() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
        parcel.writeStringList(this.c);
        parcel.writeTypedArray(this.d, i);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
    }

    public FragmentManagerState(Parcel parcel) {
        this.b = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.c = parcel.createStringArrayList();
        this.d = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.e = parcel.readString();
        this.f = parcel.readInt();
    }
}
