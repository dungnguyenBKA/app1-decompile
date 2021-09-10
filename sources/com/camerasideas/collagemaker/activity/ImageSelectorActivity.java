package com.camerasideas.collagemaker.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.b;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.camerasideas.baseutils.widget.AnimCircleView;
import com.camerasideas.collagemaker.activity.adapter.l;
import com.camerasideas.collagemaker.activity.adapter.m;
import com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import inshot.collage.adconfig.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ImageSelectorActivity extends BaseMvpActivity<uo, qo> implements uo, rm, View.OnClickListener, l.a {
    private Uri e;
    private l f;
    private boolean g;
    @BindView
    AppCompatImageView mBtnBack;
    @BindView
    LinearLayout mBtnChooseFolder;
    @BindView
    AppCompatImageView mBtnClear;
    @BindView
    FrameLayout mBtnNext;
    @BindView
    TextView mBtnSelectedFolder;
    @BindView
    TextView mBtnSelectedHint;
    @BindView
    GalleryMultiSelectGroupView mGalleryView;
    @BindView
    GridView mGridView;
    @BindView
    LinearLayout mMultipleView;
    @BindView
    RecyclerView mSelectedRecyclerView;
    @BindView
    AppCompatImageView mSignMoreLessView;
    @BindView
    TextView mTvNext;
    @BindView
    TextView mTvSelectedCount;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ AnimCircleView b;

        a(ImageSelectorActivity imageSelectorActivity, AnimCircleView animCircleView) {
            this.b = animCircleView;
        }

        public void run() {
            this.b.startAnimator();
        }
    }

    @Override // defpackage.uo
    public void a(int i) {
        TextView textView = this.mTvSelectedCount;
        String str = "(" + i + ")";
        if (textView != null && !TextUtils.isEmpty(str)) {
            textView.setText(str);
        }
        uq.t(this.mBtnClear, i > 0);
    }

    @Override // defpackage.uo
    public void d(int i) {
        this.mSelectedRecyclerView.scrollToPosition(i);
    }

    public void finish() {
        GalleryMultiSelectGroupView galleryMultiSelectGroupView;
        if (!isFinishing() && (galleryMultiSelectGroupView = this.mGalleryView) != null) {
            this.g = true;
            galleryMultiSelectGroupView.w();
        }
        super.finish();
    }

    @Override // defpackage.uo
    public int g() {
        GalleryMultiSelectGroupView galleryMultiSelectGroupView = this.mGalleryView;
        if (galleryMultiSelectGroupView != null) {
            return galleryMultiSelectGroupView.v();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseActivity
    public String getTAG() {
        return "ImageSelectorActivity";
    }

    @Override // defpackage.uo
    public void i(List<MediaFileInfo> list) {
        this.mGalleryView.C(list);
    }

    @Override // defpackage.uo
    public void j(MediaFileInfo mediaFileInfo) {
        GalleryMultiSelectGroupView galleryMultiSelectGroupView;
        if (!isFinishing() && (galleryMultiSelectGroupView = this.mGalleryView) != null) {
            ArrayList<MediaFileInfo> u = galleryMultiSelectGroupView.u();
            if (u.size() < 18 && mediaFileInfo != null) {
                Iterator<MediaFileInfo> it = u.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaFileInfo next = it.next();
                    if (next.equals(mediaFileInfo)) {
                        next.r(next.g() + 1);
                        break;
                    }
                }
                u.add(mediaFileInfo);
                Context b = CollageMakerApplication.b();
                Uri e2 = mediaFileInfo.e();
                if (e2 != null) {
                    cm.r(b, cm.f(e2));
                }
                this.mGalleryView.h(mediaFileInfo);
                f.g(this).edit().putString("RecentPhotoFolder", "/Recent").apply();
                this.mGalleryView.C(u);
                ((qo) this.b).p(this.f, this.mGalleryView.u(), -1, true);
                this.mGalleryView.k();
            }
        }
    }

    @Override // defpackage.uo
    public void k(boolean z) {
        uq.t(this.mBtnNext, z);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onActivityResult(int i, int i2, Intent intent) {
        im.b("ImageGrid:onActivityResult:" + i + ",resultCode=" + i2);
        ((qo) this.b).o(this, i, i2, intent, this.e, false);
        this.e = null;
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity
    public void onBackPressed() {
        im.b("ImageSelector:KeyDown");
        if (!isFinishing()) {
            if (this.mGalleryView.i()) {
                this.mGalleryView.f();
                this.mSignMoreLessView.setImageResource(R.drawable.f5);
            } else if (this.mAppExitUtils.a(this, true)) {
                e.e(0);
                em.h("ImageSelectorActivity", "ImageSelector onBackPressed exit");
            } else {
                super.onBackPressed();
            }
        }
    }

    public void onClick(View view) {
        if (this.mGalleryView != null) {
            switch (view.getId()) {
                case R.id.dc /*{ENCODED_INT: 2131230870}*/:
                    this.mAppExitUtils.c(this, true);
                    return;
                case R.id.dj /*{ENCODED_INT: 2131230877}*/:
                case R.id.fd /*{ENCODED_INT: 2131230945}*/:
                    this.mGalleryView.p();
                    f.g(this).edit().putBoolean("enabledShowSelectorAnimCircle", false).apply();
                    f.g(this).edit().putInt("ShowSelectorAnimCircleVersion", c2.i(this)).apply();
                    z(false);
                    return;
                case R.id.dk /*{ENCODED_INT: 2131230878}*/:
                    if (this.mGalleryView != null) {
                        a(0);
                        this.mGalleryView.s();
                        this.f.A(null);
                        this.f.f();
                        uq.t(this.mBtnNext, false);
                        return;
                    }
                    return;
                case R.id.e4 /*{ENCODED_INT: 2131230898}*/:
                    this.mGalleryView.D(true);
                    if (!((qo) this.b).m(this, this.mGalleryView.u(), e.a())) {
                        this.mGalleryView.D(false);
                        this.mGalleryView.s();
                        ((qo) this.b).p(this.f, null, 0, false);
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
        Typeface a2;
        super.onCreate(bundle);
        em.h("ImageSelectorActivity", "ImageSelectorActivity=" + this);
        i.k().c();
        if (bundle != null && bundle.containsKey("GlobalMode")) {
            e.e(bundle.getInt("GlobalMode", 1));
        }
        getIntent();
        uq.t(this.mMultipleView, !e.c() && !e.b());
        uq.t(this.mSignMoreLessView, false);
        uq.p(this, this.mBtnSelectedFolder);
        uq.p(this, this.mBtnSelectedHint);
        TextView textView = this.mTvNext;
        if (!(textView == null || (a2 = uq.a(this)) == null)) {
            textView.setTypeface(a2);
        }
        TextView textView2 = this.mBtnSelectedHint;
        if (textView2 != null) {
            textView2.setText(getString(R.string.h9, new Object[]{String.valueOf(18)}));
        }
        this.mGalleryView.B(18);
        uq.w(this.mBtnSelectedHint, this);
        uq.p(this, this.mTvSelectedCount);
        this.mBtnSelectedHint.setTextDirection(5);
        AnimCircleView animCircleView = (AnimCircleView) findViewById(R.id.fd);
        if (animCircleView != null) {
            animCircleView.setOnClickListener(this);
        }
        AppCompatImageView appCompatImageView = this.mBtnClear;
        if (appCompatImageView != null) {
            appCompatImageView.setOnClickListener(this);
        }
        AppCompatImageView appCompatImageView2 = this.mBtnBack;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setOnClickListener(this);
        }
        FrameLayout frameLayout = this.mBtnNext;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(this);
        }
        LinearLayout linearLayout = this.mBtnChooseFolder;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(this);
        }
        this.mGridView.setPadding(0, 0, 0, (e.c() || e.b()) ? 0 : c2.b(this, 150.0f));
        this.f = new l(this, this.mGalleryView.e(), this);
        this.mSelectedRecyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        this.mSelectedRecyclerView.setAdapter(this.f);
        this.mSelectedRecyclerView.addItemDecoration(new m());
        this.mGalleryView.o(this);
        this.mGalleryView.A((e.c() || e.b()) ? 0 : c2.b(this, 150.0f));
        if (e.d()) {
            this.mGalleryView.n(2);
            this.mGalleryView.m(true);
        } else {
            this.mGalleryView.n(0);
            this.mGalleryView.m(false);
        }
        List<MediaFileInfo> r = ((qo) this.b).r(this, this.mGalleryView, bundle);
        em.h("ImageSelectorActivity", "restorePaths=" + r);
        ((qo) this.b).p(this.f, r, -1, true);
        if (bundle == null && b.g(this) && inshot.collage.adconfig.l.f.i(this, j.Picker)) {
            uq.o(this, "选图页展示全屏成功");
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onDestroy() {
        super.onDestroy();
        GalleryMultiSelectGroupView galleryMultiSelectGroupView = this.mGalleryView;
        if (galleryMultiSelectGroupView != null && !this.g) {
            galleryMultiSelectGroupView.w();
            this.mGalleryView = null;
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onPause() {
        super.onPause();
        GalleryMultiSelectGroupView galleryMultiSelectGroupView = this.mGalleryView;
        if (galleryMultiSelectGroupView != null) {
            galleryMultiSelectGroupView.x();
        }
        inshot.collage.adconfig.l.f.g();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.e = com.camerasideas.collagemaker.appdata.a.f(bundle);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onResume() {
        super.onResume();
        this.mGalleryView.k();
        ArrayList<MediaFileInfo> u = this.mGalleryView.u();
        int size = u.size();
        rq.a(u);
        if (size != u.size()) {
            this.mGalleryView.C(u);
            if (this.f.z() != null) {
                this.f.z().clear();
            }
            ((qo) this.b).p(this.f, u, -1, true);
        }
        this.f.f();
        if (b.g(this)) {
            inshot.collage.adconfig.l.f.h(j.Picker);
        }
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseMvpActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ArrayList<MediaFileInfo> u = this.mGalleryView.u();
        if (u.size() == 0) {
            em.h("AppBaseBundle", "filePaths == null || filePaths.size() == 0");
        } else {
            bundle.putParcelableArrayList("KEY_FILE_PATHS", u);
        }
        Uri uri = this.e;
        bundle.putString("IMAGE_PATH_FROM_CAMERA", uri != null ? uri.toString() : "");
        bundle.putInt("GlobalMode", e.a());
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, com.camerasideas.collagemaker.activity.BaseActivity
    public void onStart() {
        super.onStart();
        uq.n(this, "PV", "SelectPage");
    }

    /* Return type fixed from 'yn' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public qo p() {
        return new qo();
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.BaseMvpActivity
    public int q() {
        return R.layout.a5;
    }

    public void s(MediaFileInfo mediaFileInfo, int i) {
        em.h("ImageSelectorActivity", "deleteSelectedImage, position=" + i + ", path=" + mediaFileInfo);
        this.mGalleryView.z(mediaFileInfo, i);
        ((qo) this.b).p(this.f, this.mGalleryView.u(), i, false);
    }

    public void t(boolean z) {
        AppCompatImageView appCompatImageView = this.mSignMoreLessView;
        int i = z ? R.drawable.f6 : R.drawable.f5;
        if (appCompatImageView != null) {
            appCompatImageView.setImageResource(i);
        }
    }

    public void u(ArrayList<MediaFileInfo> arrayList, MediaFileInfo mediaFileInfo) {
        ((qo) this.b).p(this.f, arrayList, -1, true);
    }

    public void v(ArrayList<MediaFileInfo> arrayList, MediaFileInfo mediaFileInfo) {
        ((qo) this.b).q(this.f, arrayList, mediaFileInfo);
    }

    public void w(String str) {
        if (!TextUtils.isEmpty(str)) {
            boolean z = true;
            if (f.g(this).getBoolean("enabledShowSelectorAnimCircle", true)) {
                z(true);
            }
            if (str.equalsIgnoreCase("/Google Photos")) {
                qo qoVar = (qo) this.b;
                int v = this.mGalleryView.v();
                if (e.c() || e.b()) {
                    z = false;
                }
                qoVar.n(this, v, z);
                return;
            }
            String i = cm.i(str);
            if (i.equalsIgnoreCase("Recent")) {
                i = getString(R.string.g7);
            }
            this.mBtnSelectedFolder.setText(i);
            uq.t(this.mSignMoreLessView, true);
        }
    }

    public void x(MediaFileInfo mediaFileInfo) {
        this.mGalleryView.D(true);
        ((qo) this.b).l(this, mediaFileInfo, e.a());
    }

    public void y(int i) {
        Uri uri;
        Exception e2;
        Uri uri2;
        Uri uri3;
        em.h("ImageSelectorActivity", "onStartUpCamera:" + i);
        this.mGalleryView.v();
        Objects.requireNonNull((qo) this.b);
        Uri uri4 = null;
        im.b("CameraUtils:takePhoto-Activity");
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            try {
                if (rq.l()) {
                    uri2 = ar.a(this);
                    uri = uri2;
                } else {
                    File d = rq.d(this, ".jpg");
                    if (Build.VERSION.SDK_INT > 23) {
                        uri3 = FileProvider.b(this, rq.j() + ".fileprovider", d);
                    } else {
                        uri3 = Uri.fromFile(d);
                    }
                    uri = Uri.fromFile(d);
                    uri2 = uri3;
                }
                if (uri2 != null) {
                    try {
                        intent.putExtra("output", uri2);
                        intent.setFlags(536870912);
                        intent.putExtra("android.intent.extra.videoQuality", 1);
                        startActivityForResult(intent, 4);
                    } catch (Exception e3) {
                        e2 = e3;
                    }
                }
            } catch (Exception e4) {
                uri = null;
                e2 = e4;
                em.i("CameraUtils", "take photo create file failed!", e2);
                e2.printStackTrace();
                uri4 = uri;
                this.e = uri4;
            }
            uri4 = uri;
        }
        this.e = uri4;
    }

    /* access modifiers changed from: protected */
    public void z(boolean z) {
        AnimCircleView animCircleView = (AnimCircleView) findViewById(R.id.fd);
        uq.t(animCircleView, z);
        if (animCircleView != null && z) {
            animCircleView.postDelayed(new a(this, animCircleView), 200);
        }
    }
}
