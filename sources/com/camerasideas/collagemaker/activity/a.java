package com.camerasideas.collagemaker.activity;

import com.camerasideas.collagemaker.appdata.f;
import java.util.Objects;

public final /* synthetic */ class a implements cb0 {
    public final /* synthetic */ BaseActivity a;

    public /* synthetic */ a(BaseActivity baseActivity) {
        this.a = baseActivity;
    }

    @Override // defpackage.cb0
    public final void a(xa0 xa0) {
        BaseActivity baseActivity = this.a;
        Objects.requireNonNull(baseActivity);
        if (!xa0.c() || xa0.b() <= 0) {
            f.g(baseActivity).edit().putInt("NotchHeight", 0).apply();
            return;
        }
        baseActivity.onNotchReady(xa0.b());
        f.g(baseActivity).edit().putInt("NotchHeight", xa0.b()).apply();
    }
}
