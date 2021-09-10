package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.customview.view.AbsSavedState;
import photoeditor.cutout.backgrounderaser.R;

public class CheckableImageButton extends AppCompatImageButton implements Checkable {
    private static final int[] g = {16842912};
    private boolean d;
    private boolean e;
    private boolean f;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt() != 1 ? false : true;
        }
    }

    class a extends n2 {
        a() {
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.P(CheckableImageButton.this.b());
            n3Var.Q(CheckableImageButton.this.isChecked());
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.k5);
    }

    public boolean b() {
        return this.e;
    }

    public void e(boolean z) {
        if (this.e != z) {
            this.e = z;
            sendAccessibilityEvent(0);
        }
    }

    public boolean isChecked() {
        return this.d;
    }

    public void k(boolean z) {
        this.f = z;
    }

    public int[] onCreateDrawableState(int i) {
        if (!this.d) {
            return super.onCreateDrawableState(i);
        }
        int[] iArr = g;
        return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + iArr.length), iArr);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        setChecked(savedState.d);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.d;
        return savedState;
    }

    public void setChecked(boolean z) {
        if (this.e && this.d != z) {
            this.d = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void setPressed(boolean z) {
        if (this.f) {
            super.setPressed(z);
        }
    }

    public void toggle() {
        setChecked(!this.d);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = true;
        this.f = true;
        c3.u(this, new a());
    }
}
