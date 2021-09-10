package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.widget.c;

public class AppCompatCheckedTextView extends CheckedTextView {
    private static final int[] c = {16843016};
    private final k b;

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        k kVar = this.b;
        if (kVar != null) {
            kVar.b();
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l0.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(d.b(getContext(), i));
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(c.j(this, callback));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        k kVar = this.b;
        if (kVar != null) {
            kVar.m(context, i);
        }
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        k kVar = new k(this);
        this.b = kVar;
        kVar.k(attributeSet, i);
        kVar.b();
        i0 u = i0.u(getContext(), attributeSet, c, i, 0);
        setCheckMarkDrawable(u.g(0));
        u.v();
    }
}
