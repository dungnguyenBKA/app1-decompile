package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.io.File;
import java.io.FileFilter;

public final /* synthetic */ class h implements FileFilter {
    public static final /* synthetic */ h a = new h();

    private /* synthetic */ h() {
    }

    public final boolean accept(File file) {
        int i = ImageCutoutBgFragment.L0;
        return file.isFile() && !file.getName().endsWith(".zip");
    }
}
