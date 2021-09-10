.class public Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gpuimage-library"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native YUVtoARBG([BII[I)V
.end method

.method public static native YUVtoRBGA([BII[I)V
.end method

.method public static native aesDecrypt(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;)[B
.end method

.method public static native copyBitmapData(Landroid/graphics/Bitmap;I)J
.end method

.method public static native copyBitmapDataFromGPU(IIII)J
.end method

.method public static native copyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method public static native decrypt(Landroid/content/Context;Ljava/lang/String;)[B
.end method

.method private static native getShader(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public static native releaseBitmapData(J)V
.end method

.method public static native replaceBitmapData(Landroid/graphics/Bitmap;JI)Z
.end method
