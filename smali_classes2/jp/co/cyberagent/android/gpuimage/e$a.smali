.class Ljp/co/cyberagent/android/gpuimage/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/e;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[B

.field final synthetic c:Landroid/hardware/Camera$Size;

.field final synthetic d:Landroid/hardware/Camera;

.field final synthetic e:Ljp/co/cyberagent/android/gpuimage/e;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/e;[BLandroid/hardware/Camera$Size;Landroid/hardware/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->b:[B

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->c:Landroid/hardware/Camera$Size;

    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->d:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->b:[B

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->c:Landroid/hardware/Camera$Size;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    .line 2
    invoke-static {v3}, Ljp/co/cyberagent/android/gpuimage/e;->a(Ljp/co/cyberagent/android/gpuimage/e;)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    .line 3
    invoke-static {v0, v2, v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->YUVtoRBGA([BII[I)V

    .line 4
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->a(Ljp/co/cyberagent/android/gpuimage/e;)Ljava/nio/IntBuffer;

    move-result-object v9

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->c:Landroid/hardware/Camera$Size;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/e;->b(Ljp/co/cyberagent/android/gpuimage/e;)I

    move-result v10

    const/4 v2, 0x1

    new-array v11, v2, [I

    const/4 v12, 0x0

    const/16 v3, 0xde1

    const/4 v4, -0x1

    if-ne v10, v4, :cond_0

    .line 5
    invoke-static {v2, v11, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    aget v2, v11, v12

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 7
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 8
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 9
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 10
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    .line 11
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v10, 0x1401

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v3, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x1908

    const/16 v13, 0x1401

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v13

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    aput v10, v11, v12

    .line 14
    :goto_0
    aget v1, v11, v12

    .line 15
    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/e;->c(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 16
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->d:Landroid/hardware/Camera;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->b:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 17
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->d(Ljp/co/cyberagent/android/gpuimage/e;)I

    move-result v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->c:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    if-eq v0, v1, :cond_1

    .line 18
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/e;->e(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 19
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->c:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/e;->f(Ljp/co/cyberagent/android/gpuimage/e;I)I

    .line 20
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e$a;->e:Ljp/co/cyberagent/android/gpuimage/e;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/e;->g(Ljp/co/cyberagent/android/gpuimage/e;)V

    :cond_1
    return-void
.end method
