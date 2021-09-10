.class public Ljp/co/cyberagent/android/gpuimage/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/opengl/GLSurfaceView$Renderer;

.field b:I

.field c:I

.field d:Ljavax/microedition/khronos/egl/EGL10;

.field e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field f:[Ljavax/microedition/khronos/egl/EGLConfig;

.field g:Ljavax/microedition/khronos/egl/EGLConfig;

.field h:Ljavax/microedition/khronos/egl/EGLContext;

.field i:Ljavax/microedition/khronos/egl/EGLSurface;

.field j:Ljavax/microedition/khronos/opengles/GL10;

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;II)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->b:I

    .line 3
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->c:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0x3057

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    const/16 p2, 0x3056

    aput p2, v2, v0

    const/4 p2, 0x3

    aput p3, v2, p2

    const/4 p3, 0x4

    const/16 v0, 0x3038

    aput v0, v2, p3

    .line 4
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p3

    check-cast p3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    .line 5
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p3

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 6
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/16 p3, 0xf

    new-array p3, p3, [I

    .line 7
    fill-array-data p3, :array_0

    new-array v0, v3, [I

    .line 8
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p3

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 9
    aget v9, v0, v4

    .line 10
    new-array v8, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v8, p0, Ljp/co/cyberagent/android/gpuimage/i;->f:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 11
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 12
    iget-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->f:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object p3, p3, v4

    .line 13
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    new-array p2, p2, [I

    .line 14
    fill-array-data p2, :array_1

    .line 15
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, p3, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, p3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 p1, 0x3000

    .line 17
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 18
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 19
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->j:Ljavax/microedition/khronos/opengles/GL10;

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->k:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 22
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 23
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Ljp/co/cyberagent/android/gpuimage/i;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 24
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :array_0
    .array-data 4
        0x3025
        0x0
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
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/i;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 3
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/i;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 4
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    const-string v1, "PixelBuffer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "getBitmap: Renderer was not set."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getBitmap: This thread does not own the OpenGL context."

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->j:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 6
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->j:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_2
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/i;->b:I

    .line 8
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/i;->c:I

    .line 9
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    invoke-static {v2, v2, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->copyToBitmap(IILandroid/graphics/Bitmap;)V

    return-object v0
.end method
