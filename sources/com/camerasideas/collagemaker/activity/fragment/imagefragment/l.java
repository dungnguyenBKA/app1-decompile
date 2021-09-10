package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import java.io.File;
import java.io.FileFilter;

public final /* synthetic */ class l implements FileFilter {
    public static final /* synthetic */ l a = new l();

    private /* synthetic */ l() {
    }

    public final boolean accept(File file) {
        int i = ImageCutoutBgFragment.L0;
        return file.isFile() && !file.getName().endsWith(".zip");
    }
}
