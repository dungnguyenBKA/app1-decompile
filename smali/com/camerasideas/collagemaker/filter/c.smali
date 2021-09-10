.class public Lcom/camerasideas/collagemaker/filter/c;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/filter/c$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "GPUTest"

    const-string v0, "setEGLContextClientVersion"

    .line 2
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const-string v0, "setConfig"

    .line 4
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Lcom/camerasideas/collagemaker/filter/b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/filter/b;-><init>(Lcom/camerasideas/collagemaker/filter/c;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    const-string v0, "setFormat"

    .line 6
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const-string v0, "setRenderer"

    .line 8
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Lcom/camerasideas/collagemaker/filter/c$a;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/filter/c$a;-><init>(Lcom/camerasideas/collagemaker/filter/c;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const-string v0, "setRenderer end"

    .line 10
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/filter/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/filter/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/filter/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/filter/c;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/c;->d:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/filter/c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Handler;I)V
    .locals 2

    const-string v0, "GPUTest"

    const-string v1, "test"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/filter/c;->c:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/filter/c;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
