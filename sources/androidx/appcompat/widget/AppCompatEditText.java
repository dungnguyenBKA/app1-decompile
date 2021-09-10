package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.core.widget.c;
import photoeditor.cutout.backgrounderaser.R;

public class AppCompatEditText extends EditText implements b3 {
    private final c b;
    private final k c;
    private final j d;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.hb);
    }

    @Override // defpackage.b3
    public ColorStateList d() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        c cVar = this.b;
        if (cVar != null) {
            cVar.a();
        }
        k kVar = this.c;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // defpackage.b3
    public PorterDuff.Mode g() {
        c cVar = this.b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    public TextClassifier getTextClassifier() {
        j jVar;
        if (Build.VERSION.SDK_INT >= 28 || (jVar = this.d) == null) {
            return super.getTextClassifier();
        }
        return jVar.a();
    }

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.h(colorStateList);
        }
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        c cVar = this.b;
        if (cVar != null) {
            cVar.i(mode);
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        l0.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.b;
        if (cVar != null) {
            cVar.e();
        }
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        c cVar = this.b;
        if (cVar != null) {
            cVar.f(i);
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(c.j(this, callback));
    }

    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        k kVar = this.c;
        if (kVar != null) {
            kVar.m(context, i);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        j jVar;
        if (Build.VERSION.SDK_INT >= 28 || (jVar = this.d) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            jVar.b(textClassifier);
        }
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(f0.a(context), attributeSet, i);
        c cVar = new c(this);
        this.b = cVar;
        cVar.d(attributeSet, i);
        k kVar = new k(this);
        this.c = kVar;
        kVar.k(attributeSet, i);
        kVar.b();
        this.d = new j(this);
    }

    @Override // android.widget.EditText, android.widget.EditText
    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }
}
