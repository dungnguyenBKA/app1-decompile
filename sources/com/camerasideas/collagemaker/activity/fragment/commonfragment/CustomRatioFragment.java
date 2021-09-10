package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import photoeditor.cutout.backgrounderaser.R;

public class CustomRatioFragment extends sm {
    private b i0;
    private TextWatcher j0 = new a();
    @BindView
    TextView mBtnSubmit;
    @BindView
    TextView mErrorDesc;
    @BindView
    EditText mRatioX;
    @BindView
    EditText mRatioY;

    class a implements TextWatcher {
        a() {
        }

        public void afterTextChanged(Editable editable) {
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (TextUtils.isEmpty(CustomRatioFragment.this.mRatioX.getText()) || TextUtils.isEmpty(CustomRatioFragment.this.mRatioY.getText())) {
                CustomRatioFragment.this.mBtnSubmit.setClickable(false);
                CustomRatioFragment.this.mBtnSubmit.setEnabled(false);
                CustomRatioFragment customRatioFragment = CustomRatioFragment.this;
                customRatioFragment.mBtnSubmit.setTextColor(androidx.core.content.a.b(((sm) customRatioFragment).f0, R.color.b7));
                return;
            }
            CustomRatioFragment.this.mBtnSubmit.setClickable(true);
            CustomRatioFragment.this.mBtnSubmit.setEnabled(true);
            CustomRatioFragment customRatioFragment2 = CustomRatioFragment.this;
            customRatioFragment2.mBtnSubmit.setTextColor(androidx.core.content.a.b(((sm) customRatioFragment2).f0, R.color.b6));
        }
    }

    public interface b {
        void e(float f, float f2);
    }

    public /* synthetic */ void A1() {
        EditText editText = this.mRatioX;
        if (editText != null) {
            editText.requestFocus();
            lm.d(this.f0, this.mRatioX);
            if (!TextUtils.isEmpty(this.mRatioX.getText())) {
                EditText editText2 = this.mRatioX;
                editText2.setSelection(editText2.getText().length());
            }
        }
    }

    public void B1(b bVar) {
        this.i0 = bVar;
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        this.mRatioX.postDelayed(new b(this), 100);
        this.mRatioX.addTextChangedListener(this.j0);
        this.mRatioY.addTextChangedListener(this.j0);
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return super.m0(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment, defpackage.sm
    public void o0() {
        this.mRatioX.removeTextChangedListener(this.j0);
        this.mRatioY.removeTextChangedListener(this.j0);
        super.o0();
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.fv /*{ENCODED_INT: 2131230963}*/:
                u1();
                return;
            case R.id.fw /*{ENCODED_INT: 2131230964}*/:
                try {
                    float parseFloat = Float.parseFloat(this.mRatioX.getText().toString());
                    float parseFloat2 = Float.parseFloat(this.mRatioY.getText().toString());
                    float f = parseFloat / parseFloat2;
                    if (f >= 0.5f) {
                        if (f <= 2.0f) {
                            b bVar = this.i0;
                            if (bVar != null) {
                                bVar.e(parseFloat, parseFloat2);
                            }
                            u1();
                            return;
                        }
                    }
                    if (uq.g(this.mErrorDesc)) {
                        Context context = this.f0;
                        TextView textView = this.mErrorDesc;
                        if (textView == null) {
                            return;
                        }
                        if (context != null) {
                            textView.startAnimation(AnimationUtils.loadAnimation(context, R.anim.ab));
                            return;
                        }
                        return;
                    }
                    uq.t(this.mErrorDesc, true);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            default:
                return;
        }
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
        return "CustomRatioFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.ba;
    }
}
