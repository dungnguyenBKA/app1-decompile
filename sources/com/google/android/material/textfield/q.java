package com.google.android.material.textfield;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import photoeditor.cutout.backgrounderaser.R;

class q extends n {
    private final TextWatcher d = new a();
    private final TextInputLayout.e e = new b();
    private final TextInputLayout.f f = new c(this);

    class a implements TextWatcher {
        a() {
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            q qVar = q.this;
            qVar.c.setChecked(!q.d(qVar));
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class b implements TextInputLayout.e {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e
        public void a(TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.d;
            textInputLayout.F(true);
            q qVar = q.this;
            qVar.c.setChecked(!q.d(qVar));
            editText.removeTextChangedListener(q.this.d);
            editText.addTextChangedListener(q.this.d);
        }
    }

    class c implements TextInputLayout.f {
        c(q qVar) {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout, int i) {
            EditText editText = textInputLayout.d;
            if (editText != null && i == 1) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        public void onClick(View view) {
            EditText editText = q.this.a.d;
            if (editText != null) {
                int selectionEnd = editText.getSelectionEnd();
                if (q.d(q.this)) {
                    editText.setTransformationMethod(null);
                } else {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    editText.setSelection(selectionEnd);
                }
            }
        }
    }

    q(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    static boolean d(q qVar) {
        EditText editText = qVar.a.d;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.n
    public void a() {
        this.a.B(defpackage.d.b(this.b, R.drawable.ek));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.A(textInputLayout.getResources().getText(R.string.et));
        this.a.D(new d());
        this.a.c(this.e);
        this.a.d(this.f);
    }
}
