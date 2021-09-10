package com.camerasideas.collagemaker.activity;

import android.content.DialogInterface;
import com.camerasideas.collagemaker.appdata.f;
import java.util.Objects;

public final /* synthetic */ class r0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ SettingActivity b;

    public /* synthetic */ r0(SettingActivity settingActivity) {
        this.b = settingActivity;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        SettingActivity settingActivity = this.b;
        Objects.requireNonNull(settingActivity);
        f.g(settingActivity).edit().putInt("ABTestFlag", i).apply();
    }
}
