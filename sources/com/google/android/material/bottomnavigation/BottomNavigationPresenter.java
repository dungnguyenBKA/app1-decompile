package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.a;
import com.google.android.material.internal.ParcelableSparseArray;

public class BottomNavigationPresenter implements m {
    private g b;
    private BottomNavigationMenuView c;
    private boolean d = false;
    private int e;

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int b;
        ParcelableSparseArray c;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState() {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.b);
            parcel.writeParcelable(this.c, 0);
        }

        SavedState(Parcel parcel) {
            this.b = parcel.readInt();
            this.c = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public void a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.c = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z) {
        if (!this.d) {
            if (z) {
                this.c.d();
            } else {
                this.c.x();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean e(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean f(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.m
    public void h(Context context, g gVar) {
        this.b = gVar;
        this.c.b(gVar);
    }

    @Override // androidx.appcompat.view.menu.m
    public void i(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.c.w(savedState.b);
            this.c.l(a.a(this.c.getContext(), savedState.c));
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean j(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable k() {
        SavedState savedState = new SavedState();
        savedState.b = this.c.i();
        SparseArray<BadgeDrawable> f = this.c.f();
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < f.size(); i++) {
            int keyAt = f.keyAt(i);
            BadgeDrawable valueAt = f.valueAt(i);
            if (valueAt != null) {
                parcelableSparseArray.put(keyAt, valueAt.f());
            } else {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
        }
        savedState.c = parcelableSparseArray;
        return savedState;
    }

    public void l(int i) {
        this.e = i;
    }

    public void m(boolean z) {
        this.d = z;
    }
}
