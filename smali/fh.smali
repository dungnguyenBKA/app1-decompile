.class public final Lfh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Lcom/bumptech/glide/load/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/bumptech/glide/load/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lfh$b;

.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lqe;

.field private final b:Landroid/util/DisplayMetrics;

.field private final c:Loe;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lfh;->f:Lcom/bumptech/glide/load/h;

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/j;->b:Lcom/bumptech/glide/load/j;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 4
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lfh;->g:Lcom/bumptech/glide/load/h;

    .line 5
    sget-object v0, Leh;->f:Lcom/bumptech/glide/load/h;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v1

    sput-object v1, Lfh;->h:Lcom/bumptech/glide/load/h;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 7
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/h;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    move-result-object v0

    sput-object v0, Lfh;->i:Lcom/bumptech/glide/load/h;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfh;->j:Ljava/util/Set;

    .line 10
    new-instance v0, Lfh$a;

    invoke-direct {v0}, Lfh$a;-><init>()V

    sput-object v0, Lfh;->k:Lfh$b;

    .line 11
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 12
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfh;->l:Ljava/util/Set;

    .line 14
    sget v0, Lhl;->c:I

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 16
    sput-object v0, Lfh;->m:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lqe;Loe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lqe;",
            "Loe;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lkh;->a()Lkh;

    move-result-object v0

    iput-object v0, p0, Lfh;->e:Lkh;

    .line 3
    iput-object p1, p0, Lfh;->d:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lfh;->b:Landroid/util/DisplayMetrics;

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lfh;->a:Lqe;

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Lfh;->c:Loe;

    return-void
.end method

.method private b(Llh;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            "Lfh$b;",
            ")",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p4

    .line 1
    iget-object v1, v12, Lfh;->c:Loe;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Loe;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 2
    const-class v1, Lfh;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v14, Lfh;->m:Ljava/util/Queue;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4
    :try_start_1
    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v2, :cond_0

    .line 6
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    invoke-static {v2}, Lfh;->l(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    move-object v15, v2

    .line 8
    monitor-exit v1

    .line 9
    iput-object v13, v15, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 10
    sget-object v1, Lfh;->f:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/b;

    .line 11
    sget-object v1, Lfh;->g:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/bumptech/glide/load/j;

    .line 12
    sget-object v1, Leh;->f:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Leh;

    .line 13
    sget-object v1, Lfh;->h:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 14
    sget-object v1, Lfh;->i:Lcom/bumptech/glide/load/h;

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 16
    :try_start_3
    invoke-direct/range {v1 .. v11}, Lfh;->e(Llh;Landroid/graphics/BitmapFactory$Options;Leh;Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/j;ZIIZLfh$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    iget-object v1, v12, Lfh;->a:Lqe;

    invoke-static {v0, v1}, Lxg;->b(Landroid/graphics/Bitmap;Lqe;)Lxg;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    invoke-static {v15}, Lfh;->l(Landroid/graphics/BitmapFactory$Options;)V

    .line 19
    monitor-enter v14

    .line 20
    :try_start_4
    invoke-interface {v14, v15}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object v1, v12, Lfh;->c:Loe;

    invoke-interface {v1, v13}, Loe;->d(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v15}, Lfh;->l(Landroid/graphics/BitmapFactory$Options;)V

    .line 25
    sget-object v2, Lfh;->m:Ljava/util/Queue;

    monitor-enter v2

    .line 26
    :try_start_6
    invoke-interface {v2, v15}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 28
    iget-object v1, v12, Lfh;->c:Loe;

    invoke-interface {v1, v13}, Loe;->d(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 29
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 30
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Llh;Landroid/graphics/BitmapFactory$Options;Leh;Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/j;ZIIZLfh$b;)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    .line 1
    sget v6, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    .line 2
    iget-object v8, v0, Lfh;->a:Lqe;

    invoke-static {v1, v2, v5, v8}, Lfh;->i(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)[I

    move-result-object v8

    const/4 v9, 0x0

    .line 3
    aget v10, v8, v9

    const/4 v11, 0x1

    .line 4
    aget v8, v8, v11

    const/4 v12, -0x1

    if-eq v10, v12, :cond_1

    if-ne v8, v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v12, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 5
    :goto_1
    invoke-interface/range {p1 .. p1}, Llh;->a()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    const/4 v14, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v14, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v14, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v14, 0xb4

    :goto_2
    packed-switch v13, :pswitch_data_1

    const/4 v15, 0x0

    goto :goto_3

    :pswitch_3
    const/4 v15, 0x1

    :goto_3
    const/high16 v9, -0x80000000

    move/from16 v11, p7

    if-ne v11, v9, :cond_3

    .line 6
    invoke-static {v14}, Lfh;->j(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_4

    :cond_2
    move v11, v10

    :cond_3
    :goto_4
    move/from16 p6, v13

    move/from16 v13, p8

    if-ne v13, v9, :cond_5

    .line 7
    invoke-static {v14}, Lfh;->j(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v13, v10

    goto :goto_5

    :cond_4
    move v13, v8

    .line 8
    :cond_5
    :goto_5
    invoke-interface/range {p1 .. p1}, Llh;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    move-wide/from16 v16, v6

    .line 9
    iget-object v6, v0, Lfh;->a:Lqe;

    const-string v7, "]"

    const-string v4, "x"

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v19, v12

    const-string v12, "Downsampler"

    move/from16 v20, v15

    if-lez v10, :cond_19

    if-gtz v8, :cond_6

    goto/16 :goto_11

    .line 10
    :cond_6
    invoke-static {v14}, Lfh;->j(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move v14, v8

    move v15, v10

    goto :goto_6

    :cond_7
    move v15, v8

    move v14, v10

    .line 11
    :goto_6
    invoke-virtual {v3, v14, v15, v11, v13}, Leh;->b(IIII)F

    move-result v0

    const/16 v21, 0x0

    cmpg-float v21, v0, v21

    if-lez v21, :cond_18

    .line 12
    invoke-virtual {v3, v14, v15, v11, v13}, Leh;->a(IIII)Leh$e;

    move-result-object v4

    if-eqz v4, :cond_17

    int-to-float v7, v14

    move/from16 v21, v8

    mul-float v8, v0, v7

    move/from16 v22, v10

    move/from16 v23, v11

    float-to-double v10, v8

    .line 13
    invoke-static {v10, v11}, Lfh;->m(D)I

    move-result v8

    int-to-float v10, v15

    mul-float v11, v0, v10

    move-object/from16 v24, v12

    float-to-double v11, v11

    .line 14
    invoke-static {v11, v12}, Lfh;->m(D)I

    move-result v11

    .line 15
    div-int v8, v14, v8

    .line 16
    div-int v11, v15, v11

    .line 17
    sget-object v12, Leh$e;->b:Leh$e;

    if-ne v4, v12, :cond_8

    .line 18
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_7

    .line 19
    :cond_8
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 20
    :goto_7
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v11, v3, :cond_9

    sget-object v3, Lfh;->j:Ljava/util/Set;

    move/from16 v25, v13

    iget-object v13, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 21
    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    move/from16 v25, v13

    .line 22
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v8, 0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v4, v12, :cond_b

    int-to-float v4, v3

    div-float v0, v18, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_b

    shl-int/lit8 v0, v3, 0x1

    goto :goto_8

    :cond_b
    move v0, v3

    .line 23
    :goto_8
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v3, :cond_c

    const/16 v3, 0x8

    .line 25
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    float-to-double v6, v7

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-float/2addr v10, v4

    float-to-double v7, v10

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 28
    div-int/2addr v0, v3

    if-lez v0, :cond_12

    .line 29
    div-int/2addr v6, v0

    .line 30
    div-int/2addr v4, v0

    goto :goto_b

    .line 31
    :cond_c
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v3, :cond_14

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v3, :cond_d

    goto :goto_c

    .line 32
    :cond_d
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v3, :cond_11

    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v3, :cond_e

    goto :goto_a

    .line 33
    :cond_e
    rem-int v3, v14, v0

    if-nez v3, :cond_10

    rem-int v3, v15, v0

    if-eqz v3, :cond_f

    goto :goto_9

    .line 34
    :cond_f
    div-int v6, v14, v0

    .line 35
    div-int v4, v15, v0

    goto :goto_b

    .line 36
    :cond_10
    :goto_9
    invoke-static {v1, v2, v5, v6}, Lfh;->i(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 37
    aget v6, v0, v3

    const/4 v3, 0x1

    .line 38
    aget v4, v0, v3

    goto :goto_b

    :cond_11
    :goto_a
    const/16 v3, 0x18

    if-lt v11, v3, :cond_13

    int-to-float v0, v0

    div-float/2addr v7, v0

    .line 39
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v10, v0

    .line 40
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_12
    :goto_b
    move-object/from16 v3, p3

    move/from16 v8, v23

    move/from16 v10, v25

    goto :goto_e

    :cond_13
    int-to-float v0, v0

    div-float/2addr v7, v0

    float-to-double v3, v7

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-float/2addr v10, v0

    float-to-double v6, v10

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_d

    :cond_14
    :goto_c
    int-to-float v0, v0

    div-float/2addr v7, v0

    float-to-double v3, v7

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-float/2addr v10, v0

    float-to-double v6, v10

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    :goto_d
    double-to-int v4, v6

    move v6, v3

    move/from16 v8, v23

    move/from16 v10, v25

    move-object/from16 v3, p3

    .line 45
    :goto_e
    invoke-virtual {v3, v6, v4, v8, v10}, Leh;->b(IIII)F

    move-result v0

    float-to-double v3, v0

    .line 46
    invoke-static {v3, v4}, Lfh;->h(D)I

    move-result v0

    int-to-double v6, v0

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    invoke-static {v6, v7}, Lfh;->m(D)I

    move-result v6

    int-to-float v7, v6

    int-to-float v0, v0

    div-float/2addr v7, v0

    float-to-double v11, v7

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, v3, v11

    int-to-double v6, v6

    .line 49
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    invoke-static {v11, v12}, Lfh;->m(D)I

    move-result v0

    .line 50
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 51
    invoke-static {v3, v4}, Lfh;->h(D)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 52
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v3, :cond_15

    if-lez v0, :cond_15

    if-eq v3, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    .line 54
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_10
    move-object/from16 v0, v24

    const/4 v3, 0x2

    .line 55
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-object/from16 v4, p0

    move/from16 v6, v21

    move/from16 v3, v22

    goto/16 :goto_12

    .line 56
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move/from16 v21, v8

    move/from16 v22, v10

    move v8, v11

    move v10, v13

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot scale with factor: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " from: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v21

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_11
    move v6, v8

    move v3, v10

    move v8, v11

    move-object v0, v12

    move v10, v13

    const/4 v11, 0x3

    .line 58
    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 59
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to determine dimensions for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1a
    move-object/from16 v4, p0

    .line 60
    :goto_12
    iget-object v7, v4, Lfh;->e:Lkh;

    move/from16 v9, v19

    move/from16 v11, v20

    .line 61
    invoke-virtual {v7, v8, v10, v9, v11}, Lkh;->b(IIZZ)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 62
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v9, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x0

    .line 63
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_13

    :cond_1b
    const/4 v9, 0x0

    :goto_13
    if-eqz v7, :cond_1d

    :cond_1c
    const/4 v7, 0x1

    goto :goto_16

    .line 64
    :cond_1d
    sget-object v7, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    move-object/from16 v11, p4

    if-eq v11, v7, :cond_20

    .line 65
    :try_start_0
    invoke-interface/range {p1 .. p1}, Llh;->d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    const/4 v7, 0x3

    .line 66
    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1e
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_1f

    .line 68
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_15

    :cond_1f
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_15
    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v7, v11, :cond_1c

    const/4 v7, 0x1

    .line 70
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_16

    :cond_20
    const/4 v7, 0x1

    .line 71
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    :goto_16
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ltz v3, :cond_21

    if-ltz v6, :cond_21

    if-eqz p9, :cond_21

    move v13, v10

    goto :goto_18

    .line 74
    :cond_21
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v8, :cond_22

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v10, :cond_22

    if-eq v8, v10, :cond_22

    const/4 v10, 0x1

    goto :goto_17

    :cond_22
    const/4 v10, 0x0

    :goto_17
    if-eqz v10, :cond_23

    int-to-float v8, v8

    .line 75
    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v10, v10

    div-float v18, v8, v10

    :cond_23
    int-to-float v3, v3

    int-to-float v8, v12

    div-float/2addr v3, v8

    float-to-double v12, v3

    .line 76
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v3, v12

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-double v12, v6

    .line 77
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    int-to-float v3, v3

    mul-float v3, v3, v18

    .line 78
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v6

    mul-float v6, v6, v18

    .line 79
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v6, 0x2

    .line 80
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move v8, v3

    :goto_18
    const/4 v3, 0x0

    const/16 v6, 0x1a

    if-lez v8, :cond_27

    if-lez v13, :cond_27

    .line 81
    iget-object v10, v4, Lfh;->a:Lqe;

    if-lt v11, v6, :cond_25

    .line 82
    iget-object v12, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v14, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v12, v14, :cond_24

    goto :goto_1a

    .line 83
    :cond_24
    iget-object v12, v2, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_19

    :cond_25
    move-object v12, v3

    :goto_19
    if-nez v12, :cond_26

    .line 84
    iget-object v12, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    :cond_26
    invoke-interface {v10, v8, v13, v12}, Lqe;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_27
    :goto_1a
    const/16 v8, 0x1c

    if-lt v11, v8, :cond_2a

    .line 86
    sget-object v6, Lcom/bumptech/glide/load/j;->c:Lcom/bumptech/glide/load/j;

    move-object/from16 v8, p5

    if-ne v8, v6, :cond_28

    iget-object v6, v2, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v6, :cond_28

    .line 87
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v9, 0x1

    :cond_28
    if-eqz v9, :cond_29

    .line 88
    sget-object v6, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1b

    :cond_29
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1b
    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1c

    :cond_2a
    if-lt v11, v6, :cond_2b

    .line 89
    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 90
    :cond_2b
    :goto_1c
    iget-object v6, v4, Lfh;->a:Lqe;

    invoke-static {v1, v2, v5, v6}, Lfh;->f(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    iget-object v6, v4, Lfh;->a:Lqe;

    invoke-interface {v5, v6, v1}, Lfh$b;->a(Lqe;Landroid/graphics/Bitmap;)V

    const/4 v5, 0x2

    .line 92
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 93
    invoke-static {v1}, Lfh;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 94
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lfh;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 96
    invoke-static/range {v16 .. v17}, Ldl;->a(J)D

    :cond_2c
    if-eqz v1, :cond_2d

    .line 97
    iget-object v0, v4, Lfh;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 98
    iget-object v0, v4, Lfh;->a:Lqe;

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lth;->g(Lqe;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 100
    iget-object v0, v4, Lfh;->a:Lqe;

    invoke-interface {v0, v1}, Lqe;->d(Landroid/graphics/Bitmap;)V

    :cond_2d
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static f(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lfh$b;->b()V

    .line 3
    invoke-interface {p0}, Llh;->c()V

    .line 4
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    invoke-static {}, Lth;->e()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    :try_start_0
    invoke-interface {p0, p1}, Llh;->b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    invoke-static {}, Lth;->e()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 10
    :try_start_1
    invoke-static {v3, v0, v1, v2, p1}, Lfh;->k(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    const-string v1, "Downsampler"

    const/4 v2, 0x3

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 13
    :try_start_2
    invoke-interface {p3, v1}, Lqe;->d(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 14
    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 15
    invoke-static {p0, p1, p2, p3}, Lfh;->f(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 16
    :catch_1
    :try_start_3
    throw v0

    .line 17
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :goto_1
    invoke-static {}, Lth;->e()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static g(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p0, p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static i(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)[I
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p0, p1, p2, p3}, Lfh;->f(Llh;Landroid/graphics/BitmapFactory$Options;Lfh$b;Lqe;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method private static j(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static k(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outHeight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outMimeType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inBitmap: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lfh;->g(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static l(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 10
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method private static m(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Llh$b;

    iget-object v0, p0, Lfh;->d:Ljava/util/List;

    iget-object v2, p0, Lfh;->c:Loe;

    invoke-direct {v1, p1, v0, v2}, Llh$b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Loe;)V

    sget-object v5, Lfh;->k:Lfh$b;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lfh;->b(Llh;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v5, Lfh;->k:Lfh$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lfh;->d(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            "Lfh$b;",
            ")",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Llh$a;

    iget-object v0, p0, Lfh;->d:Ljava/util/List;

    iget-object v2, p0, Lfh;->c:Loe;

    invoke-direct {v1, p1, v0, v2}, Llh$a;-><init>(Ljava/io/InputStream;Ljava/util/List;Loe;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lfh;->b(Llh;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;

    move-result-object p1

    return-object p1
.end method
