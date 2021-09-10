package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import photoeditor.cutout.backgrounderaser.R;

class a extends n {
    private final TextWatcher d = new C0081a();
    private final TextInputLayout.e e = new b();
    private AnimatorSet f;
    private ValueAnimator g;

    /* renamed from: com.google.android.material.textfield.a$a  reason: collision with other inner class name */
    class C0081a implements TextWatcher {
        C0081a() {
        }

        public void afterTextChanged(Editable editable) {
            if (!(editable.length() > 0)) {
                a.this.f.cancel();
                a.this.g.start();
            } else if (!a.this.a.t()) {
                a.this.g.cancel();
                a.this.f.start();
            }
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
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
            textInputLayout.F(editText.getText().length() > 0);
            textInputLayout.z(false);
            editText.removeTextChangedListener(a.this.d);
            editText.addTextChangedListener(a.this.d);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        public void onClick(View view) {
            a.this.a.d.setText((CharSequence) null);
        }
    }

    a(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.n
    public void a() {
        this.a.B(d.b(this.b, R.drawable.jt));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.A(textInputLayout.getResources().getText(R.string.aw));
        this.a.D(new c());
        this.a.c(this.e);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(jx.d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new e(this));
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = jx.a;
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(100L);
        ofFloat2.addUpdateListener(new d(this));
        AnimatorSet animatorSet = new AnimatorSet();
        this.f = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f.addListener(new b(this));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(100L);
        ofFloat3.addUpdateListener(new d(this));
        this.g = ofFloat3;
        ofFloat3.addListener(new c(this));
    }
}
