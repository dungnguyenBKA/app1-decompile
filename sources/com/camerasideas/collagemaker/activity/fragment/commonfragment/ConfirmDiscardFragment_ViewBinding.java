package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ConfirmDiscardFragment_ViewBinding implements Unbinder {
    private ConfirmDiscardFragment b;
    private View c;
    private View d;
    private View e;

    class a extends p6 {
        final /* synthetic */ ConfirmDiscardFragment c;

        a(ConfirmDiscardFragment_ViewBinding confirmDiscardFragment_ViewBinding, ConfirmDiscardFragment confirmDiscardFragment) {
            this.c = confirmDiscardFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ConfirmDiscardFragment c;

        b(ConfirmDiscardFragment_ViewBinding confirmDiscardFragment_ViewBinding, ConfirmDiscardFragment confirmDiscardFragment) {
            this.c = confirmDiscardFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ ConfirmDiscardFragment c;

        c(ConfirmDiscardFragment_ViewBinding confirmDiscardFragment_ViewBinding, ConfirmDiscardFragment confirmDiscardFragment) {
            this.c = confirmDiscardFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ConfirmDiscardFragment_ViewBinding(ConfirmDiscardFragment confirmDiscardFragment, View view) {
        this.b = confirmDiscardFragment;
        View b2 = q6.b(view, R.id.dm, "field 'mBtnConfirm' and method 'onClick'");
        confirmDiscardFragment.mBtnConfirm = (TextView) q6.a(b2, R.id.dm, "field 'mBtnConfirm'", TextView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, confirmDiscardFragment));
        View b3 = q6.b(view, R.id.df, "field 'mBtnCancel' and method 'onClick'");
        confirmDiscardFragment.mBtnCancel = (TextView) q6.a(b3, R.id.df, "field 'mBtnCancel'", TextView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, confirmDiscardFragment));
        View b4 = q6.b(view, R.id.fm, "method 'onClick'");
        this.e = b4;
        b4.setOnClickListener(new c(this, confirmDiscardFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ConfirmDiscardFragment confirmDiscardFragment = this.b;
        if (confirmDiscardFragment != null) {
            this.b = null;
            confirmDiscardFragment.mBtnConfirm = null;
            confirmDiscardFragment.mBtnCancel = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
