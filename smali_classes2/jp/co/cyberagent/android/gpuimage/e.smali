.class public Ljp/co/cyberagent/android/gpuimage/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final q:[F


# instance fields
.field private a:Ljp/co/cyberagent/android/gpuimage/c;

.field public final b:Ljava/lang/Object;

.field private c:I

.field private final d:Ljava/nio/FloatBuffer;

.field private final e:Ljava/nio/FloatBuffer;

.field private f:Ljava/nio/IntBuffer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljp/co/cyberagent/android/gpuimage/j;

.field private m:Z

.field private n:Z

.field private o:Ljp/co/cyberagent/android/gpuimage/b$a;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/e;->q:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->b:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->c:I

    .line 4
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/b$a;->b:Ljp/co/cyberagent/android/gpuimage/b$a;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->o:Ljp/co/cyberagent/android/gpuimage/b$a;

    .line 5
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    .line 7
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/e;->q:[F

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->d:Ljava/nio/FloatBuffer;

    .line 10
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    sget-object p1, Lrf0;->a:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->e:Ljava/nio/FloatBuffer;

    .line 14
    sget-object p1, Ljp/co/cyberagent/android/gpuimage/j;->b:Ljp/co/cyberagent/android/gpuimage/j;

    .line 15
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->m:Z

    .line 16
    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->n:Z

    .line 17
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->l:Ljp/co/cyberagent/android/gpuimage/j;

    .line 18
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/e;->m()V

    return-void
.end method

.method static synthetic a(Ljp/co/cyberagent/android/gpuimage/e;)Ljava/nio/IntBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->f:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method static synthetic b(Ljp/co/cyberagent/android/gpuimage/e;)I
    .locals 0

    .line 1
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->c:I

    return p0
.end method

.method static synthetic c(Ljp/co/cyberagent/android/gpuimage/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->c:I

    return p1
.end method

.method static synthetic d(Ljp/co/cyberagent/android/gpuimage/e;)I
    .locals 0

    .line 1
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->i:I

    return p0
.end method

.method static synthetic e(Ljp/co/cyberagent/android/gpuimage/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->i:I

    return p1
.end method

.method static synthetic f(Ljp/co/cyberagent/android/gpuimage/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->j:I

    return p1
.end method

.method static synthetic g(Ljp/co/cyberagent/android/gpuimage/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/e;->m()V

    return-void
.end method

.method static synthetic h(Ljp/co/cyberagent/android/gpuimage/e;)Ljp/co/cyberagent/android/gpuimage/c;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    return-object p0
.end method

.method static synthetic i(Ljp/co/cyberagent/android/gpuimage/e;Ljp/co/cyberagent/android/gpuimage/c;)Ljp/co/cyberagent/android/gpuimage/c;
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    return-object p1
.end method

.method static synthetic j(Ljp/co/cyberagent/android/gpuimage/e;)I
    .locals 0

    .line 1
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->g:I

    return p0
.end method

.method static synthetic k(Ljp/co/cyberagent/android/gpuimage/e;)I
    .locals 0

    .line 1
    iget p0, p0, Ljp/co/cyberagent/android/gpuimage/e;->h:I

    return p0
.end method

.method private m()V
    .locals 15

    .line 1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->g:I

    int-to-float v1, v0

    .line 2
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->h:I

    int-to-float v3, v2

    .line 3
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/e;->l:Ljp/co/cyberagent/android/gpuimage/j;

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/j;->e:Ljp/co/cyberagent/android/gpuimage/j;

    if-eq v4, v5, :cond_0

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/j;->c:Ljp/co/cyberagent/android/gpuimage/j;

    if-ne v4, v5, :cond_1

    :cond_0
    int-to-float v1, v2

    int-to-float v3, v0

    .line 4
    :cond_1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->i:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 5
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->j:I

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 6
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7
    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->i:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8
    iget v4, p0, Ljp/co/cyberagent/android/gpuimage/e;->j:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v2

    div-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 9
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/e;->q:[F

    .line 10
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/e;->l:Ljp/co/cyberagent/android/gpuimage/j;

    iget-boolean v4, p0, Ljp/co/cyberagent/android/gpuimage/e;->m:Z

    iget-boolean v5, p0, Ljp/co/cyberagent/android/gpuimage/e;->n:Z

    invoke-static {v3, v4, v5}, Lrf0;->b(Ljp/co/cyberagent/android/gpuimage/j;ZZ)[F

    move-result-object v3

    .line 11
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/e;->o:Ljp/co/cyberagent/android/gpuimage/b$a;

    sget-object v5, Ljp/co/cyberagent/android/gpuimage/b$a;->c:Ljp/co/cyberagent/android/gpuimage/b$a;

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    sub-float v2, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    div-float v0, v4, v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v5

    new-array v0, v6, [F

    .line 12
    aget v5, v3, v14

    .line 13
    invoke-virtual {p0, v5, v2}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v14

    aget v5, v3, v13

    invoke-virtual {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v13

    aget v5, v3, v12

    .line 14
    invoke-virtual {p0, v5, v2}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v12

    aget v5, v3, v11

    invoke-virtual {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v11

    aget v5, v3, v10

    .line 15
    invoke-virtual {p0, v5, v2}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v10

    aget v5, v3, v9

    invoke-virtual {p0, v5, v4}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v5

    aput v5, v0, v9

    aget v5, v3, v8

    .line 16
    invoke-virtual {p0, v5, v2}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v2

    aput v2, v0, v8

    aget v2, v3, v7

    invoke-virtual {p0, v2, v4}, Ljp/co/cyberagent/android/gpuimage/e;->l(FF)F

    move-result v2

    aput v2, v0, v7

    move-object v3, v0

    goto :goto_0

    :cond_2
    new-array v4, v6, [F

    .line 17
    aget v5, v1, v14

    div-float/2addr v5, v0

    aput v5, v4, v14

    aget v5, v1, v13

    div-float/2addr v5, v2

    aput v5, v4, v13

    aget v5, v1, v12

    div-float/2addr v5, v0

    aput v5, v4, v12

    aget v5, v1, v11

    div-float/2addr v5, v2

    aput v5, v4, v11

    aget v5, v1, v10

    div-float/2addr v5, v0

    aput v5, v4, v10

    aget v5, v1, v9

    div-float/2addr v5, v2

    aput v5, v4, v9

    aget v5, v1, v8

    div-float/2addr v5, v0

    aput v5, v4, v8

    aget v0, v1, v7

    div-float/2addr v0, v2

    aput v0, v4, v7

    move-object v1, v4

    .line 18
    :goto_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 19
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method protected l(FF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    :goto_0
    return p2
.end method

.method public n()V
    .locals 1

    .line 1
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/e$b;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/e$b;-><init>(Ljp/co/cyberagent/android/gpuimage/e;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->m:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 1
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 3
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 4
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 5
    invoke-static {p1, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4100

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 7
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    monitor-enter p1

    .line 8
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->c:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->d:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/c;->d(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->f:Ljava/nio/IntBuffer;

    if-nez v1, :cond_0

    .line 3
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->f:Ljava/nio/IntBuffer;

    .line 4
    :cond_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/e$a;

    invoke-direct {v1, p0, p1, v0, p2}, Ljp/co/cyberagent/android/gpuimage/e$a;-><init>(Ljp/co/cyberagent/android/gpuimage/e;[BLandroid/hardware/Camera$Size;Landroid/hardware/Camera;)V

    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/e;->q(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/e;->g:I

    .line 2
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/e;->h:I

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    .line 5
    iget p1, p1, Ljp/co/cyberagent/android/gpuimage/c;->d:I

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 7
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/c;->f(II)V

    .line 8
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/e;->m()V

    .line 9
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_0
    iget-object p2, p0, Ljp/co/cyberagent/android/gpuimage/e;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .line 1
    iget p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    .line 4
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    .line 5
    invoke-static {p1, v0, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb71

    .line 6
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 7
    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->a:Ljp/co/cyberagent/android/gpuimage/c;

    invoke-virtual {p1}, Ljp/co/cyberagent/android/gpuimage/c;->b()V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->n:Z

    return v0
.end method

.method protected q(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/e;->k:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->p:I

    return-void
.end method

.method public s(Ljp/co/cyberagent/android/gpuimage/j;ZZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Ljp/co/cyberagent/android/gpuimage/e;->m:Z

    .line 2
    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/e;->n:Z

    .line 3
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->l:Ljp/co/cyberagent/android/gpuimage/j;

    .line 4
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/e;->m()V

    return-void
.end method

.method public t(Ljp/co/cyberagent/android/gpuimage/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/e;->o:Ljp/co/cyberagent/android/gpuimage/b$a;

    return-void
.end method
