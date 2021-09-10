.class public Ljp/co/cyberagent/android/gpuimage/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/b$a;
    }
.end annotation


# instance fields
.field protected final a:Ljp/co/cyberagent/android/gpuimage/e;

.field private b:Landroid/opengl/GLSurfaceView;

.field private c:Ljp/co/cyberagent/android/gpuimage/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    .line 4
    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/c;

    const-string v0, "uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 6
    invoke-direct {p1, v0, v1}, Ljp/co/cyberagent/android/gpuimage/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    .line 8
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/e;

    invoke-direct {v0, p1}, Ljp/co/cyberagent/android/gpuimage/e;-><init>(Ljp/co/cyberagent/android/gpuimage/c;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljp/co/cyberagent/android/gpuimage/b;)Ljp/co/cyberagent/android/gpuimage/c;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/e;->n()V

    .line 4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/a;

    invoke-direct {v3, p0}, Ljp/co/cyberagent/android/gpuimage/a;-><init>(Ljp/co/cyberagent/android/gpuimage/b;)V

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    .line 5
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 9
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 11
    :cond_1
    :goto_1
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-direct {v2, v3}, Ljp/co/cyberagent/android/gpuimage/e;-><init>(Ljp/co/cyberagent/android/gpuimage/c;)V

    .line 12
    sget-object v3, Ljp/co/cyberagent/android/gpuimage/j;->b:Ljp/co/cyberagent/android/gpuimage/j;

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    .line 13
    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/e;->o()Z

    move-result v4

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/e;->p()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    .line 14
    invoke-virtual {v2, v3, v4, v5}, Ljp/co/cyberagent/android/gpuimage/e;->s(Ljp/co/cyberagent/android/gpuimage/j;ZZ)V

    .line 15
    sget-object v3, Ljp/co/cyberagent/android/gpuimage/b$a;->c:Ljp/co/cyberagent/android/gpuimage/b$a;

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/e;->t(Ljp/co/cyberagent/android/gpuimage/b$a;)V

    const/4 v3, 0x0

    .line 16
    :try_start_3
    new-instance v4, Ljp/co/cyberagent/android/gpuimage/i;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v4, v5, v0, v1}, Ljp/co/cyberagent/android/gpuimage/i;-><init>(Ljavax/microedition/khronos/egl/EGLContext;II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 17
    iput-object v2, v4, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Ljp/co/cyberagent/android/gpuimage/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PixelBuffer"

    const-string v1, "setRenderer: This thread does not own the OpenGL context."

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, v4, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, v4, Ljp/co/cyberagent/android/gpuimage/i;->j:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v5, v4, Ljp/co/cyberagent/android/gpuimage/i;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 21
    iget-object v0, v4, Ljp/co/cyberagent/android/gpuimage/i;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, v4, Ljp/co/cyberagent/android/gpuimage/i;->j:Ljavax/microedition/khronos/opengles/GL10;

    iget v5, v4, Ljp/co/cyberagent/android/gpuimage/i;->b:I

    iget v7, v4, Ljp/co/cyberagent/android/gpuimage/i;->c:I

    invoke-interface {v0, v1, v5, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 22
    :goto_2
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/g;

    invoke-direct {v0, v2, p1, v6}, Ljp/co/cyberagent/android/gpuimage/g;-><init>(Ljp/co/cyberagent/android/gpuimage/e;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v0}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    .line 23
    :try_start_4
    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/i;->b()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    .line 25
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/e;->n()V

    .line 26
    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/i;->a()V

    .line 27
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 28
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    .line 29
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/f;

    invoke-direct {v1, p1, v0}, Ljp/co/cyberagent/android/gpuimage/f;-><init>(Ljp/co/cyberagent/android/gpuimage/e;Ljp/co/cyberagent/android/gpuimage/c;)V

    invoke-virtual {p1, v1}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    .line 30
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    const-string v0, "GPUImage"

    const-string v1, "B:getBitmapWithFilterApplied::Error"

    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "GPUImage"

    const-string v1, "A:getBitmapWithFilterApplied::OutOfMemoryError"

    .line 33
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 34
    :goto_3
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    .line 35
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/e;->n()V

    .line 36
    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/i;->a()V

    .line 37
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 38
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    .line 39
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/e;->n()V

    .line 40
    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/i;->a()V

    .line 41
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 42
    throw p1

    :catch_2
    :cond_3
    :goto_4
    return-object v3
.end method

.method public c(Ljp/co/cyberagent/android/gpuimage/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->c:Ljp/co/cyberagent/android/gpuimage/c;

    .line 2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    .line 3
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/f;

    invoke-direct {v1, v0, p1}, Ljp/co/cyberagent/android/gpuimage/f;-><init>(Ljp/co/cyberagent/android/gpuimage/e;Ljp/co/cyberagent/android/gpuimage/c;)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Landroid/opengl/GLSurfaceView;)V
    .locals 8

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 3
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 4
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 5
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/b;->a:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 6
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/b;->b:Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method
