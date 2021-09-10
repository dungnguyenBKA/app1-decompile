.class public final Ldi0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldi0$a;
    }
.end annotation


# instance fields
.field public final a:Lkg0;

.field private b:Lci0$a;

.field private c:Lnh0;

.field private final d:Ltg0;

.field public final e:Log0;

.field public final f:Lzg0;

.field private final g:Ljava/lang/Object;

.field private final h:Lci0;

.field private i:I

.field private j:Lzh0;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lgi0;


# direct methods
.method public constructor <init>(Ltg0;Lkg0;Log0;Lzg0;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldi0;->d:Ltg0;

    .line 3
    iput-object p2, p0, Ldi0;->a:Lkg0;

    .line 4
    iput-object p3, p0, Ldi0;->e:Log0;

    .line 5
    iput-object p4, p0, Ldi0;->f:Lzg0;

    .line 6
    new-instance v0, Lci0;

    .line 7
    sget-object v1, Lph0;->a:Lph0;

    invoke-virtual {v1, p1}, Lph0;->j(Ltg0;)Lai0;

    move-result-object p1

    .line 8
    invoke-direct {v0, p2, p1, p3, p4}, Lci0;-><init>(Lkg0;Lai0;Log0;Lzg0;)V

    iput-object v0, p0, Ldi0;->h:Lci0;

    .line 9
    iput-object p5, p0, Ldi0;->g:Ljava/lang/Object;

    return-void
.end method

.method private e(ZZZ)Ljava/net/Socket;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iput-object v0, p0, Ldi0;->n:Lgi0;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 2
    iput-boolean p3, p0, Ldi0;->l:Z

    .line 3
    :cond_1
    iget-object p2, p0, Ldi0;->j:Lzh0;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_2

    .line 4
    iput-boolean p3, p2, Lzh0;->k:Z

    .line 5
    :cond_2
    iget-object p1, p0, Ldi0;->n:Lgi0;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Ldi0;->l:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Lzh0;->k:Z

    if-eqz p1, :cond_7

    .line 6
    :cond_3
    iget-object p1, p2, Lzh0;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_6

    .line 7
    iget-object v1, p2, Lzh0;->n:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_5

    .line 9
    iget-object p1, p2, Lzh0;->n:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Ldi0;->j:Lzh0;

    iget-object p1, p1, Lzh0;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Ldi0;->j:Lzh0;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lzh0;->o:J

    .line 12
    sget-object p1, Lph0;->a:Lph0;

    iget-object p2, p0, Ldi0;->d:Ltg0;

    iget-object p3, p0, Ldi0;->j:Lzh0;

    invoke-virtual {p1, p2, p3}, Lph0;->e(Ltg0;Lzh0;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Ldi0;->j:Lzh0;

    invoke-virtual {p1}, Lzh0;->n()Ljava/net/Socket;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 14
    :goto_1
    iput-object v0, p0, Ldi0;->j:Lzh0;

    move-object v0, p1

    goto :goto_2

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private f(IIIIZZ)Lzh0;
    .locals 18

    move-object/from16 v1, p0

    .line 1
    :goto_0
    iget-object v2, v1, Ldi0;->d:Ltg0;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v0, v1, Ldi0;->l:Z

    if-nez v0, :cond_15

    .line 3
    iget-object v0, v1, Ldi0;->n:Lgi0;

    if-nez v0, :cond_14

    .line 4
    iget-boolean v0, v1, Ldi0;->m:Z

    if-nez v0, :cond_13

    .line 5
    iget-object v0, v1, Ldi0;->j:Lzh0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v6, v0, Lzh0;->k:Z

    if-eqz v6, :cond_0

    .line 7
    invoke-direct {v1, v4, v4, v5}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v3

    .line 8
    :goto_1
    iget-object v7, v1, Ldi0;->j:Lzh0;

    if-eqz v7, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_1
    move-object v7, v3

    .line 9
    :goto_2
    iget-boolean v8, v1, Ldi0;->k:Z

    if-nez v8, :cond_2

    move-object v0, v3

    :cond_2
    if-nez v7, :cond_4

    .line 10
    sget-object v8, Lph0;->a:Lph0;

    iget-object v9, v1, Ldi0;->d:Ltg0;

    iget-object v10, v1, Ldi0;->a:Lkg0;

    invoke-virtual {v8, v9, v10, v1, v3}, Lph0;->h(Ltg0;Lkg0;Ldi0;Lnh0;)Lzh0;

    .line 11
    iget-object v8, v1, Ldi0;->j:Lzh0;

    if-eqz v8, :cond_3

    move-object v7, v8

    const/4 v9, 0x1

    move-object v8, v3

    goto :goto_4

    .line 12
    :cond_3
    iget-object v8, v1, Ldi0;->c:Lnh0;

    goto :goto_3

    :cond_4
    move-object v8, v3

    :goto_3
    const/4 v9, 0x0

    .line 13
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    invoke-static {v6}, Lrh0;->h(Ljava/net/Socket;)V

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, v1, Ldi0;->f:Lzg0;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v9, :cond_6

    .line 17
    iget-object v0, v1, Ldi0;->f:Lzg0;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v7, :cond_7

    .line 19
    iget-object v0, v1, Ldi0;->j:Lzh0;

    invoke-virtual {v0}, Lzh0;->m()Lnh0;

    move-result-object v0

    iput-object v0, v1, Ldi0;->c:Lnh0;

    goto/16 :goto_8

    :cond_7
    if-nez v8, :cond_9

    .line 20
    iget-object v0, v1, Ldi0;->b:Lci0$a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lci0$a;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    :cond_8
    iget-object v0, v1, Ldi0;->h:Lci0;

    invoke-virtual {v0}, Lci0;->d()Lci0$a;

    move-result-object v0

    iput-object v0, v1, Ldi0;->b:Lci0$a;

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 22
    :goto_5
    iget-object v6, v1, Ldi0;->d:Ltg0;

    monitor-enter v6

    .line 23
    :try_start_1
    iget-boolean v2, v1, Ldi0;->m:Z

    if-nez v2, :cond_12

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, v1, Ldi0;->b:Lci0$a;

    invoke-virtual {v0}, Lci0$a;->a()Ljava/util/List;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v2, :cond_b

    .line 26
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnh0;

    .line 27
    sget-object v12, Lph0;->a:Lph0;

    iget-object v13, v1, Ldi0;->d:Ltg0;

    iget-object v14, v1, Ldi0;->a:Lkg0;

    invoke-virtual {v12, v13, v14, v1, v11}, Lph0;->h(Ltg0;Lkg0;Ldi0;Lnh0;)Lzh0;

    .line 28
    iget-object v12, v1, Ldi0;->j:Lzh0;

    if-eqz v12, :cond_a

    .line 29
    iput-object v11, v1, Ldi0;->c:Lnh0;

    move-object v7, v12

    const/4 v9, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-nez v9, :cond_d

    if-nez v8, :cond_c

    .line 30
    iget-object v0, v1, Ldi0;->b:Lci0$a;

    invoke-virtual {v0}, Lci0$a;->c()Lnh0;

    move-result-object v8

    .line 31
    :cond_c
    iput-object v8, v1, Ldi0;->c:Lnh0;

    .line 32
    iput v4, v1, Ldi0;->i:I

    .line 33
    new-instance v0, Lzh0;

    iget-object v2, v1, Ldi0;->d:Ltg0;

    invoke-direct {v0, v2, v8}, Lzh0;-><init>(Ltg0;Lnh0;)V

    .line 34
    invoke-virtual {v1, v0, v4}, Ldi0;->a(Lzh0;Z)V

    move-object v7, v0

    .line 35
    :cond_d
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_e

    .line 36
    iget-object v0, v1, Ldi0;->f:Lzg0;

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 38
    :cond_e
    iget-object v0, v1, Ldi0;->e:Log0;

    iget-object v2, v1, Ldi0;->f:Lzg0;

    move-object v10, v7

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lzh0;->d(IIIIZLog0;Lzg0;)V

    .line 39
    sget-object v0, Lph0;->a:Lph0;

    iget-object v2, v1, Ldi0;->d:Ltg0;

    invoke-virtual {v0, v2}, Lph0;->j(Ltg0;)Lai0;

    move-result-object v0

    .line 40
    invoke-virtual {v7}, Lzh0;->m()Lnh0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lai0;->a(Lnh0;)V

    .line 41
    iget-object v2, v1, Ldi0;->d:Ltg0;

    monitor-enter v2

    .line 42
    :try_start_2
    iput-boolean v5, v1, Ldi0;->k:Z

    .line 43
    sget-object v0, Lph0;->a:Lph0;

    iget-object v4, v1, Ldi0;->d:Ltg0;

    invoke-virtual {v0, v4, v7}, Lph0;->i(Ltg0;Lzh0;)V

    .line 44
    invoke-virtual {v7}, Lzh0;->k()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    sget-object v0, Lph0;->a:Lph0;

    iget-object v3, v1, Ldi0;->d:Ltg0;

    iget-object v4, v1, Ldi0;->a:Lkg0;

    invoke-virtual {v0, v3, v4, v1}, Lph0;->f(Ltg0;Lkg0;Ldi0;)Ljava/net/Socket;

    move-result-object v3

    .line 46
    iget-object v0, v1, Ldi0;->j:Lzh0;

    move-object v7, v0

    .line 47
    :cond_f
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    invoke-static {v3}, Lrh0;->h(Ljava/net/Socket;)V

    .line 49
    iget-object v0, v1, Ldi0;->f:Lzg0;

    .line 50
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_8
    iget-object v3, v1, Ldi0;->d:Ltg0;

    monitor-enter v3

    .line 52
    :try_start_3
    iget v0, v7, Lzh0;->l:I

    if-nez v0, :cond_10

    invoke-virtual {v7}, Lzh0;->k()Z

    move-result v0

    if-nez v0, :cond_10

    .line 53
    monitor-exit v3

    return-object v7

    .line 54
    :cond_10
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, p6

    .line 55
    invoke-virtual {v7, v0}, Lzh0;->j(Z)Z

    move-result v2

    if-nez v2, :cond_11

    .line 56
    invoke-virtual/range {p0 .. p0}, Ldi0;->i()V

    goto/16 :goto_0

    :cond_11
    return-object v7

    :catchall_0
    move-exception v0

    .line 57
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 58
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 59
    :cond_12
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 60
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 61
    :cond_13
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 64
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public a(Lzh0;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldi0;->j:Lzh0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ldi0;->j:Lzh0;

    .line 3
    iput-boolean p2, p0, Ldi0;->k:Z

    .line 4
    iget-object p1, p1, Lzh0;->n:Ljava/util/List;

    new-instance p2, Ldi0$a;

    iget-object v0, p0, Ldi0;->g:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Ldi0$a;-><init>(Ldi0;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldi0;->d:Ltg0;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Ldi0;->m:Z

    .line 3
    iget-object v1, p0, Ldi0;->n:Lgi0;

    .line 4
    iget-object v2, p0, Ldi0;->j:Lzh0;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lgi0;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lzh0;->c()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public c()Lgi0;
    .locals 2

    .line 1
    iget-object v0, p0, Ldi0;->d:Ltg0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldi0;->n:Lgi0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized d()Lzh0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldi0;->j:Lzh0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldi0;->c:Lnh0;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldi0;->b:Lci0$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lci0$a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Ldi0;->h:Lci0;

    .line 3
    invoke-virtual {v0}, Lci0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h(Lgh0;Leh0$a;Z)Lgi0;
    .locals 7

    .line 1
    check-cast p2, Lji0;

    invoke-virtual {p2}, Lji0;->b()I

    move-result v1

    .line 2
    invoke-virtual {p2}, Lji0;->h()I

    move-result v2

    .line 3
    invoke-virtual {p2}, Lji0;->k()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lgh0;->l()I

    move-result v4

    .line 5
    invoke-virtual {p1}, Lgh0;->r()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    .line 6
    :try_start_0
    invoke-direct/range {v0 .. v6}, Ldi0;->f(IIIIZZ)Lzh0;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2, p0}, Lzh0;->l(Lgh0;Leh0$a;Ldi0;)Lgi0;

    move-result-object p1

    .line 8
    iget-object p2, p0, Ldi0;->d:Ltg0;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iput-object p1, p0, Ldi0;->n:Lgi0;

    .line 10
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lbi0;

    invoke-direct {p2, p1}, Lbi0;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldi0;->d:Ltg0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldi0;->j:Lzh0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v2, v3, v3}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Ldi0;->j:Lzh0;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v2}, Lrh0;->h(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Ldi0;->f:Lzg0;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldi0;->d:Ltg0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldi0;->j:Lzh0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v3, v2, v3}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 4
    iget-object v3, p0, Ldi0;->j:Lzh0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v2}, Lrh0;->h(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lph0;->a:Lph0;

    iget-object v1, p0, Ldi0;->e:Log0;

    invoke-virtual {v0, v1, v4}, Lph0;->k(Log0;Ljava/io/IOException;)Ljava/io/IOException;

    .line 8
    iget-object v0, p0, Ldi0;->f:Lzg0;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Ldi0;->f:Lzg0;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k(Lzh0;)Ljava/net/Socket;
    .locals 3

    .line 1
    iget-object v0, p0, Ldi0;->n:Lgi0;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldi0;->j:Lzh0;

    iget-object v0, v0, Lzh0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ldi0;->j:Lzh0;

    iget-object v0, v0, Lzh0;->n:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 3
    invoke-direct {p0, v1, v2, v2}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 4
    iput-object p1, p0, Ldi0;->j:Lzh0;

    .line 5
    iget-object p1, p1, Lzh0;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public l()Lnh0;
    .locals 1

    .line 1
    iget-object v0, p0, Ldi0;->c:Lnh0;

    return-object v0
.end method

.method public m(Ljava/io/IOException;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ldi0;->d:Ltg0;

    monitor-enter v0

    .line 2
    :try_start_0
    instance-of v1, p1, Lfj0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Lfj0;

    iget-object p1, p1, Lfj0;->b:Lqi0;

    .line 4
    sget-object v1, Lqi0;->g:Lqi0;

    if-ne p1, v1, :cond_0

    .line 5
    iget p1, p0, Ldi0;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Ldi0;->i:I

    if-le p1, v4, :cond_5

    .line 6
    iput-object v3, p0, Ldi0;->c:Lnh0;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lqi0;->h:Lqi0;

    if-eq p1, v1, :cond_5

    .line 8
    iput-object v3, p0, Ldi0;->c:Lnh0;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Ldi0;->j:Lzh0;

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v1}, Lzh0;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lpi0;

    if-eqz v1, :cond_5

    .line 11
    :cond_2
    iget-object v1, p0, Ldi0;->j:Lzh0;

    iget v1, v1, Lzh0;->l:I

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Ldi0;->c:Lnh0;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 13
    iget-object v5, p0, Ldi0;->h:Lci0;

    invoke-virtual {v5, v1, p1}, Lci0;->a(Lnh0;Ljava/io/IOException;)V

    .line 14
    :cond_3
    iput-object v3, p0, Ldi0;->c:Lnh0;

    :cond_4
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 15
    :goto_1
    iget-object v1, p0, Ldi0;->j:Lzh0;

    .line 16
    invoke-direct {p0, p1, v2, v4}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 17
    iget-object v2, p0, Ldi0;->j:Lzh0;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Ldi0;->k:Z

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v1

    .line 18
    :cond_7
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {p1}, Lrh0;->h(Ljava/net/Socket;)V

    if-eqz v3, :cond_8

    .line 20
    iget-object p1, p0, Ldi0;->f:Lzg0;

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(ZLgi0;JLjava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p3, p0, Ldi0;->f:Lzg0;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p3, p0, Ldi0;->d:Ltg0;

    monitor-enter p3

    if-eqz p2, :cond_5

    .line 4
    :try_start_0
    iget-object p4, p0, Ldi0;->n:Lgi0;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 5
    iget-object p4, p0, Ldi0;->j:Lzh0;

    iget v0, p4, Lzh0;->l:I

    add-int/2addr v0, p2

    iput v0, p4, Lzh0;->l:I

    .line 6
    :cond_0
    iget-object p4, p0, Ldi0;->j:Lzh0;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Ldi0;->e(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 8
    iget-object p2, p0, Ldi0;->j:Lzh0;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p4, v0

    .line 9
    :cond_1
    iget-boolean p2, p0, Ldi0;->l:Z

    .line 10
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {p1}, Lrh0;->h(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    .line 12
    iget-object p1, p0, Ldi0;->f:Lzg0;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    .line 14
    sget-object p1, Lph0;->a:Lph0;

    iget-object p2, p0, Ldi0;->e:Log0;

    invoke-virtual {p1, p2, p5}, Lph0;->k(Log0;Ljava/io/IOException;)Ljava/io/IOException;

    .line 15
    iget-object p1, p0, Ldi0;->f:Lzg0;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 17
    sget-object p1, Lph0;->a:Lph0;

    iget-object p2, p0, Ldi0;->e:Log0;

    invoke-virtual {p1, p2, v0}, Lph0;->k(Log0;Ljava/io/IOException;)Ljava/io/IOException;

    .line 18
    iget-object p1, p0, Ldi0;->f:Lzg0;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void

    .line 20
    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Ldi0;->n:Lgi0;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldi0;->d()Lzh0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzh0;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldi0;->a:Lkg0;

    invoke-virtual {v0}, Lkg0;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
