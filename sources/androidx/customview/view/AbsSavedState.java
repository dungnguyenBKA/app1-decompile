package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class AbsSavedState implements Parcelable {
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new a();
    public static final AbsSavedState c = new AbsSavedState() {
        /* class androidx.customview.view.AbsSavedState.AnonymousClass1 */
    };
    private final Parcelable b;

    private AbsSavedState() {
        this.b = null;
    }

    public final Parcelable a() {
        return this.b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.b, i);
    }

    static class a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return AbsSavedState.c;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new AbsSavedState[i];
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbsSavedState.c;
            }
            throw new IllegalStateException("superState must be null");
        }
    }

    AbsSavedState(AnonymousClass1 r1) {
        this.b = null;
    }

    protected AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.b = parcelable == c ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    protected AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.b = readParcelable == null ? c : readParcelable;
    }
}
