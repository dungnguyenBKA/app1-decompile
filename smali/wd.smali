.class public Lwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd;
.implements Lif$a;
.implements Lbe$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwd$b;,
        Lwd$a;,
        Lwd$c;,
        Lwd$d;
    }
.end annotation


# static fields
.field private static final i:Z


# instance fields
.field private final a:Lee;

.field private final b:Lae;

.field private final c:Lif;

.field private final d:Lwd$b;

.field private final e:Lke;

.field private final f:Lwd$c;

.field private final g:Lwd$a;

.field private final h:Lld;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lwd;->i:Z

    return-void
.end method

.method public constructor <init>(Lif;Laf$a;Llf;Llf;Llf;Llf;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwd;->c:Lif;

    .line 3
    new-instance v0, Lwd$c;

    invoke-direct {v0, p2}, Lwd$c;-><init>(Laf$a;)V

    iput-object v0, p0, Lwd;->f:Lwd$c;

    .line 4
    new-instance p2, Lld;

    invoke-direct {p2, p7}, Lld;-><init>(Z)V

    .line 5
    iput-object p2, p0, Lwd;->h:Lld;

    .line 6
    invoke-virtual {p2, p0}, Lld;->d(Lbe$a;)V

    .line 7
    new-instance p2, Lae;

    invoke-direct {p2}, Lae;-><init>()V

    .line 8
    iput-object p2, p0, Lwd;->b:Lae;

    .line 9
    new-instance p2, Lee;

    invoke-direct {p2}, Lee;-><init>()V

    .line 10
    iput-object p2, p0, Lwd;->a:Lee;

    .line 11
    new-instance p2, Lwd$b;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lwd$b;-><init>(Llf;Llf;Llf;Llf;Lyd;Lbe$a;)V

    .line 12
    iput-object p2, p0, Lwd;->d:Lwd$b;

    .line 13
    new-instance p2, Lwd$a;

    invoke-direct {p2, v0}, Lwd$a;-><init>(Ltd$d;)V

    .line 14
    iput-object p2, p0, Lwd;->g:Lwd$a;

    .line 15
    new-instance p2, Lke;

    invoke-direct {p2}, Lke;-><init>()V

    .line 16
    iput-object p2, p0, Lwd;->e:Lke;

    .line 17
    check-cast p1, Lhf;

    invoke-virtual {p1, p0}, Lhf;->i(Lif$a;)V

    return-void
.end method

.method private c(Lzd;ZJ)Lbe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzd;",
            "ZJ)",
            "Lbe<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Lwd;->h:Lld;

    .line 2
    monitor-enter p2

    .line 3
    :try_start_0
    iget-object v1, p2, Lld;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 4
    monitor-exit p2

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe;

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p2, v1}, Lld;->c(Lld$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_2
    monitor-exit p2

    :goto_0
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Lbe;->b()V

    :cond_3
    if-eqz v2, :cond_5

    .line 9
    sget-boolean p2, Lwd;->i:Z

    if-eqz p2, :cond_4

    const-string p2, "Loaded resource from active resources"

    .line 10
    invoke-static {p2, p3, p4, p1}, Lwd;->d(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_4
    return-object v2

    .line 11
    :cond_5
    iget-object p2, p0, Lwd;->c:Lif;

    check-cast p2, Lhf;

    .line 12
    invoke-virtual {p2, p1}, Lel;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lhe;

    if-nez v2, :cond_6

    move-object v2, v0

    goto :goto_1

    .line 13
    :cond_6
    instance-of p2, v2, Lbe;

    if-eqz p2, :cond_7

    .line 14
    check-cast v2, Lbe;

    goto :goto_1

    .line 15
    :cond_7
    new-instance p2, Lbe;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lbe;-><init>(Lhe;ZZLcom/bumptech/glide/load/g;Lbe$a;)V

    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {v2}, Lbe;->b()V

    .line 17
    iget-object p2, p0, Lwd;->h:Lld;

    invoke-virtual {p2, p1, v2}, Lld;->a(Lcom/bumptech/glide/load/g;Lbe;)V

    :cond_8
    if-eqz v2, :cond_a

    .line 18
    sget-boolean p2, Lwd;->i:Z

    if-eqz p2, :cond_9

    const-string p2, "Loaded resource from cache"

    .line 19
    invoke-static {p2, p3, p4, p1}, Lwd;->d(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_9
    return-object v2

    :cond_a
    return-object v0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p2

    throw p1
.end method

.method private static d(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V
    .locals 1

    const-string v0, " in "

    .line 1
    invoke-static {p0, v0}, Lic;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Ldl;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private i(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLdk;Ljava/util/concurrent/Executor;Lzd;J)Lwd$d;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lvd;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/i;",
            "ZZZZ",
            "Ldk;",
            "Ljava/util/concurrent/Executor;",
            "Lzd;",
            "J)",
            "Lwd$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v15, p20

    move-wide/from16 v13, p21

    .line 1
    iget-object v3, v0, Lwd;->a:Lee;

    move/from16 v12, p17

    invoke-virtual {v3, v15, v12}, Lee;->a(Lcom/bumptech/glide/load/g;Z)Lxd;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3, v1, v2}, Lxd;->a(Ldk;Ljava/util/concurrent/Executor;)V

    .line 3
    sget-boolean v2, Lwd;->i:Z

    if-eqz v2, :cond_0

    const-string v2, "Added to existing load"

    .line 4
    invoke-static {v2, v13, v14, v15}, Lwd;->d(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    .line 5
    :cond_0
    new-instance v2, Lwd$d;

    invoke-direct {v2, v0, v1, v3}, Lwd$d;-><init>(Lwd;Ldk;Lxd;)V

    return-object v2

    .line 6
    :cond_1
    iget-object v3, v0, Lwd;->d:Lwd$b;

    .line 7
    iget-object v3, v3, Lwd$b;->g:Lk2;

    invoke-interface {v3}, Lk2;->b()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lxd;

    move-object/from16 v25, v11

    const-string v3, "Argument must not be null"

    .line 8
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    move-object/from16 v4, p20

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    .line 9
    invoke-virtual/range {v3 .. v8}, Lxd;->e(Lcom/bumptech/glide/load/g;ZZZZ)Lxd;

    .line 10
    iget-object v9, v0, Lwd;->g:Lwd$a;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p20

    move-wide v4, v13

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object v6, v15

    move/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p17

    move-object/from16 v24, p13

    .line 11
    invoke-virtual/range {v9 .. v25}, Lwd$a;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lzd;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Ltd$a;)Ltd;

    move-result-object v7

    .line 12
    iget-object v8, v0, Lwd;->a:Lee;

    invoke-virtual {v8, v6, v3}, Lee;->c(Lcom/bumptech/glide/load/g;Lxd;)V

    .line 13
    invoke-virtual {v3, v1, v2}, Lxd;->a(Ldk;Ljava/util/concurrent/Executor;)V

    .line 14
    invoke-virtual {v3, v7}, Lxd;->m(Ltd;)V

    .line 15
    sget-boolean v2, Lwd;->i:Z

    if-eqz v2, :cond_2

    const-string v2, "Started new load"

    .line 16
    invoke-static {v2, v4, v5, v6}, Lwd;->d(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    .line 17
    :cond_2
    new-instance v2, Lwd$d;

    invoke-direct {v2, v0, v1, v3}, Lwd$d;-><init>(Lwd;Ldk;Lxd;)V

    return-object v2
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Lbe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lbe<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwd;->h:Lld;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lld;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld$b;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lld$b;->c:Lhe;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit v0

    .line 7
    invoke-virtual {p2}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lwd;->c:Lif;

    check-cast v0, Lhf;

    .line 9
    invoke-virtual {v0, p1, p2}, Lel;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhe;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lwd;->e:Lke;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lke;->a(Lhe;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public b(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLdk;Ljava/util/concurrent/Executor;)Lwd$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lvd;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/i;",
            "ZZZZ",
            "Ldk;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lwd$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    sget-boolean v0, Lwd;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Ldl;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v13, v0

    .line 3
    iget-object v0, v15, Lwd;->b:Lae;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lzd;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, Lzd;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    .line 6
    monitor-enter p0

    move/from16 v12, p14

    .line 7
    :try_start_0
    invoke-direct {v15, v0, v12, v13, v14}, Lwd;->c(Lzd;ZJ)Lbe;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    .line 8
    invoke-direct/range {v1 .. v23}, Lwd;->i(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLdk;Ljava/util/concurrent/Executor;Lzd;J)Lwd$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    move-object/from16 v2, p18

    check-cast v2, Lek;

    invoke-virtual {v2, v1, v0}, Lek;->n(Lhe;Lcom/bumptech/glide/load/a;)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(Lxd;Lcom/bumptech/glide/load/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxd<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwd;->a:Lee;

    invoke-virtual {v0, p2, p1}, Lee;->d(Lcom/bumptech/glide/load/g;Lxd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Lxd;Lcom/bumptech/glide/load/g;Lbe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxd<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            "Lbe<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lbe;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lwd;->h:Lld;

    invoke-virtual {v0, p2, p3}, Lld;->a(Lcom/bumptech/glide/load/g;Lbe;)V

    .line 3
    :cond_0
    iget-object p3, p0, Lwd;->a:Lee;

    invoke-virtual {p3, p2, p1}, Lee;->d(Lcom/bumptech/glide/load/g;Lxd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lhe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwd;->e:Lke;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lke;->a(Lhe;Z)V

    return-void
.end method

.method public h(Lhe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lbe;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lbe;

    invoke-virtual {p1}, Lbe;->g()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
