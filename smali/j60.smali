.class public final Lj60;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj60$a;
    }
.end annotation


# static fields
.field private static final m:Lz80;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz80<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lz80<",
            "*>;",
            "Lj60$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz80<",
            "*>;",
            "Lz60<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lj70;

.field private final d:Lh80;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La70;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Z

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La70;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La70;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lz80;->get(Ljava/lang/Class;)Lz80;

    move-result-object v0

    sput-object v0, Lj60;->m:Lz80;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lr70;->d:Lr70;

    sget-object v2, Lc60;->b:Lc60;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Ly60;->b:Ly60;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Lj60;-><init>(Lr70;Ld60;Ljava/util/Map;ZZZZZZZLy60;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lr70;Ld60;Ljava/util/Map;ZZZZZZZLy60;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr70;",
            "Ld60;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ll60<",
            "*>;>;ZZZZZZZ",
            "Ly60;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "La70;",
            ">;",
            "Ljava/util/List<",
            "La70;",
            ">;",
            "Ljava/util/List<",
            "La70;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v2, v0, Lj60;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lj60;->b:Ljava/util/Map;

    .line 9
    new-instance v2, Lj70;

    move-object v3, p3

    invoke-direct {v2, p3}, Lj70;-><init>(Ljava/util/Map;)V

    iput-object v2, v0, Lj60;->c:Lj70;

    move v3, p4

    .line 10
    iput-boolean v3, v0, Lj60;->f:Z

    move v3, p6

    .line 11
    iput-boolean v3, v0, Lj60;->g:Z

    move v3, p7

    .line 12
    iput-boolean v3, v0, Lj60;->h:Z

    move/from16 v3, p8

    .line 13
    iput-boolean v3, v0, Lj60;->i:Z

    move/from16 v3, p9

    .line 14
    iput-boolean v3, v0, Lj60;->j:Z

    move-object/from16 v3, p15

    .line 15
    iput-object v3, v0, Lj60;->k:Ljava/util/List;

    move-object/from16 v3, p16

    .line 16
    iput-object v3, v0, Lj60;->l:Ljava/util/List;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget-object v4, Ls80;->Y:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v4, Ll80;->b:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p17

    .line 21
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    sget-object v4, Ls80;->D:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v4, Ls80;->m:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v4, Ls80;->g:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v4, Ls80;->i:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Ls80;->k:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v4, Ly60;->b:Ly60;

    move-object/from16 v5, p11

    if-ne v5, v4, :cond_0

    .line 28
    sget-object v4, Ls80;->t:Lz60;

    goto :goto_0

    .line 29
    :cond_0
    new-instance v4, Lg60;

    invoke-direct {v4}, Lg60;-><init>()V

    .line 30
    :goto_0
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    invoke-static {v5, v6, v4}, Ls80;->b(Ljava/lang/Class;Ljava/lang/Class;Lz60;)La70;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    if-eqz p10, :cond_1

    .line 32
    sget-object v7, Ls80;->v:Lz60;

    goto :goto_1

    .line 33
    :cond_1
    new-instance v7, Le60;

    invoke-direct {v7, p0}, Le60;-><init>(Lj60;)V

    .line 34
    :goto_1
    invoke-static {v5, v6, v7}, Ls80;->b(Ljava/lang/Class;Ljava/lang/Class;Lz60;)La70;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    if-eqz p10, :cond_2

    .line 36
    sget-object v7, Ls80;->u:Lz60;

    goto :goto_2

    .line 37
    :cond_2
    new-instance v7, Lf60;

    invoke-direct {v7, p0}, Lf60;-><init>(Lj60;)V

    .line 38
    :goto_2
    invoke-static {v5, v6, v7}, Ls80;->b(Ljava/lang/Class;Ljava/lang/Class;Lz60;)La70;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, Ls80;->x:La70;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v5, Ls80;->o:La70;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v5, Ls80;->q:La70;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    new-instance v6, Lh60;

    invoke-direct {v6, v4}, Lh60;-><init>(Lz60;)V

    .line 44
    new-instance v7, Lz60$a;

    invoke-direct {v7, v6}, Lz60$a;-><init>(Lz60;)V

    .line 45
    invoke-static {v5, v7}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 47
    new-instance v6, Li60;

    invoke-direct {v6, v4}, Li60;-><init>(Lz60;)V

    .line 48
    new-instance v4, Lz60$a;

    invoke-direct {v4, v6}, Lz60$a;-><init>(Lz60;)V

    .line 49
    invoke-static {v5, v4}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v4, Ls80;->s:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v4, Ls80;->z:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v4, Ls80;->F:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v4, Ls80;->H:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v4, Ljava/math/BigDecimal;

    sget-object v5, Ls80;->B:Lz60;

    invoke-static {v4, v5}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-class v4, Ljava/math/BigInteger;

    sget-object v5, Ls80;->C:Lz60;

    invoke-static {v4, v5}, Ls80;->a(Ljava/lang/Class;Lz60;)La70;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v4, Ls80;->J:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v4, Ls80;->L:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v4, Ls80;->P:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Ls80;->R:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v4, Ls80;->W:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v4, Ls80;->N:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v4, Ls80;->d:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v4, Lg80;->b:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v4, Ls80;->U:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v4, Lp80;->b:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v4, Lo80;->b:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v4, Ls80;->S:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v4, Le80;->c:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v4, Ls80;->b:La70;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v4, Lf80;

    invoke-direct {v4, v2}, Lf80;-><init>(Lj70;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v4, Lk80;

    move v5, p5

    invoke-direct {v4, v2, p5}, Lk80;-><init>(Lj70;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lh80;

    invoke-direct {v4, v2}, Lh80;-><init>(Lj70;)V

    iput-object v4, v0, Lj60;->d:Lh80;

    .line 73
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v5, Ls80;->Z:La70;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v5, Ln80;

    move-object v6, p2

    invoke-direct {v5, v2, p2, p1, v4}, Ln80;-><init>(Lj70;Ld60;Lr70;Lh80;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lj60;->e:Ljava/util/List;

    return-void
.end method

.method static a(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(La90;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La90;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, La90;->k0()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, La90;->A0(Z)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, La90;->x0()Lb90;

    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lj60;->e(Lz80;)Lz60;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, v0}, La90;->A0(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    :catch_1
    move-exception p2

    .line 11
    new-instance v1, Lx60;

    invoke-direct {v1, p2}, Lx60;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 12
    new-instance v1, Lx60;

    invoke-direct {v1, p2}, Lx60;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, v0}, La90;->A0(Z)V

    return-object p2

    .line 14
    :cond_0
    :try_start_2
    new-instance v1, Lx60;

    invoke-direct {v1, p2}, Lx60;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, La90;->A0(Z)V

    .line 16
    throw p2
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lj60;->d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Landroidx/core/app/b;->P0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, La90;

    invoke-direct {p1, v0}, La90;-><init>(Ljava/io/Reader;)V

    .line 3
    iget-boolean v0, p0, Lj60;->j:Z

    invoke-virtual {p1, v0}, La90;->A0(Z)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lj60;->b(La90;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object p1

    sget-object v0, Lb90;->k:Lb90;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lq60;

    const-string p2, "JSON document was not fully consumed."

    invoke-direct {p1, p2}, Lq60;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ld90; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lq60;

    invoke-direct {p2, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8
    new-instance p2, Lx60;

    invoke-direct {p2, p1}, Lx60;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public e(Lz80;)Lz60;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz80<",
            "TT;>;)",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj60;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lj60;->m:Lz80;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz60;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lj60;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lj60;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj60$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 6
    :cond_3
    :try_start_0
    new-instance v2, Lj60$a;

    invoke-direct {v2}, Lj60$a;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lj60;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La70;

    .line 9
    invoke-interface {v4, p0, p1}, La70;->a(Lj60;Lz80;)Lz60;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v2, v4}, Lj60$a;->d(Lz60;)V

    .line 11
    iget-object v2, p0, Lj60;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 13
    iget-object p1, p0, Lj60;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 14
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.6) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 16
    iget-object p1, p0, Lj60;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 17
    :cond_7
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public f(La70;Lz80;)Lz60;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La70;",
            "Lz80<",
            "TT;>;)",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj60;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lj60;->d:Lh80;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lj60;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La70;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, La70;->a(Lj60;Lz80;)Lz60;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public g(Ljava/io/Writer;)Lc90;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj60;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lc90;

    invoke-direct {v0, p1}, Lc90;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Lj60;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    invoke-virtual {v0, p1}, Lc90;->s0(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lj60;->f:Z

    invoke-virtual {v0, p1}, Lc90;->u0(Z)V

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lr60;->a:Lr60;

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    :try_start_0
    invoke-static {v0}, Lx70;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj60;->g(Ljava/io/Writer;)Lc90;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p1, v1}, Lj60;->j(Lp60;Lc90;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lq60;

    invoke-direct {v0, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj60;->i(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    :try_start_0
    invoke-static {v0}, Lx70;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lj60;->g(Ljava/io/Writer;)Lc90;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Lj60;->k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc90;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lq60;

    invoke-direct {p2, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public j(Lp60;Lc90;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lc90;->k0()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Lc90;->t0(Z)V

    .line 3
    invoke-virtual {p2}, Lc90;->j0()Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Lj60;->h:Z

    invoke-virtual {p2, v2}, Lc90;->r0(Z)V

    .line 5
    invoke-virtual {p2}, Lc90;->i0()Z

    move-result v2

    .line 6
    iget-boolean v3, p0, Lj60;->f:Z

    invoke-virtual {p2, v3}, Lc90;->u0(Z)V

    .line 7
    :try_start_0
    sget-object v3, Ls80;->X:Lz60;

    invoke-virtual {v3, p2, p1}, Lz60;->c(Lc90;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p2, v0}, Lc90;->t0(Z)V

    .line 9
    invoke-virtual {p2, v1}, Lc90;->r0(Z)V

    .line 10
    invoke-virtual {p2, v2}, Lc90;->u0(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw v3

    :catch_1
    move-exception p1

    .line 14
    new-instance v3, Lq60;

    invoke-direct {v3, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p2, v0}, Lc90;->t0(Z)V

    .line 16
    invoke-virtual {p2, v1}, Lc90;->r0(Z)V

    .line 17
    invoke-virtual {p2, v2}, Lc90;->u0(Z)V

    .line 18
    throw p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc90;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object p2

    invoke-virtual {p0, p2}, Lj60;->e(Lz80;)Lz60;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lc90;->k0()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Lc90;->t0(Z)V

    .line 4
    invoke-virtual {p3}, Lc90;->j0()Z

    move-result v1

    .line 5
    iget-boolean v2, p0, Lj60;->h:Z

    invoke-virtual {p3, v2}, Lc90;->r0(Z)V

    .line 6
    invoke-virtual {p3}, Lc90;->i0()Z

    move-result v2

    .line 7
    iget-boolean v3, p0, Lj60;->f:Z

    invoke-virtual {p3, v3}, Lc90;->u0(Z)V

    .line 8
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lz60;->c(Lc90;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p3, v0}, Lc90;->t0(Z)V

    .line 10
    invoke-virtual {p3, v1}, Lc90;->r0(Z)V

    .line 11
    invoke-virtual {p3, v2}, Lc90;->u0(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw p2

    :catch_1
    move-exception p1

    .line 15
    new-instance p2, Lq60;

    invoke-direct {p2, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    invoke-virtual {p3, v0}, Lc90;->t0(Z)V

    .line 17
    invoke-virtual {p3, v1}, Lc90;->r0(Z)V

    .line 18
    invoke-virtual {p3, v2}, Lc90;->u0(Z)V

    .line 19
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lj60;->f:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj60;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj60;->c:Lj70;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
