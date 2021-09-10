package com.camerasideas.collagemaker.activity;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.m;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.c;
import com.camerasideas.collagemaker.activity.adapter.n;
import com.camerasideas.collagemaker.activity.adapter.r;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.WelcomeSubFragment;
import com.camerasideas.collagemaker.activity.widget.CircularProgressView;
import com.camerasideas.collagemaker.appdata.f;
import defpackage.dm;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import photoeditor.cutout.backgrounderaser.R;

public class CutoutResultActivity extends BaseResultActivity implements to, dm.d {
    private String f;
    private boolean g = false;
    private boolean h = false;
    private n i;
    private boolean j;
    @BindView
    AppCompatImageView mBtnHome;
    @BindView
    AppCompatImageView mImagePreview;
    @BindView
    FrameLayout mImagePreviewLayout;
    @BindView
    ImageView mImageThumbnail;
    @BindView
    ProgressBar mPreViewProgressbar;
    @BindView
    LinearLayout mPreviewLayout;
    @BindView
    TextView mSaveCompleteTV;
    @BindView
    LinearLayout mSaveHintLayout;
    @BindView
    CircularProgressView mSaveProgressBar;
    @BindView
    TextView mSaveText;
    @BindView
    RecyclerView mShareRecyclerView;

    /* access modifiers changed from: package-private */
    public class a implements bk<Drawable> {
        a() {
        }

        @Override // defpackage.bk
        public boolean a(ce ceVar, Object obj, nk<Drawable> nkVar, boolean z) {
            return false;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object, nk, com.bumptech.glide.load.a, boolean] */
        @Override // defpackage.bk
        public boolean b(Drawable drawable, Object obj, nk<Drawable> nkVar, com.bumptech.glide.load.a aVar, boolean z) {
            CutoutResultActivity cutoutResultActivity = CutoutResultActivity.this;
            if (cutoutResultActivity.mImageThumbnail != null) {
                uq.s(cutoutResultActivity.mPreViewProgressbar, 8);
                uq.s(CutoutResultActivity.this.mImagePreview, 0);
                ViewGroup.LayoutParams layoutParams = CutoutResultActivity.this.mImageThumbnail.getLayoutParams();
                int v = b.v(CutoutResultActivity.this, 70.0f);
                layoutParams.width = v;
                layoutParams.height = v;
                CutoutResultActivity.this.mImageThumbnail.setLayoutParams(layoutParams);
                Bitmap j = wq.j(CutoutResultActivity.this.mImageThumbnail.getContext(), R.drawable.c9, v, v);
                if (CutoutResultActivity.this.j && wq.o(j)) {
                    CutoutResultActivity.this.mImageThumbnail.setBackground(new BitmapDrawable(CutoutResultActivity.this.mImageThumbnail.getResources(), j));
                }
            }
            return false;
        }
    }

    private void u() {
        if (!isFinishing() && !isDestroyed()) {
            ((w0) c.s(this)).u(this.f).p0().q0(new a()).e0(this.mImageThumbnail);
        }
    }

    @Override // com.camerasideas.collagemaker.activity.BaseResultActivity, defpackage.to
    public void b() {
        this.g = true;
        uq.s(this.mBtnHome, 0);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "ImageResultActivity";
    }

    @Override // defpackage.dm.d
    public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i2, View view) {
        ((po) this.b).n(this, b0Var, this.f);
    }

    @Override // androidx.activity.ComponentActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onBackPressed() {
        WelcomeSubFragment welcomeSubFragment = (WelcomeSubFragment) b.K(this, WelcomeSubFragment.class);
        if (welcomeSubFragment == null || !welcomeSubFragment.c0()) {
            super.onBackPressed();
        } else {
            welcomeSubFragment.o1();
        }
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.dc) {
            em.h("TesterLog-Result Page", "点击返回按钮");
            finish();
        } else if (id == R.id.dw) {
            em.h("TesterLog-Result Page", "点击Home按钮");
            return2MainActivity();
        } else if (id == R.id.oa) {
            em.h("TesterLog-Result Page", "点击预览按钮");
            uq.n(this, "Click_Result", "Preview");
            String str = this.f;
            boolean z = this.j;
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(str);
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                if (!bm.e(it.next())) {
                    it.remove();
                }
            }
            StringBuilder q = ic.q("checkImagePaths size:");
            q.append(arrayList.size());
            em.h("PathUtils", q.toString());
            if (arrayList.isEmpty()) {
                mr.d(getString(R.string.ep));
                return;
            }
            View findViewById = findViewById(R.id.o_);
            int i2 = -1;
            int width = findViewById != null ? findViewById.getWidth() : -1;
            if (findViewById != null) {
                i2 = findViewById.getHeight();
            }
            try {
                if (!(b.K(this, com.camerasideas.collagemaker.activity.fragment.commonfragment.n.class) != null)) {
                    zl zlVar = new zl();
                    zlVar.c("Key.Preview.Max.Width", width);
                    zlVar.c("Key.Preview.Max.Height", i2);
                    zlVar.b("isPng", z);
                    zlVar.d("Key.Image.Preview.Path", arrayList);
                    Fragment Y = Fragment.Y(this, com.camerasideas.collagemaker.activity.fragment.commonfragment.n.class.getName(), zlVar.a());
                    m a2 = getSupportFragmentManager().a();
                    a2.k(R.id.hm, Y, com.camerasideas.collagemaker.activity.fragment.commonfragment.n.class.getName());
                    a2.e(null);
                    a2.g();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.c) {
            String string = bundle != null ? bundle.getString("mSavedImagePath") : null;
            this.f = string;
            boolean z = string == null;
            this.mShareRecyclerView.setLayoutManager(new LinearLayoutManager(0, false));
            this.i = new n(this);
            dm.d(this.mShareRecyclerView).e(this);
            this.mShareRecyclerView.setAdapter(this.i);
            this.mShareRecyclerView.addItemDecoration(new r());
            uq.w(this.mSaveText, this);
            this.mSaveProgressBar.h(true);
            uq.t(this.mSaveCompleteTV, z);
            boolean z2 = !z;
            uq.t(this.mPreviewLayout, z2);
            uq.t(this.mSaveHintLayout, z);
            this.i.z(z2);
            this.mBtnHome.setEnabled(z2);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onDestroy() {
        super.onDestroy();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onEvent(com.camerasideas.collagemaker.message.c cVar) {
        boolean z;
        int c = cVar.c();
        String b = cVar.b();
        boolean d = cVar.d();
        this.mBtnHome.setEnabled(true);
        this.f = "";
        if (c != 0) {
            if (c == 261) {
                em.h("TesterLog-Save", "保存图片弹出ReportErr对话框，错误提示：保存图片发生OOM");
                b.H0(this, getString(R.string.en), c, null);
            } else if (c == 256) {
                em.h("TesterLog-Save", "保存图片弹出ReportErr对话框，错误提示：保存图片SD卡没有挂载");
                b.G0(this, getString(R.string.h6), c);
            } else if (c != 257) {
                em.h("TesterLog-Save", "保存图片弹出ReportErr对话框，错误提示：保存图片失败！");
                b.H0(this, getString(R.string.h1), c, null);
            } else {
                em.h("TesterLog-Save", "保存图片弹出ReportErr对话框，错误提示：保存图片SD卡没有充分空间");
                b.G0(this, getString(R.string.h7), c);
            }
            z = false;
        } else {
            this.j = d;
            f.m(this, f.f(this) + 1);
            if (!this.h) {
                ((po) this.b).q(false, this);
                this.h = true;
            }
            this.f = b;
            u();
            uq.t(this.mPreviewLayout, true);
            uq.t(this.mSaveHintLayout, false);
            this.mSaveProgressBar.i();
            this.i.z(true);
            cm.r(this, b);
            em.h("TesterLog-Save", "图片保存成功");
            z = true;
        }
        if (z) {
            uq.n(this, "SaveSuccess", "Yes");
        } else {
            uq.n(this, "SaveSuccess", "No");
        }
        if (b != null && (b.endsWith(".png") || d)) {
            int i2 = f.g(this).getInt("PngSaveCount", 0);
            if (i2 < 3) {
                mr.d(getString(R.string.h3));
            }
            f.g(this).edit().putInt("PngSaveCount", i2 + 1).apply();
        }
        this.g = true;
        uq.s(this.mBtnHome, 0);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.h = com.camerasideas.collagemaker.appdata.a.d(bundle);
        this.g = com.camerasideas.collagemaker.appdata.a.b(bundle);
        this.f = bundle != null ? bundle.getString("mSavedImagePath") : null;
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onResume() {
        super.onResume();
        if (this.mBtnHome.isEnabled()) {
            u();
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseResultActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("KEY_HAS_POPUP_RATE", this.h);
        bundle.putBoolean("KEY_ENABLED_SHOW_BTN_HOME", this.g);
        bundle.putString("mSavedImagePath", this.f);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onStart() {
        super.onStart();
        uq.n(this, "PV", "ResultPage");
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public int q() {
        return R.layout.a4;
    }
}
