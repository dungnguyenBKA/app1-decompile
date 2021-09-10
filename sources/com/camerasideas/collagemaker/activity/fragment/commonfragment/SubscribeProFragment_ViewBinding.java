package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class SubscribeProFragment_ViewBinding implements Unbinder {
    private SubscribeProFragment b;
    private View c;
    private View d;
    private View e;

    class a extends p6 {
        final /* synthetic */ SubscribeProFragment c;

        a(SubscribeProFragment_ViewBinding subscribeProFragment_ViewBinding, SubscribeProFragment subscribeProFragment) {
            this.c = subscribeProFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ SubscribeProFragment c;

        b(SubscribeProFragment_ViewBinding subscribeProFragment_ViewBinding, SubscribeProFragment subscribeProFragment) {
            this.c = subscribeProFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ SubscribeProFragment c;

        c(SubscribeProFragment_ViewBinding subscribeProFragment_ViewBinding, SubscribeProFragment subscribeProFragment) {
            this.c = subscribeProFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public SubscribeProFragment_ViewBinding(SubscribeProFragment subscribeProFragment, View view) {
        this.b = subscribeProFragment;
        View b2 = q6.b(view, R.id.dc, "field 'mBtnBack' and method 'onClick'");
        subscribeProFragment.mBtnBack = (AppCompatImageView) q6.a(b2, R.id.dc, "field 'mBtnBack'", AppCompatImageView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, subscribeProFragment));
        View b3 = q6.b(view, R.id.ev, "field 'mTvTip' and method 'onClick'");
        subscribeProFragment.mTvTip = (TextView) q6.a(b3, R.id.ev, "field 'mTvTip'", TextView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, subscribeProFragment));
        subscribeProFragment.mProLayout = q6.b(view, R.id.n3, "field 'mProLayout'");
        View b4 = q6.b(view, R.id.o7, "method 'onClick'");
        this.e = b4;
        b4.setOnClickListener(new c(this, subscribeProFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        SubscribeProFragment subscribeProFragment = this.b;
        if (subscribeProFragment != null) {
            this.b = null;
            subscribeProFragment.mBtnBack = null;
            subscribeProFragment.mTvTip = null;
            subscribeProFragment.mProLayout = null;
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
