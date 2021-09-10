package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Dialog;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import photoeditor.cutout.backgrounderaser.R;

public class k extends sm {

    class a implements TextWatcher {
        final /* synthetic */ TextView b;

        a(TextView textView) {
            this.b = textView;
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String charSequence2 = charSequence.toString();
            if (charSequence2 == null) {
                return;
            }
            if (charSequence2.length() > 0) {
                this.b.setClickable(true);
                this.b.setEnabled(true);
                this.b.setTextColor(androidx.core.content.a.b(((sm) k.this).f0, R.color.b6));
                return;
            }
            this.b.setClickable(false);
            this.b.setEnabled(false);
            this.b.setTextColor(androidx.core.content.a.b(((sm) k.this).f0, R.color.b7));
        }
    }

    public /* synthetic */ void A1(EditText editText, View view) {
        u1();
        String obj = editText.getText().toString();
        if (obj != null) {
            FragmentActivity x = x();
            StringBuilder q = ic.q("(");
            q.append(obj.length());
            q.append(")");
            q.append(this.f0.getResources().getString(R.string.c3));
            rq.n(x, obj, q.toString());
        }
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        TextView textView = (TextView) view.findViewById(R.id.m_);
        TextView textView2 = (TextView) view.findViewById(R.id.r_);
        EditText editText = (EditText) view.findViewById(R.id.ra);
        uq.x(textView, this.f0);
        uq.x(textView2, this.f0);
        editText.setText(A() != null ? A().getString("error report description") : "");
        if (textView2 != null && editText.getText().length() == 0) {
            textView2.setClickable(false);
            textView2.setEnabled(false);
            textView2.setTextColor(androidx.core.content.a.b(this.f0, R.color.b7));
        }
        lm.d(this.f0, editText);
        editText.requestFocus();
        ((InputMethodManager) this.f0.getSystemService("input_method")).toggleSoftInput(1, 0);
        editText.addTextChangedListener(new a(textView2));
        textView.setOnClickListener(new d(this));
        textView2.setOnClickListener(new c(this, editText));
    }

    @Override // androidx.fragment.app.b, defpackage.sm
    public Dialog p1(Bundle bundle) {
        Dialog p1 = super.p1(bundle);
        p1.getWindow().clearFlags(131080);
        p1.getWindow().setSoftInputMode(4);
        return p1;
    }

    @Override // defpackage.sm
    public String v1() {
        return "EditableFeedBackFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.be;
    }
}
