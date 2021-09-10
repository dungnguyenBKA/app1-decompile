package com.camerasideas.collagemaker.activity;

import android.view.View;
import java.util.Objects;

public final /* synthetic */ class m0 implements View.OnClickListener {
    public final /* synthetic */ SettingActivity b;

    public /* synthetic */ m0(SettingActivity settingActivity) {
        this.b = settingActivity;
    }

    public final void onClick(View view) {
        SettingActivity settingActivity = this.b;
        Objects.requireNonNull(settingActivity);
        em.h("TesterLog-Setting", "点击Back按钮");
        settingActivity.return2MainActivity();
    }
}
