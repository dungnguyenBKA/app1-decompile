package jp.co.cyberagent.android.gpuimage;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;

public class GPUImageNativeLibrary {
    static {
        System.loadLibrary("gpuimage-library");
    }

    public static native void YUVtoARBG(byte[] bArr, int i, int i2, int[] iArr);

    public static native void YUVtoRBGA(byte[] bArr, int i, int i2, int[] iArr);

    public static native byte[] aesDecrypt(Context context, AssetManager assetManager, String str);

    public static native long copyBitmapData(Bitmap bitmap, int i);

    public static native long copyBitmapDataFromGPU(int i, int i2, int i3, int i4);

    public static native void copyToBitmap(int i, int i2, Bitmap bitmap);

    public static native byte[] decrypt(Context context, String str);

    private static native String getShader(Context context, int i);

    public static native void releaseBitmapData(long j);

    public static native boolean replaceBitmapData(Bitmap bitmap, long j, int i);
}
