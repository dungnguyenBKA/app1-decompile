package com.camerasideas.collagemaker.photoproc.editorview;

public class NativeProc {
    static {
        System.loadLibrary("imgutil_core");
    }

    public static native int nativeClip1Px(int[] iArr, int[] iArr2, int i, int i2);

    public static native int nativeMagic(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, int i5);

    public static native int nativeRemoveSpike(int[] iArr, int[] iArr2, int i, int i2);

    public static native int nativeSmooth(int[] iArr, int[] iArr2, int i, int i2);
}
