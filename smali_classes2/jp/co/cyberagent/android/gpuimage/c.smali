.class public Ljp/co/cyberagent/android/gpuimage/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 1
    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    .line 5
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->b:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->c:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->k:Z

    .line 2
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/c;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/c;->e()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->k:Z

    .line 3
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->g:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/c;->j(I[F)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/c;->g()V

    .line 3
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->e:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->e:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->h:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->h:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_1

    const p2, 0x84c0

    .line 10
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->f:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 13
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 14
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 15
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->h:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->b:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x8b31

    .line 2
    invoke-static {v0, v4}, Lc2;->x(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x8b30

    .line 3
    invoke-static {v1, v5}, Lc2;->x(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    .line 5
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 7
    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v6, 0x8b82

    .line 8
    invoke-static {v5, v6, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 9
    aget v3, v3, v4

    if-gtz v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v4, v5

    .line 12
    :goto_0
    iput v4, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v0, "position"

    .line 13
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->e:I

    .line 14
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->g:I

    .line 15
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->f:I

    .line 16
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->h:I

    .line 17
    iput-boolean v2, p0, Ljp/co/cyberagent/android/gpuimage/c;->k:Z

    return-void
.end method

.method public f(II)V
    .locals 0

    .line 1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    .line 2
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected h(IF)V
    .locals 1

    .line 1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/c$a;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/c$a;-><init>(Ljp/co/cyberagent/android/gpuimage/c;IF)V

    .line 2
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public i([F)V
    .locals 1

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    .line 2
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->g:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/c;->j(I[F)V

    return-void
.end method

.method protected j(I[F)V
    .locals 1

    .line 1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/c$b;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/c$b;-><init>(Ljp/co/cyberagent/android/gpuimage/c;I[F)V

    .line 2
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/c;->a:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
