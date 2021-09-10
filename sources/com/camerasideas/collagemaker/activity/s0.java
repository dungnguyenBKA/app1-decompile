package com.camerasideas.collagemaker.activity;

import android.content.DialogInterface;
import inshot.collage.adconfig.d;
import java.util.Objects;

public final /* synthetic */ class s0 implements DialogInterface.OnMultiChoiceClickListener {
    public final /* synthetic */ SettingActivity a;
    public final /* synthetic */ String[] b;

    public /* synthetic */ s0(SettingActivity settingActivity, String[] strArr) {
        this.a = settingActivity;
        this.b = strArr;
    }

    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        SettingActivity settingActivity = this.a;
        String[] strArr = this.b;
        Objects.requireNonNull(settingActivity);
        d.g(settingActivity, strArr[i], z);
    }
}
