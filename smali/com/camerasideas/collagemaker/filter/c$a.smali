.class public Lcom/camerasideas/collagemaker/filter/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/filter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/filter/c;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/filter/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/filter/c$a;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/filter/c$a;->a:Lcom/camerasideas/collagemaker/filter/c;

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/camerasideas/collagemaker/filter/c;->b(Lcom/camerasideas/collagemaker/filter/c;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "onSurfaceCreated:GPUModel:"

    .line 2
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/filter/c$a;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/filter/c;->a(Lcom/camerasideas/collagemaker/filter/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPUTest"

    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/filter/c$a;->a:Lcom/camerasideas/collagemaker/filter/c;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/filter/c;->d()V

    return-void
.end method
