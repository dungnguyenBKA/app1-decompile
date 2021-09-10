.class public Lcom/camerasideas/collagemaker/photoproc/editorview/NativeProc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "imgutil_core"

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

.method public static native nativeClip1Px([I[III)I
.end method

.method public static native nativeMagic([I[IIIIII)I
.end method

.method public static native nativeRemoveSpike([I[III)I
.end method

.method public static native nativeSmooth([I[III)I
.end method
