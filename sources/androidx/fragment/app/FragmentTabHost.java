package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;
import java.util.Objects;

@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {
    private final ArrayList<a> b = new ArrayList<>();
    private int c;
    private TabHost.OnTabChangeListener d;
    private boolean e;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String b;

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

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder q = ic.q("FragmentTabHost.SavedState{");
            q.append(Integer.toHexString(System.identityHashCode(this)));
            q.append(" curTab=");
            return ic.l(q, this.b, "}");
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.b);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.readString();
        }
    }

    /* access modifiers changed from: package-private */
    public static final class a {
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.c = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    private m a(String str, m mVar) {
        if (this.b.size() <= 0) {
            return null;
        }
        Objects.requireNonNull(this.b.get(0));
        throw null;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        if (this.b.size() <= 0) {
            this.e = true;
            m a2 = a(currentTabTag, null);
            if (a2 != null) {
                a2.f();
                throw null;
            }
            return;
        }
        Objects.requireNonNull(this.b.get(0));
        throw null;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e = false;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.b);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = getCurrentTabTag();
        return savedState;
    }

    @Deprecated
    public void onTabChanged(String str) {
        m a2;
        if (this.e && (a2 = a(str, null)) != null) {
            a2.f();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.d;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.d = onTabChangeListener;
    }

    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
