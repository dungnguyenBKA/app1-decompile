package com.camerasideas.collagemaker.activity;

import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.b;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.ConfirmDiscardFragment;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageCutoutBgFragment;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageCutoutFragment;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageCutoutShapeFragment;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageGuidFragment;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageTextFragment;
import com.camerasideas.collagemaker.activity.fragment.utils.a;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import inshot.collage.adconfig.f;
import inshot.collage.adconfig.h;
import inshot.collage.adconfig.l;
import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutActivity extends BaseMvpActivity<Object, mo> implements Object, CutoutEditorView.c {
    public static final /* synthetic */ int g = 0;
    private Uri e;
    private Rect f;
    @BindView
    ViewGroup mBannerAdContainer;
    @BindView
    ViewGroup mBannerAdLayout;
    @BindView
    View mBgToolBarLayout;
    @BindView
    ImageView mBtnChangeAlpha;
    @BindView
    LinearLayout mBtnMoveDown;
    @BindView
    LinearLayout mBtnMoveUp;
    @BindView
    CutoutEditorView mCutoutView;
    @BindView
    ImageView mImgAlignLineH;
    @BindView
    ImageView mImgAlignLineV;
    @BindView
    FrameLayout mMaskView;
    @BindView
    View mMiddleLayout;
    @BindView
    View mProgressView;
    @BindView
    View mSortItemLayout;

    private boolean B() {
        if (a.a(this, ConfirmDiscardFragment.class)) {
            b.t0(this, ConfirmDiscardFragment.class);
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("DISCARD_DIALOG_FROM_FRAGMENT", true);
        b.s(this, ConfirmDiscardFragment.class, bundle, R.id.hl, true, true);
        return true;
    }

    private void E(com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar) {
        uq.t(this.mSortItemLayout, false);
        if (bVar != null && i.k().l().size() > 1) {
            uq.t(this.mSortItemLayout, a.a(this, ImageCutoutBgFragment.class));
            ((ImageView) this.mBtnMoveDown.getChildAt(0)).setSelected(i.k().f(bVar));
            ((TextView) this.mBtnMoveDown.getChildAt(1)).setSelected(i.k().f(bVar));
            ((ImageView) this.mBtnMoveUp.getChildAt(0)).setSelected(i.k().g(bVar));
            ((TextView) this.mBtnMoveUp.getChildAt(1)).setSelected(i.k().g(bVar));
        }
    }

    public void A(View view, com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar, com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar2) {
        E(bVar2);
    }

    public void C() {
        CutoutEditorView cutoutEditorView = this.mCutoutView;
        if (cutoutEditorView != null) {
            cutoutEditorView.post(new n(this));
        }
    }

    public void D() {
        uq.s(this.mMaskView, 0);
    }

    public void c() {
        runOnUiThread(new p(this));
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "ImageCutoutActivity";
    }

    public void m() {
        runOnUiThread(new o(this));
    }

    @Override // androidx.activity.ComponentActivity
    public void onBackPressed() {
        em.h("ImageCutoutActivity", "onBackPressed");
        if (!v()) {
            if (a.a(this, SubscribeProFragment.class)) {
                ((SubscribeProFragment) b.K(this, SubscribeProFragment.class)).o();
            } else if (a.a(this, ImageGuidFragment.class)) {
                b.t0(this, ImageGuidFragment.class);
            } else if (a.a(this, ImageTextFragment.class)) {
                ((ImageTextFragment) b.K(this, ImageTextFragment.class)).B1();
            } else if (a.a(this, ImageCutoutBgFragment.class)) {
                ((ImageCutoutBgFragment) b.K(this, ImageCutoutBgFragment.class)).i2();
            } else if (a.a(this, ImageCutoutShapeFragment.class)) {
                ((ImageCutoutShapeFragment) b.K(this, ImageCutoutShapeFragment.class)).Q1();
            } else {
                B();
            }
        }
    }

    @OnClick
    public void onClick(View view) {
        if (jm.a("sclick:button-click") && !v()) {
            switch (view.getId()) {
                case R.id.dp /*{ENCODED_INT: 2131230883}*/:
                    em.h("ImageCutoutActivity", "点击Cutout Sticker编辑页 Cancel按钮");
                    B();
                    return;
                case R.id.e1 /*{ENCODED_INT: 2131230895}*/:
                    if (i.k().f(i.k().m())) {
                        i.k().p();
                        E(i.k().m());
                        C();
                        return;
                    }
                    return;
                case R.id.e2 /*{ENCODED_INT: 2131230896}*/:
                    if (i.k().g(i.k().m())) {
                        i.k().q();
                        E(i.k().m());
                        C();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        Rect rect;
        super.onCreate(bundle);
        em.h("ImageCutoutActivity", "onCreate=" + this + ", savedInstanceState=" + bundle);
        if (!this.c) {
            if (cc0.g(this, "AD_enableLimitBannerHeight", false)) {
                this.mBannerAdContainer.getLayoutParams().height = uq.d(this);
            }
            b.s(this, ImageCutoutFragment.class, null, R.id.cv, true, true);
            this.mCutoutView.o0(this);
            this.mCutoutView.g0(this);
            em.h("ImageCutoutActivity", "getFilePaths, savedInstanceState=" + bundle);
            ArrayList<MediaFileInfo> c = com.camerasideas.collagemaker.appdata.a.c(bundle);
            em.h("ImageCutoutActivity", "restoreFilePaths:" + c);
            if (c == null || c.size() <= 0) {
                em.h("ImageCutoutActivity", "from savedInstanceState get file paths failed");
                c = getIntent().getParcelableArrayListExtra("EXTRA_KEY_LIST_PATHS");
            }
            int h = c2.h(this);
            int g2 = c2.g(this);
            em.h("UIUtils", "[displayWidth, displayHeight]=[" + h + ", " + g2 + "]");
            int min = Math.min(h, g2);
            int max = Math.max(h, g2) - 0;
            if ((getResources().getConfiguration().screenLayout & 15) >= 3) {
                max = g2 + 0;
            } else {
                h = min;
            }
            em.h("UIUtils", "[aspectWidth, aspectHeight]=[" + h + ", " + max + "]");
            Rect rect2 = new Rect(0, 0, h, max);
            int height = (((rect2.height() - getResources().getDimensionPixelSize(R.dimen.yr)) - uq.d(this)) - getResources().getDimensionPixelSize(R.dimen.qk)) - getResources().getDimensionPixelSize(R.dimen.p_);
            StringBuilder q = ic.q("displaySize-[width, height]=[");
            q.append(rect2.width());
            q.append(", ");
            q.append(height);
            q.append("]");
            em.h("UIUtils", q.toString());
            this.f = new Rect(0, 0, rect2.width(), height);
            if (c == null || c.size() == 0 || (rect = this.f) == null || rect.isEmpty()) {
                em.h("TesterLog-Image Edit", "发生异常, 返回选图页");
                this.mAppExitUtils.a(this, true);
                String string = getString(R.string.ed);
                c2.b(this, 50.0f);
                mr.d(string);
                return;
            }
            uq.t(this.mBtnChangeAlpha, false);
            m();
            this.e = c.get(0).e();
            this.mCutoutView.post(new w(this));
            CutoutEditorView cutoutEditorView = this.mCutoutView;
            if (cutoutEditorView != null) {
                cutoutEditorView.q0(true);
            }
            uq.n(this, "PV", "EditPage");
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    @j(threadMode = ThreadMode.MAIN)
    public void onEvent(Object obj) {
        if (obj instanceof com.camerasideas.collagemaker.message.b) {
            ((mo) this.b).n(this);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        f.k.k();
        l.f.g();
        h.g.j(inshot.collage.adconfig.i.ResultPage);
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        Uri uri = this.e;
        if (uri != null) {
            if (!bm.e(rq.h(this, uri))) {
                ((mo) this.b).n(this);
            } else if (b.g(this)) {
                f.k.l(this.mBannerAdLayout);
                l lVar = l.f;
                lVar.h(inshot.collage.adconfig.j.ResultPage);
                lVar.h(inshot.collage.adconfig.j.Picker);
                h.g.l(inshot.collage.adconfig.i.ResultPage);
            }
        }
    }

    /* Return type fixed from 'yn' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public mo p() {
        return new mo();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public int q() {
        return R.layout.a3;
    }

    public void s(com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar) {
        com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar2 = null;
        try {
            bVar2 = bVar.clone();
        } catch (CloneNotSupportedException e2) {
            e2.printStackTrace();
        }
        if (bVar2 != null) {
            i.k().a(bVar2);
            i.k().r(bVar2);
            E(bVar2);
        }
    }

    public void t(com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar) {
        i.k().e(bVar);
        uq.t(this.mSortItemLayout, false);
        C();
    }

    public void u() {
        uq.s(this.mMaskView, 8);
    }

    public boolean v() {
        return uq.g(this.mProgressView);
    }

    public /* synthetic */ void w(ud0 ud0) {
        boolean t0 = this.mCutoutView.t0(this.e);
        this.mCutoutView.m0(0);
        ud0.c(Boolean.valueOf(t0));
        ud0.a();
    }

    public void x() {
        ViewGroup.LayoutParams layoutParams = this.mCutoutView.getLayoutParams();
        layoutParams.width = this.f.width();
        layoutParams.height = this.f.height();
        this.mCutoutView.setLayoutParams(layoutParams);
        this.mCutoutView.y0(this.f.width());
        this.mCutoutView.x0(this.f.height());
        new ve0(new s(this)).e(nf0.b()).a(yd0.a()).b(q.a, new v(this), new r(this), oe0.a());
    }

    public void y(boolean z, boolean z2) {
        int i = 8;
        uq.s(this.mImgAlignLineV, z ? 8 : 0);
        ImageView imageView = this.mImgAlignLineH;
        if (!z2) {
            i = 0;
        }
        uq.s(imageView, i);
    }

    public void z(View view, com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar) {
        i.k().d();
        C();
        uq.t(this.mSortItemLayout, false);
    }
}
