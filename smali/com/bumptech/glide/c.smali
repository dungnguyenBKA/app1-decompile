.class public Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/c$a;
    }
.end annotation


# static fields
.field private static volatile j:Lcom/bumptech/glide/c;

.field private static volatile k:Z


# instance fields
.field private final b:Lqe;

.field private final c:Lif;

.field private final d:Lcom/bumptech/glide/e;

.field private final e:Lcom/bumptech/glide/g;

.field private final f:Loe;

.field private final g:Ljj;

.field private final h:Lbj;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lwd;Lif;Lqe;Loe;Ljj;Lbj;ILcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lwd;",
            "Lif;",
            "Lqe;",
            "Loe;",
            "Ljj;",
            "Lbj;",
            "I",
            "Lcom/bumptech/glide/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/j<",
            "**>;>;",
            "Ljava/util/List<",
            "Lbk<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    .line 1
    const-class v4, Lmc;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    .line 3
    iput-object v1, v0, Lcom/bumptech/glide/c;->b:Lqe;

    .line 4
    iput-object v3, v0, Lcom/bumptech/glide/c;->f:Loe;

    move-object/from16 v8, p3

    .line 5
    iput-object v8, v0, Lcom/bumptech/glide/c;->c:Lif;

    move-object/from16 v8, p6

    .line 6
    iput-object v8, v0, Lcom/bumptech/glide/c;->g:Ljj;

    move-object/from16 v8, p7

    .line 7
    iput-object v8, v0, Lcom/bumptech/glide/c;->h:Lbj;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 9
    new-instance v9, Lcom/bumptech/glide/g;

    invoke-direct {v9}, Lcom/bumptech/glide/g;-><init>()V

    iput-object v9, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/g;

    .line 10
    new-instance v10, Ldh;

    invoke-direct {v10}, Ldh;-><init>()V

    invoke-virtual {v9, v10}, Lcom/bumptech/glide/g;->n(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/g;

    .line 11
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1b

    if-lt v10, v11, :cond_0

    .line 12
    new-instance v11, Lih;

    invoke-direct {v11}, Lih;-><init>()V

    invoke-virtual {v9, v11}, Lcom/bumptech/glide/g;->n(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/g;

    .line 13
    :cond_0
    invoke-virtual {v9}, Lcom/bumptech/glide/g;->f()Ljava/util/List;

    move-result-object v11

    .line 14
    new-instance v12, Lhi;

    invoke-direct {v12, v2, v11, v1, v3}, Lhi;-><init>(Landroid/content/Context;Ljava/util/List;Lqe;Loe;)V

    .line 15
    invoke-static/range {p4 .. p4}, Lvh;->f(Lqe;)Lcom/bumptech/glide/load/k;

    move-result-object v13

    .line 16
    new-instance v14, Lfh;

    .line 17
    invoke-virtual {v9}, Lcom/bumptech/glide/g;->f()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {v14, v15, v0, v1, v3}, Lfh;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lqe;Loe;)V

    if-eqz p13, :cond_1

    const/16 v0, 0x1c

    if-lt v10, v0, :cond_1

    .line 18
    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    .line 19
    new-instance v15, Lah;

    invoke-direct {v15}, Lah;-><init>()V

    goto :goto_0

    .line 20
    :cond_1
    new-instance v15, Lzg;

    invoke-direct {v15, v14}, Lzg;-><init>(Lfh;)V

    .line 21
    new-instance v0, Lsh;

    invoke-direct {v0, v14, v3}, Lsh;-><init>(Lfh;Loe;)V

    :goto_0
    move-object/from16 v16, v7

    .line 22
    new-instance v7, Ldi;

    invoke-direct {v7, v2}, Ldi;-><init>(Landroid/content/Context;)V

    move/from16 p3, v10

    .line 23
    new-instance v10, Leg$c;

    invoke-direct {v10, v8}, Leg$c;-><init>(Landroid/content/res/Resources;)V

    .line 24
    new-instance v2, Leg$d;

    invoke-direct {v2, v8}, Leg$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    .line 25
    new-instance v5, Leg$b;

    invoke-direct {v5, v8}, Leg$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v2

    .line 26
    new-instance v2, Leg$a;

    invoke-direct {v2, v8}, Leg$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p7, v2

    .line 27
    new-instance v2, Lvg;

    invoke-direct {v2, v3}, Lvg;-><init>(Loe;)V

    move-object/from16 v18, v6

    .line 28
    new-instance v6, Lri;

    invoke-direct {v6}, Lri;-><init>()V

    move-object/from16 p13, v6

    .line 29
    new-instance v6, Lui;

    invoke-direct {v6}, Lui;-><init>()V

    move-object/from16 v19, v6

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v20, v6

    .line 31
    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v5

    new-instance v5, Lof;

    invoke-direct {v5}, Lof;-><init>()V

    .line 32
    invoke-virtual {v9, v6, v5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lfg;

    invoke-direct {v6, v3}, Lfg;-><init>(Loe;)V

    .line 33
    invoke-virtual {v9, v5, v6}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    move-object/from16 v22, v10

    const-string v10, "Bitmap"

    .line 34
    invoke-virtual {v9, v10, v5, v6, v15}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v9, v10, v5, v6, v0}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    .line 36
    invoke-static {}, Ldd;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    move-object/from16 v23, v7

    new-instance v7, Loh;

    invoke-direct {v7, v14}, Loh;-><init>(Lfh;)V

    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    goto :goto_1

    :cond_2
    move-object/from16 v23, v7

    .line 38
    :goto_1
    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {v9, v10, v5, v6, v13}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 40
    invoke-static/range {p4 .. p4}, Lvh;->c(Lqe;)Lcom/bumptech/glide/load/k;

    move-result-object v7

    .line 41
    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    .line 42
    invoke-static {}, Lhg$a;->b()Lhg$a;

    move-result-object v7

    invoke-virtual {v9, v5, v6, v7}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Luh;

    invoke-direct {v7}, Luh;-><init>()V

    .line 43
    invoke-virtual {v9, v10, v5, v6, v7}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v5, Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v9, v5, v2}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/g;

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Ltg;

    invoke-direct {v7, v8, v15}, Ltg;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    const-string v14, "BitmapDrawable"

    .line 45
    invoke-virtual {v9, v14, v5, v6, v7}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Ltg;

    invoke-direct {v7, v8, v0}, Ltg;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    .line 46
    invoke-virtual {v9, v14, v5, v6, v7}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Ltg;

    invoke-direct {v6, v8, v13}, Ltg;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    .line 47
    invoke-virtual {v9, v14, v0, v5, v6}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lug;

    invoke-direct {v5, v1, v2}, Lug;-><init>(Lqe;Lcom/bumptech/glide/load/l;)V

    .line 48
    invoke-virtual {v9, v0, v5}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/InputStream;

    const-class v2, Lji;

    new-instance v5, Lqi;

    invoke-direct {v5, v11, v12, v3}, Lqi;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/k;Loe;)V

    const-string v6, "Gif"

    .line 49
    invoke-virtual {v9, v6, v0, v2, v5}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v2, Lji;

    .line 50
    invoke-virtual {v9, v6, v0, v2, v12}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Lji;

    new-instance v2, Lki;

    invoke-direct {v2}, Lki;-><init>()V

    .line 51
    invoke-virtual {v9, v0, v2}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/g;

    .line 52
    invoke-static {}, Lhg$a;->b()Lhg$a;

    move-result-object v0

    .line 53
    invoke-virtual {v9, v4, v4, v0}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/Bitmap;

    new-instance v2, Loi;

    invoke-direct {v2, v1}, Loi;-><init>(Lqe;)V

    .line 54
    invoke-virtual {v9, v10, v4, v0, v2}, Lcom/bumptech/glide/g;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/drawable/Drawable;

    move-object/from16 v4, v23

    .line 55
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v5, Lqh;

    invoke-direct {v5, v4, v1}, Lqh;-><init>(Ldi;Lqe;)V

    .line 56
    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    new-instance v0, Lxh$a;

    invoke-direct {v0}, Lxh$a;-><init>()V

    .line 57
    invoke-virtual {v9, v0}, Lcom/bumptech/glide/g;->o(Lvc$a;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v4, Lpf$b;

    invoke-direct {v4}, Lpf$b;-><init>()V

    .line 58
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lrf$e;

    invoke-direct {v4}, Lrf$e;-><init>()V

    .line 59
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    new-instance v4, Lfi;

    invoke-direct {v4}, Lfi;-><init>()V

    .line 60
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/File;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lrf$b;

    invoke-direct {v4}, Lrf$b;-><init>()V

    .line 61
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    .line 62
    invoke-static {}, Lhg$a;->b()Lhg$a;

    move-result-object v4

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    new-instance v0, Lbd$a;

    invoke-direct {v0, v3}, Lbd$a;-><init>(Loe;)V

    .line 63
    invoke-virtual {v9, v0}, Lcom/bumptech/glide/g;->o(Lvc$a;)Lcom/bumptech/glide/g;

    .line 64
    invoke-static {}, Ldd;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    new-instance v0, Ldd$a;

    invoke-direct {v0}, Ldd$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/g;->o(Lvc$a;)Lcom/bumptech/glide/g;

    .line 66
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v22

    .line 67
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v5, v21

    .line 68
    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v6, v18

    .line 69
    invoke-virtual {v9, v6, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    .line 70
    invoke-virtual {v9, v6, v2, v5}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/net/Uri;

    move-object/from16 v4, p6

    .line 71
    invoke-virtual {v9, v6, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v5, p7

    .line 72
    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 73
    invoke-virtual {v9, v6, v2, v5}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v2, Landroid/net/Uri;

    .line 74
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lqf$c;

    invoke-direct {v2}, Lqf$c;-><init>()V

    move-object/from16 v4, v17

    .line 75
    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v5, Lqf$c;

    invoke-direct {v5}, Lqf$c;-><init>()V

    .line 76
    invoke-virtual {v9, v0, v2, v5}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Lgg$c;

    invoke-direct {v2}, Lgg$c;-><init>()V

    .line 77
    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lgg$b;

    invoke-direct {v2}, Lgg$b;-><init>()V

    .line 78
    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Lgg$a;

    invoke-direct {v2}, Lgg$a;-><init>()V

    .line 79
    invoke-virtual {v9, v4, v0, v2}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Llg$a;

    invoke-direct {v4}, Llg$a;-><init>()V

    .line 80
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lmf$c;

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lmf$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lmf$b;

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lmf$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 83
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lmg$a;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lmg$a;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Lng$a;

    invoke-direct {v4, v5}, Lng$a;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v9, v0, v2, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const/16 v0, 0x1d

    move/from16 v2, p3

    if-lt v2, v0, :cond_4

    .line 86
    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Log$c;

    invoke-direct {v6, v5}, Log$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    .line 87
    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Log$b;

    invoke-direct {v6, v5}, Log$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    .line 88
    :cond_4
    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lig$d;

    move-object/from16 v7, v20

    invoke-direct {v6, v7}, Lig$d;-><init>(Landroid/content/ContentResolver;)V

    .line 89
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lig$b;

    invoke-direct {v6, v7}, Lig$b;-><init>(Landroid/content/ContentResolver;)V

    .line 90
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v6, Lig$a;

    invoke-direct {v6, v7}, Lig$a;-><init>(Landroid/content/ContentResolver;)V

    .line 91
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Ljg$a;

    invoke-direct {v6}, Ljg$a;-><init>()V

    .line 92
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lpg$a;

    invoke-direct {v6}, Lpg$a;-><init>()V

    .line 93
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v6, Lwf$a;

    invoke-direct {v6, v5}, Lwf$a;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Lsf;

    const-class v4, Ljava/io/InputStream;

    new-instance v6, Lkg$a;

    invoke-direct {v6}, Lkg$a;-><init>()V

    .line 95
    invoke-virtual {v9, v0, v4, v6}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v4, Lnf$a;

    invoke-direct {v4}, Lnf$a;-><init>()V

    move-object/from16 v6, v16

    .line 96
    invoke-virtual {v9, v6, v0, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v4, Lnf$d;

    invoke-direct {v4}, Lnf$d;-><init>()V

    .line 97
    invoke-virtual {v9, v6, v0, v4}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/net/Uri;

    .line 98
    invoke-static {}, Lhg$a;->b()Lhg$a;

    move-result-object v7

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-static {}, Lhg$a;->b()Lhg$a;

    move-result-object v7

    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/g;->d(Ljava/lang/Class;Ljava/lang/Class;Lag;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v4, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lei;

    invoke-direct {v7}, Lei;-><init>()V

    .line 100
    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lsi;

    invoke-direct {v7, v8}, Lsi;-><init>(Landroid/content/res/Resources;)V

    .line 101
    invoke-virtual {v9, v0, v4, v7}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v4, p13

    .line 102
    invoke-virtual {v9, v0, v6, v4}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lti;

    move-object/from16 v10, v19

    invoke-direct {v7, v1, v4, v10}, Lti;-><init>(Lqe;Lvi;Lvi;)V

    .line 103
    invoke-virtual {v9, v0, v6, v7}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const-class v0, Lji;

    .line 104
    invoke-virtual {v9, v0, v6, v10}, Lcom/bumptech/glide/g;->p(Ljava/lang/Class;Ljava/lang/Class;Lvi;)Lcom/bumptech/glide/g;

    const/16 v0, 0x17

    if-lt v2, v0, :cond_5

    .line 105
    invoke-static/range {p4 .. p4}, Lvh;->d(Lqe;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    .line 106
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v1, v2, v0}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    .line 107
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Ltg;

    invoke-direct {v4, v8, v0}, Ltg;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    invoke-virtual {v9, v1, v2, v4}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;

    .line 108
    :cond_5
    new-instance v0, Llk;

    invoke-direct {v0}, Llk;-><init>()V

    .line 109
    new-instance v12, Lcom/bumptech/glide/e;

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v9

    move-object v5, v0

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Loe;Lcom/bumptech/glide/g;Llk;Lcom/bumptech/glide/c$a;Ljava/util/Map;Ljava/util/List;Lwd;ZI)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/c;->k:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bumptech/glide/c;->k:Z

    .line 3
    new-instance v0, Lcom/bumptech/glide/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Loj;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    new-instance v1, Lrj;

    invoke-direct {v1, p0}, Lrj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lrj;->a()Ljava/util/List;

    move-result-object v1

    :cond_1
    const/4 v2, 0x3

    const-string v3, "Glide"

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    move-result-object v4

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 11
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpj;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpj;

    const-string v4, "Discovered GlideModule from manifest: "

    .line 19
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Ljj$b;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 21
    :goto_2
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/d;->b(Ljj$b;)V

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpj;

    .line 23
    invoke-interface {v3, p0, v0}, Lpj;->a(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p1, p0, v0}, Loj;->b(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 25
    :cond_8
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpj;

    .line 27
    :try_start_0
    iget-object v3, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/g;

    invoke-interface {v2, p0, v0, v3}, Lpj;->b(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    if-eqz p1, :cond_a

    .line 30
    iget-object v1, v0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/g;

    invoke-virtual {p1, p0, v0, v1}, Lqj;->a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;)V

    .line 31
    :cond_a
    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 32
    sput-object v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    const/4 p0, 0x0

    .line 33
    sput-boolean p0, Lcom/bumptech/glide/c;->k:Z

    return-void

    .line 34
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 7

    .line 1
    sget-object v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/bumptech/glide/c;->n(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/bumptech/glide/c;->n(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/c;->n(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/bumptech/glide/c;->n(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    nop

    const/4 v0, 0x5

    const-string v2, "Glide"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    :goto_0
    const-class v0, Lcom/bumptech/glide/c;

    monitor-enter v0

    .line 13
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    if-nez v2, :cond_1

    .line 14
    invoke-static {p0, v1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 15
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 16
    :cond_2
    :goto_1
    sget-object p0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/c;

    return-object p0
.end method

.method private static k(Landroid/content/Context;)Ljj;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/c;->g:Ljj;

    return-object p0
.end method

.method private static n(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static p(Landroid/content/Context;)Lcom/bumptech/glide/i;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/c;->g:Ljj;

    .line 4
    invoke-virtual {v0, p0}, Ljj;->f(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;)Lcom/bumptech/glide/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Ljj;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj;->g(Landroid/view/View;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->k(Landroid/content/Context;)Ljj;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj;->h(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/c;->g:Ljj;

    .line 4
    invoke-virtual {v0, p0}, Ljj;->i(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    invoke-static {}, Lhl;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lif;

    check-cast v0, Lel;

    invoke-virtual {v0}, Lel;->a()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lqe;

    invoke-interface {v0}, Lqe;->b()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Loe;

    invoke-interface {v0}, Loe;->b()V

    return-void
.end method

.method public d()Loe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Loe;

    return-object v0
.end method

.method public e()Lqe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lqe;

    return-object v0
.end method

.method f()Lbj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->h:Lbj;

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/bumptech/glide/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/e;

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->e:Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public j()Ljj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->g:Ljj;

    return-object v0
.end method

.method l(Lcom/bumptech/glide/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register already registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method m(Lnk;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/i;

    .line 3
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/i;->r(Lnk;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    .line 5
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method o(Lcom/bumptech/glide/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister not yet registered manager"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 1
    invoke-static {}, Lhl;->a()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/i;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->c:Lif;

    check-cast v0, Lhf;

    invoke-virtual {v0, p1}, Lhf;->j(I)V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/c;->b:Lqe;

    invoke-interface {v0, p1}, Lqe;->a(I)V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/c;->f:Loe;

    invoke-interface {v0, p1}, Loe;->a(I)V

    return-void
.end method
