package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ErrGeneralFragment_ViewBinding implements Unbinder {
    private ErrGeneralFragment b;
    private View c;

    class a extends p6 {
        final /* synthetic */ ErrGeneralFragment c;

        a(ErrGeneralFragment_ViewBinding errGeneralFragment_ViewBinding, ErrGeneralFragment errGeneralFragment) {
            this.c = errGeneralFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.u1();
        }
    }

    public ErrGeneralFragment_ViewBinding(ErrGeneralFragment errGeneralFragment, View view) {
        this.b = errGeneralFragment;
        errGeneralFragment.mErrDescriptionTv = (TextView) q6.a(q6.b(view, R.id.gw, "field 'mErrDescriptionTv'"), R.id.gw, "field 'mErrDescriptionTv'", TextView.class);
        errGeneralFragment.mInfoCodeTv = (TextView) q6.a(q6.b(view, R.id.j_, "field 'mInfoCodeTv'"), R.id.j_, "field 'mInfoCodeTv'", TextView.class);
        View b2 = q6.b(view, R.id.et, "field 'mBtnYes' and method 'onClick'");
        errGeneralFragment.mBtnYes = (Button) q6.a(b2, R.id.et, "field 'mBtnYes'", Button.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, errGeneralFragment));
        LinearLayout linearLayout = (LinearLayout) q6.a(q6.b(view, R.id.q7, "field 'mShowDeleteTextLayout'"), R.id.q7, "field 'mShowDeleteTextLayout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        ErrGeneralFragment errGeneralFragment = this.b;
        if (errGeneralFragment != null) {
            this.b = null;
            errGeneralFragment.mErrDescriptionTv = null;
            errGeneralFragment.mInfoCodeTv = null;
            errGeneralFragment.mBtnYes = null;
            this.c.setOnClickListener(null);
            this.c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
