package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper;
import com.vungle.warren.model.ReportDBAdapter;
import photoeditor.cutout.backgrounderaser.R;

public class l extends sm {
    protected EditText i0;
    private FragmentFactory$AbsViewClickWrapper j0;

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
                this.b.setTextColor(androidx.core.content.a.b(((sm) l.this).f0, R.color.b6));
                return;
            }
            this.b.setClickable(false);
            this.b.setEnabled(false);
            this.b.setTextColor(androidx.core.content.a.b(((sm) l.this).f0, R.color.b7));
        }
    }

    public void A1(InputMethodManager inputMethodManager, View view) {
        em.h("TesterLog-Other", "点击Not Now取消发送Report按钮");
        inputMethodManager.toggleSoftInput(0, 2);
        u1();
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.j0;
        if (fragmentFactory$AbsViewClickWrapper != null && fragmentFactory$AbsViewClickWrapper.a() != null) {
            this.j0.a().onClick(view);
        }
    }

    public void B1(InputMethodManager inputMethodManager, View view) {
        em.h("TesterLog-Other", "点击提交发送错误Report对话框");
        inputMethodManager.toggleSoftInput(0, 2);
        u1();
        String string = A() == null ? "" : A().getString("error report description");
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.j0;
        if (!(fragmentFactory$AbsViewClickWrapper == null || fragmentFactory$AbsViewClickWrapper.e() == null)) {
            View.OnClickListener e = this.j0.e();
            StringBuilder q = ic.q("");
            q.append(this.i0.getText().toString());
            String sb = q.toString();
            StringBuilder q2 = ic.q("(");
            q2.append(sb.length());
            q2.append(")");
            q2.append(string);
            String sb2 = q2.toString();
            this.j0.f(ReportDBAdapter.ReportColumns.TABLE_NAME, sb);
            this.j0.f("subject", sb2);
            e.onClick(view);
        }
        String obj = this.i0.getText().toString();
        if (obj != null) {
            FragmentActivity x = x();
            StringBuilder q3 = ic.q("(");
            q3.append(obj.length());
            q3.append(")");
            q3.append(string);
            rq.n(x, obj, q3.toString());
        }
    }

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        TextView textView = (TextView) view.findViewById(R.id.m_);
        TextView textView2 = (TextView) view.findViewById(R.id.r_);
        this.i0 = (EditText) view.findViewById(R.id.ra);
        uq.x(textView, this.f0);
        uq.x(textView2, this.f0);
        this.j0 = (FragmentFactory$AbsViewClickWrapper) (A() != null ? A().getParcelable("AbsViewClickWrapper") : null);
        if (textView2 != null && this.i0.getText().length() == 0) {
            textView2.setClickable(false);
            textView2.setEnabled(false);
            textView2.setTextColor(androidx.core.content.a.b(this.f0, R.color.b7));
        }
        lm.d(this.f0, this.i0);
        InputMethodManager inputMethodManager = (InputMethodManager) this.f0.getSystemService("input_method");
        this.i0.requestFocus();
        inputMethodManager.toggleSoftInput(1, 0);
        this.i0.addTextChangedListener(new a(textView2));
        textView.setOnClickListener(new f(this, inputMethodManager));
        textView2.setOnClickListener(new e(this, inputMethodManager));
    }

    @Override // androidx.fragment.app.b
    public void onCancel(DialogInterface dialogInterface) {
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.j0;
        if (fragmentFactory$AbsViewClickWrapper != null && fragmentFactory$AbsViewClickWrapper.b() != null) {
            this.j0.b().onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.b
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.j0;
        if (fragmentFactory$AbsViewClickWrapper != null && fragmentFactory$AbsViewClickWrapper.c() != null) {
            this.j0.c().onDismiss(dialogInterface);
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
        return "ErrFeedbackFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.be;
    }
}
