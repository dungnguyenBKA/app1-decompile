package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ErrInfoCodeFragment_ViewBinding implements Unbinder {
    private ErrInfoCodeFragment b;
    private View c;
    private View d;

    class a extends p6 {
        final /* synthetic */ ErrInfoCodeFragment c;

        a(ErrInfoCodeFragment_ViewBinding errInfoCodeFragment_ViewBinding, ErrInfoCodeFragment errInfoCodeFragment) {
            this.c = errInfoCodeFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ErrInfoCodeFragment c;

        b(ErrInfoCodeFragment_ViewBinding errInfoCodeFragment_ViewBinding, ErrInfoCodeFragment errInfoCodeFragment) {
            this.c = errInfoCodeFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ErrInfoCodeFragment_ViewBinding(ErrInfoCodeFragment errInfoCodeFragment, View view) {
        this.b = errInfoCodeFragment;
        errInfoCodeFragment.mErrDescriptionTv = (TextView) q6.a(q6.b(view, R.id.gw, "field 'mErrDescriptionTv'"), R.id.gw, "field 'mErrDescriptionTv'", TextView.class);
        errInfoCodeFragment.mInfoCodeTv = (TextView) q6.a(q6.b(view, R.id.j_, "field 'mInfoCodeTv'"), R.id.j_, "field 'mInfoCodeTv'", TextView.class);
        View b2 = q6.b(view, R.id.e5, "field 'mBtnNo' and method 'onClick'");
        errInfoCodeFragment.mBtnNo = (Button) q6.a(b2, R.id.e5, "field 'mBtnNo'", Button.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, errInfoCodeFragment));
        View b3 = q6.b(view, R.id.eb, "field 'mBtnReport' and method 'onClick'");
        errInfoCodeFragment.mBtnReport = (Button) q6.a(b3, R.id.eb, "field 'mBtnReport'", Button.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, errInfoCodeFragment));
        LinearLayout linearLayout = (LinearLayout) q6.a(q6.b(view, R.id.q7, "field 'mShowDeleteTextLayout'"), R.id.q7, "field 'mShowDeleteTextLayout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        ErrInfoCodeFragment errInfoCodeFragment = this.b;
        if (errInfoCodeFragment != null) {
            this.b = null;
            errInfoCodeFragment.mErrDescriptionTv = null;
            errInfoCodeFragment.mInfoCodeTv = null;
            errInfoCodeFragment.mBtnNo = null;
            errInfoCodeFragment.mBtnReport = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
