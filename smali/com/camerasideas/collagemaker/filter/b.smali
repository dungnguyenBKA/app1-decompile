.class Lcom/camerasideas/collagemaker/filter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/filter/c;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/filter/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/filter/b;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xf

    new-array v7, v1, [I

    .line 1
    fill-array-data v7, :array_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-interface {p1, p2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    const/4 v8, 0x0

    const-string v9, "GPUTest"

    if-nez v1, :cond_0

    const-string p1, "eglInitialize failed1"

    .line 3
    invoke-static {v9, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/filter/b;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/c;->d()V

    return-object v8

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v6, v0

    .line 5
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v10, 0x0

    .line 6
    aget v1, v0, v10

    if-gez v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/filter/b;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/c;->d()V

    return-object v8

    .line 8
    :cond_1
    new-array v11, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v11

    move-object v6, v0

    .line 9
    :try_start_0
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "eglInitialize failed2"

    .line 10
    invoke-static {v9, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/filter/b;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/c;->d()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :cond_2
    const-string p1, "chooseConfig succeed"

    .line 12
    invoke-static {v9, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    aget-object p1, v11, v10

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/filter/b;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/c;->d()V

    const-string p1, "eglInitialize failed3"

    .line 16
    invoke-static {v9, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :array_0
    .array-data 4
        0x3025
        0x10
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
    .end array-data
.end method
