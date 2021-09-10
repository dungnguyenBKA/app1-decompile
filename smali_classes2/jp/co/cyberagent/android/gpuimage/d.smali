.class public Ljp/co/cyberagent/android/gpuimage/d;
.super Ljp/co/cyberagent/android/gpuimage/c;
.source "SourceFile"


# instance fields
.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/c;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:[I

.field private p:[I

.field private final q:Ljava/nio/FloatBuffer;

.field private r:Ljava/nio/FloatBuffer;

.field private s:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/d;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljp/co/cyberagent/android/gpuimage/c;",
            ">;)V"
        }
    .end annotation

    const-string p1, "uniform mat4 uMVPMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v0, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 2
    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    .line 5
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/e;->q:[F

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->q:Ljava/nio/FloatBuffer;

    .line 8
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    sget-object p1, Lrf0;->a:[F

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/d;->r:Ljava/nio/FloatBuffer;

    .line 12
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/j;->b:Ljp/co/cyberagent/android/gpuimage/j;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lrf0;->b(Ljp/co/cyberagent/android/gpuimage/j;ZZ)[F

    move-result-object p1

    .line 14
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/d;->s:Ljava/nio/FloatBuffer;

    .line 17
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    .line 4
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    if-eqz v0, :cond_1

    .line 5
    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 6
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/d;->l()V

    .line 2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/c;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/c;->g()V

    .line 2
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/c;->k:Z

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const v3, 0x8d40

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/cyberagent/android/gpuimage/c;

    .line 7
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    aget v4, v4, v1

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 8
    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    invoke-static {v0, v0, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 9
    iget-object v3, v2, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/c;->i([F)V

    .line 10
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/d;->q:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_2

    .line 11
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/d;->s:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/d;->r:Ljava/nio/FloatBuffer;

    .line 12
    :goto_1
    invoke-virtual {v2, p1, v3, v4}, Ljp/co/cyberagent/android/gpuimage/c;->d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 13
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    aget p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 15
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/c;

    .line 16
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    invoke-static {v0, v0, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 17
    iget-object v0, v1, Ljp/co/cyberagent/android/gpuimage/c;->l:[F

    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/c;->i([F)V

    .line 18
    invoke-virtual {v1, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/c;->d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "GPUImageFilterGroup"

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw occur exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " :: mMergedFilters = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/c;->e()V

    .line 2
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/c;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v11, p2

    .line 1
    iput v0, v1, Ljp/co/cyberagent/android/gpuimage/c;->i:I

    .line 2
    iput v11, v1, Ljp/co/cyberagent/android/gpuimage/c;->j:I

    .line 3
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    if-eqz v2, :cond_0

    .line 4
    invoke-direct/range {p0 .. p0}, Ljp/co/cyberagent/android/gpuimage/d;->l()V

    .line 5
    :cond_0
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    iget-object v4, v1, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {v4, v0, v11}, Ljp/co/cyberagent/android/gpuimage/c;->f(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 8
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x1

    add-int/lit8 v14, v2, -0x1

    .line 9
    new-array v2, v14, [I

    iput-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    .line 10
    new-array v2, v14, [I

    iput-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    .line 11
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    invoke-static {v13, v2, v15}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 12
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    invoke-static {v13, v2, v15}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 13
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    aget v3, v2, v15

    if-ge v3, v13, :cond_2

    .line 14
    invoke-static {v13, v2, v15}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    :cond_2
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    aget v2, v2, v15

    const/16 v10, 0xde1

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/16 v16, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    const/16 v13, 0xde1

    move-object/from16 v10, v16

    .line 16
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 17
    invoke-static {v13, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 18
    invoke-static {v13, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    .line 19
    invoke-static {v13, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 20
    invoke-static {v13, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 21
    iget-object v2, v1, Ljp/co/cyberagent/android/gpuimage/d;->o:[I

    aget v2, v2, v15

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    .line 22
    iget-object v4, v1, Ljp/co/cyberagent/android/gpuimage/d;->p:[I

    aget v4, v4, v15

    invoke-static {v3, v2, v13, v4, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 23
    invoke-static {v13, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public i([F)V
    .locals 5

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/cyberagent/android/gpuimage/c;

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 5
    invoke-virtual {v3, p1}, Ljp/co/cyberagent/android/gpuimage/c;->i([F)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v3, v0}, Ljp/co/cyberagent/android/gpuimage/c;->i([F)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public k(Ljp/co/cyberagent/android/gpuimage/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/d;->m()V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/c;

    .line 6
    instance-of v2, v1, Ljp/co/cyberagent/android/gpuimage/d;

    if-eqz v2, :cond_4

    .line 7
    check-cast v1, Ljp/co/cyberagent/android/gpuimage/d;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/d;->m()V

    .line 8
    iget-object v1, v1, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/d;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method
