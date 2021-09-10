package com.camerasideas.collagemaker.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.adapter.k;
import com.camerasideas.collagemaker.activity.adapter.p;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.CustomRatioFragment;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.filter.ISCropFilter;
import com.camerasideas.collagemaker.photoproc.crop.CropEditorView;
import java.lang.ref.WeakReference;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCropActivity extends BaseActivity implements CropEditorView.e, p.b, CustomRatioFragment.b {
    public static final /* synthetic */ int o = 0;
    private p b;
    private LinearLayoutManager c;
    private String d;
    private float e;
    Uri f = null;
    String g;
    private Bitmap h;
    private boolean i = false;
    private Matrix j;
    private float k;
    private boolean l;
    private tq m;
    @BindView
    CropEditorView mCropView;
    @BindView
    View mProgressViewLayout;
    @BindView
    RecyclerView mRatioRecyclerView;
    b n = new b(this);

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        private Runnable b;
        private Handler c;

        public a(Runnable runnable, Handler handler) {
            this.b = runnable;
            this.c = handler;
        }

        public void run() {
            try {
                this.b.run();
            } finally {
                this.c.post(new h(this));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends Handler {
        protected WeakReference<Activity> a;

        b(ImageCropActivity imageCropActivity) {
            this.a = new WeakReference<>(imageCropActivity);
        }

        public void handleMessage(Message message) {
            if (this.a.get() != null && !this.a.get().isFinishing()) {
                int i = message.what;
                if (i == 8192) {
                    mr.d(ImageCropActivity.this.getString(R.string.h7));
                } else if (i == 8193) {
                    mr.d(ImageCropActivity.this.getString(R.string.ca));
                } else if (i == 8195) {
                    mr.d(ImageCropActivity.this.getString(R.string.h6));
                }
            }
        }
    }

    private void o(float f2, float f3) {
        this.mCropView.C(f2, f3, false);
        if (f2 == 0.0f) {
            int i2 = (f3 > 0.0f ? 1 : (f3 == 0.0f ? 0 : -1));
        }
    }

    private Bitmap p(int i2) {
        Bitmap bitmap;
        try {
            if (this.l) {
                if (this.m == null) {
                    this.m = new tq();
                }
                bitmap = this.m.b(this, i2, i2, this.g, 1);
            } else {
                bitmap = wq.r(this, i2, i2, this.f);
            }
            if (bitmap == null) {
                return null;
            }
            em.h("ImageCropActivity", "doFilterWithOriginal::min length = " + i2 + ", width * height = " + bitmap.getWidth() + " * " + bitmap.getHeight());
            float[] floatArrayExtra = getIntent().getFloatArrayExtra("CROP_MATRIX");
            if (floatArrayExtra == null || floatArrayExtra.length != 9) {
                return bitmap;
            }
            Matrix matrix = new Matrix();
            this.j = matrix;
            matrix.setValues(floatArrayExtra);
            return wq.f(bitmap, this.j, i2, i2);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private void t() {
        im.b("ImageEdit:Crop:cancel");
        finish();
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.CustomRatioFragment.b
    public void e(float f2, float f3) {
        this.d = getString(R.string.bg);
        o(f2, f3);
        this.b.D(this.d);
    }

    @Override // com.camerasideas.collagemaker.activity.adapter.p.b
    public void f(String str, int i2, int i3) {
        this.d = str;
        if (i2 == 0 && i3 == -1) {
            CustomRatioFragment customRatioFragment = (CustomRatioFragment) ((sm) Fragment.Y(this, CustomRatioFragment.class.getName(), null));
            customRatioFragment.x1(getSupportFragmentManager());
            customRatioFragment.B1(this);
        } else if (i2 == -1 && i3 == 0) {
            o((float) androidx.core.app.b.V(this), (float) (yl.a(this) + f.c(this) + androidx.core.app.b.U(this)));
        } else if (i2 == 0 && i3 == 0) {
            o(this.e, 1.0f);
        } else if (i2 == -1 && i3 == -1) {
            o(0.0f, 0.0f);
        } else {
            o((float) i2, (float) i3);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "ImageCropActivity";
    }

    @OnClick
    public void onClick(View view) {
        if (jm.a("sclick:button-click")) {
            int id = view.getId();
            if (id == R.id.da) {
                ISCropFilter E = this.mCropView.E();
                Matrix matrix = this.j;
                if (!(matrix == null || E == null)) {
                    E.u(matrix);
                }
                if (wq.o(this.h)) {
                    this.h.recycle();
                    this.h = null;
                }
                Intent intent = new Intent();
                intent.putExtra("CROP_FILTER", E);
                intent.putExtra("CROP_RATIO_NAME", this.d);
                setResult(-1, intent);
                finish();
                em.h("TesterLog-Crop", "点击应用Crop按钮");
            } else if (id == R.id.df) {
                t();
                em.h("TesterLog-Crop", "点击取消Crop按钮");
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.b_);
        int i2 = ButterKnife.b;
        ButterKnife.a(this, getWindow().getDecorView());
        this.mCropView.setDrawingCacheEnabled(true);
        this.mCropView.L(this);
        this.l = getIntent().getBooleanExtra("CROP_ENCRYPTED", false);
        this.k = getIntent().getFloatExtra("CROP_RATIO", 1.0f);
        this.e = getIntent().getFloatExtra("CROP_ORIGINAL_RATIO", this.k);
        this.g = getIntent().getStringExtra("ORG_FILE_PATH");
        this.d = getIntent().getStringExtra("CROP_RATIO_NAME");
        String str = this.g;
        if (str != null) {
            Uri parse = Uri.parse(str);
            this.f = parse;
            try {
                grantUriPermission("photoeditor.cutout.backgrounderaser", parse, 1);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.f = cm.c(this.f);
            }
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0, false);
            this.c = linearLayoutManager;
            this.mRatioRecyclerView.setLayoutManager(linearLayoutManager);
            this.mRatioRecyclerView.addItemDecoration(new k(c2.b(this, 15.0f)));
            p pVar = new p(this, this.d, true);
            this.b = pVar;
            this.mRatioRecyclerView.setAdapter(pVar);
            this.b.C(this);
            em.n("ImageCropActivity", "onCreate, mImgPath=" + this.f);
            this.i = false;
            View view = this.mProgressViewLayout;
            if (view != null) {
                view.setVisibility(0);
            }
            new Thread(new l(this)).start();
            uq.n(this, "PV", "Crop");
            return;
        }
        finish();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        this.i = true;
        this.mCropView.Q();
        Bitmap bitmap = this.h;
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                this.h.recycle();
            }
            this.h = null;
            this.mCropView.K(null);
            this.mCropView = null;
        }
        if (!wq.o(null)) {
            View view = this.mProgressViewLayout;
            if (view != null && view.getVisibility() == 0) {
                this.mProgressViewLayout.setVisibility(8);
            }
            System.gc();
            super.onDestroy();
            return;
        }
        throw null;
    }

    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
    }

    public void q() {
        mr.d(getString(R.string.ep));
        t();
    }

    public void r() {
        if (wq.o(this.h)) {
            this.mCropView.K(this.h);
            this.mCropView.P();
            em.h("ImageCropActivity", "Crop: load bitmap success");
            if (TextUtils.equals(this.d, getString(R.string.i4))) {
                o(0.0f, 0.0f);
            } else {
                o(this.k, 1.0f);
            }
            View view = this.mProgressViewLayout;
            if (view != null && view.getVisibility() == 0) {
                this.mProgressViewLayout.setVisibility(8);
                return;
            }
            return;
        }
        em.h("ImageCropActivity", "Crop: load bitmap failed");
        mr.d(getString(R.string.ep));
        t();
    }

    public void s() {
        boolean z;
        if (!this.i) {
            if (wq.o(this.h)) {
                this.h.recycle();
                this.h = null;
            }
            int max = Math.max(c2.h(this), c2.g(this) - getResources().getDimensionPixelSize(R.dimen.p_));
            em.h("ImageCropActivity", "ImageCropActivity::initOriginal::entry");
            boolean z2 = false;
            boolean z3 = false;
            int i2 = 0;
            while (true) {
                z = true;
                if (max > 0) {
                    try {
                        Bitmap p = p(max);
                        if (p != null) {
                            this.h = p;
                            break;
                        }
                    } catch (OutOfMemoryError unused) {
                        z3 = true;
                    }
                    if (z3) {
                        i2++;
                        max /= 2;
                    }
                    if (z3) {
                        if (i2 >= 3) {
                            break;
                        }
                    } else {
                        break;
                    }
                } else {
                    z2 = true;
                    break;
                }
            }
            z2 = z3;
            em.h("ImageCropActivity", "ImageCropActivity::initOriginal::end:isOOM=" + z2 + " ,isBitmapValid:" + wq.o(this.h));
            if (wq.o(this.h)) {
                z = z2;
            }
            if (z) {
                this.n.post(new k(this));
                return;
            }
        }
        if (!this.i) {
            getResources().getString(R.string.f7);
            new Thread(new a(new i(this), this.n)).start();
        }
    }
}
