.class public Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhi$b;,
        Lhi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/nio/ByteBuffer;",
        "Lji;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lhi$a;

.field private static final g:Lhi$b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lhi$b;

.field private final d:Lhi$a;

.field private final e:Lii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhi$a;

    invoke-direct {v0}, Lhi$a;-><init>()V

    sput-object v0, Lhi;->f:Lhi$a;

    .line 2
    new-instance v0, Lhi$b;

    invoke-direct {v0}, Lhi$b;-><init>()V

    sput-object v0, Lhi;->g:Lhi$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lqe;Loe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lqe;",
            "Loe;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lhi;->g:Lhi$b;

    sget-object v1, Lhi;->f:Lhi$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lhi;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lhi;->b:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lhi;->d:Lhi$a;

    .line 6
    new-instance p1, Lii;

    invoke-direct {p1, p3, p4}, Lii;-><init>(Lqe;Loe;)V

    iput-object p1, p0, Lhi;->e:Lii;

    .line 7
    iput-object v0, p0, Lhi;->c:Lhi$b;

    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;IILpc;Lcom/bumptech/glide/load/i;)Lli;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "BufferGifDecoder"

    .line 1
    sget v0, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x2

    .line 2
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lpc;->c()Loc;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Loc;->b()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_6

    invoke-virtual {v0}, Loc;->c()I

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    sget-object v6, Lpi;->a:Lcom/bumptech/glide/load/h;

    move-object/from16 v8, p5

    invoke-virtual {v8, v6}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/bumptech/glide/load/b;->c:Lcom/bumptech/glide/load/b;

    if-ne v6, v8, :cond_1

    .line 5
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    :goto_0
    invoke-virtual {v0}, Loc;->a()I

    move-result v8

    div-int v8, v8, p3

    invoke-virtual {v0}, Loc;->d()I

    move-result v9

    div-int v9, v9, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    :goto_1
    const/4 v9, 0x1

    .line 9
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 10
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    iget-object v9, v1, Lhi;->d:Lhi$a;

    iget-object v10, v1, Lhi;->e:Lii;

    .line 12
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v11, Lqc;

    move-object/from16 v9, p1

    invoke-direct {v11, v10, v0, v9, v8}, Lqc;-><init>(Lmc$a;Loc;Ljava/nio/ByteBuffer;I)V

    .line 14
    invoke-virtual {v11, v6}, Lqc;->i(Landroid/graphics/Bitmap$Config;)V

    .line 15
    invoke-virtual {v11}, Lqc;->b()V

    .line 16
    invoke-virtual {v11}, Lqc;->a()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_4

    .line 17
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {v3, v4}, Ldl;->a(J)D

    :cond_3
    return-object v7

    .line 19
    :cond_4
    :try_start_1
    invoke-static {}, Lsg;->c()Lsg;

    move-result-object v12

    .line 20
    new-instance v0, Lji;

    iget-object v10, v1, Lhi;->a:Landroid/content/Context;

    move-object v9, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lji;-><init>(Landroid/content/Context;Lmc;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;)V

    .line 21
    new-instance v6, Lli;

    invoke-direct {v6, v0}, Lli;-><init>(Lji;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-static {v3, v4}, Ldl;->a(J)D

    :cond_5
    return-object v6

    .line 24
    :cond_6
    :goto_2
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {v3, v4}, Ldl;->a(J)D

    :cond_7
    return-object v7

    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {v3, v4}, Ldl;->a(J)D

    :cond_8
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lpi;->b:Lcom/bumptech/glide/load/h;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lhi;->b:Ljava/util/List;

    .line 3
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/f;->f(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 6

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lhi;->c:Lhi$b;

    invoke-virtual {p1, v1}, Lhi$b;->a(Ljava/nio/ByteBuffer;)Lpc;

    move-result-object p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    .line 3
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lhi;->c(Ljava/nio/ByteBuffer;IILpc;Lcom/bumptech/glide/load/i;)Lli;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Lhi;->c:Lhi$b;

    invoke-virtual {p3, p1}, Lhi$b;->b(Lpc;)V

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lhi;->c:Lhi$b;

    invoke-virtual {p3, p1}, Lhi$b;->b(Lpc;)V

    throw p2
.end method
