package com.camerasideas.collagemaker.activity.adapter;

import java.io.File;
import java.io.FileFilter;

public final /* synthetic */ class a implements FileFilter {
    public static final /* synthetic */ a a = new a();

    private /* synthetic */ a() {
    }

    public final boolean accept(File file) {
        return file.isFile() && file.getName().endsWith(".svg");
    }
}
