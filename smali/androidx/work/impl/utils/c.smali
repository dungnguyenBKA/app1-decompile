.class public Landroidx/work/impl/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/f;

.field private final c:Landroidx/work/impl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Landroidx/work/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/c;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    .line 3
    new-instance p1, Landroidx/work/impl/b;

    invoke-direct {p1}, Landroidx/work/impl/b;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/c;->c:Landroidx/work/impl/b;

    return-void
.end method

.method private static b(Landroidx/work/impl/f;)Z
    .locals 24

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/work/impl/f;

    .line 3
    invoke-virtual {v4}, Landroidx/work/impl/f;->j()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-static {v4}, Landroidx/work/impl/utils/c;->b(Landroidx/work/impl/f;)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/utils/c;->d:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v4}, Landroidx/work/impl/f;->c()Ljava/util/List;

    move-result-object v4

    const-string v8, ", "

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const-string v4, "Already enqueued work ids (%s)."

    .line 7
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v4, v7}, Landroidx/work/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 8
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/f;->l(Landroidx/work/impl/f;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->g()Landroidx/work/impl/i;

    move-result-object v4

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->f()Ljava/util/List;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    .line 11
    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->d()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->b()Landroidx/work/f;

    move-result-object v7

    .line 14
    sget-object v8, Landroidx/work/m;->b:Landroidx/work/m;

    sget-object v9, Landroidx/work/m;->d:Landroidx/work/m;

    sget-object v10, Landroidx/work/m;->g:Landroidx/work/m;

    sget-object v11, Landroidx/work/m;->e:Landroidx/work/m;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 16
    invoke-virtual {v4}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v14

    if-eqz v0, :cond_3

    .line 17
    array-length v15, v0

    if-lez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_9

    .line 18
    array-length v2, v0

    const/4 v1, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ge v1, v2, :cond_8

    move/from16 v20, v2

    aget-object v2, v0, v1

    .line 19
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v21

    move/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Le6;

    invoke-virtual {v3, v2}, Le6;->j(Ljava/lang/String;)Lc6;

    move-result-object v3

    if-nez v3, :cond_4

    .line 20
    invoke-static {}, Landroidx/work/h;->c()Landroidx/work/h;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/c;->d:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 21
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 23
    :cond_4
    iget-object v2, v3, Lc6;->b:Landroidx/work/m;

    if-ne v2, v9, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    and-int v17, v17, v3

    if-ne v2, v11, :cond_6

    const/16 v18, 0x1

    goto :goto_4

    :cond_6
    if-ne v2, v10, :cond_7

    const/16 v19, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v20

    move/from16 v3, v22

    goto :goto_2

    :cond_8
    move/from16 v22, v3

    goto :goto_5

    :cond_9
    move/from16 v22, v3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 24
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_a

    if-nez v15, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_16

    .line 25
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v2

    check-cast v2, Le6;

    invoke-virtual {v2, v6}, Le6;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_16

    .line 27
    sget-object v3, Landroidx/work/f;->d:Landroidx/work/f;

    if-ne v7, v3, :cond_11

    .line 28
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->p()Lu5;

    move-result-object v3

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc6$a;

    move-object/from16 v20, v2

    .line 31
    iget-object v2, v15, Lc6$a;->a:Ljava/lang/String;

    move/from16 v21, v1

    move-object v1, v3

    check-cast v1, Lv5;

    invoke-virtual {v1, v2}, Lv5;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 32
    iget-object v1, v15, Lc6$a;->b:Landroidx/work/m;

    if-ne v1, v9, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    and-int v2, v2, v17

    if-ne v1, v11, :cond_c

    const/16 v18, 0x1

    goto :goto_9

    :cond_c
    if-ne v1, v10, :cond_d

    const/16 v19, 0x1

    .line 33
    :cond_d
    :goto_9
    iget-object v1, v15, Lc6$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v2

    :cond_e
    move-object/from16 v2, v20

    move/from16 v1, v21

    goto :goto_7

    :cond_f
    move/from16 v21, v1

    .line 34
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 35
    array-length v1, v0

    const/4 v3, 0x0

    if-lez v1, :cond_10

    const/4 v15, 0x1

    goto :goto_c

    :cond_10
    const/4 v15, 0x0

    goto :goto_c

    :cond_11
    move/from16 v21, v1

    .line 36
    sget-object v1, Landroidx/work/f;->c:Landroidx/work/f;

    if-ne v7, v1, :cond_14

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6$a;

    .line 38
    iget-object v3, v3, Lc6$a;->b:Landroidx/work/m;

    if-eq v3, v8, :cond_13

    sget-object v7, Landroidx/work/m;->c:Landroidx/work/m;

    if-ne v3, v7, :cond_12

    :cond_13
    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 39
    :cond_14
    new-instance v1, Landroidx/work/impl/utils/b;

    const/4 v3, 0x0

    invoke-direct {v1, v4, v6, v3}, Landroidx/work/impl/utils/b;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v1}, Landroidx/work/impl/utils/a;->run()V

    .line 41
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v1

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc6$a;

    .line 43
    iget-object v7, v7, Lc6$a;->a:Ljava/lang/String;

    move-object v9, v1

    check-cast v9, Le6;

    invoke-virtual {v9, v7}, Le6;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    const/4 v1, 0x1

    goto :goto_d

    :cond_16
    move/from16 v21, v1

    const/4 v3, 0x0

    :goto_c
    const/4 v1, 0x0

    .line 44
    :goto_d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/o;

    .line 45
    invoke-virtual {v5}, Landroidx/work/o;->c()Lc6;

    move-result-object v7

    if-eqz v15, :cond_19

    if-nez v17, :cond_19

    if-eqz v18, :cond_17

    .line 46
    iput-object v11, v7, Lc6;->b:Landroidx/work/m;

    goto :goto_f

    :cond_17
    if-eqz v19, :cond_18

    .line 47
    iput-object v10, v7, Lc6;->b:Landroidx/work/m;

    goto :goto_f

    .line 48
    :cond_18
    sget-object v9, Landroidx/work/m;->f:Landroidx/work/m;

    iput-object v9, v7, Lc6;->b:Landroidx/work/m;

    goto :goto_f

    .line 49
    :cond_19
    invoke-virtual {v7}, Lc6;->d()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 50
    iput-wide v12, v7, Lc6;->n:J

    :goto_f
    move-object v9, v4

    goto :goto_10

    :cond_1a
    move-object v9, v4

    const-wide/16 v3, 0x0

    .line 51
    iput-wide v3, v7, Lc6;->n:J

    .line 52
    :goto_10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1b

    const/16 v4, 0x19

    if-gt v3, v4, :cond_1b

    .line 53
    invoke-static {v7}, Landroidx/work/impl/utils/c;->c(Lc6;)V

    goto :goto_13

    :cond_1b
    const/16 v4, 0x16

    if-gt v3, v4, :cond_1e

    const-string v3, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 54
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 55
    invoke-virtual {v9}, Landroidx/work/impl/i;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroidx/work/impl/d;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v23, v1

    .line 56
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1c

    const/4 v3, 0x1

    goto :goto_12

    :cond_1c
    move/from16 v1, v23

    goto :goto_11

    :catch_0
    :cond_1d
    move/from16 v23, v1

    :catch_1
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_1f

    .line 57
    invoke-static {v7}, Landroidx/work/impl/utils/c;->c(Lc6;)V

    goto :goto_14

    :cond_1e
    :goto_13
    move/from16 v23, v1

    .line 58
    :cond_1f
    :goto_14
    iget-object v1, v7, Lc6;->b:Landroidx/work/m;

    if-ne v1, v8, :cond_20

    const/4 v1, 0x1

    goto :goto_15

    :cond_20
    move/from16 v1, v23

    .line 59
    :goto_15
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->t()Ld6;

    move-result-object v3

    check-cast v3, Le6;

    invoke-virtual {v3, v7}, Le6;->m(Lc6;)V

    if-eqz v15, :cond_21

    .line 60
    array-length v3, v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_21

    aget-object v7, v0, v4

    move-object/from16 v20, v0

    .line 61
    new-instance v0, Lt5;

    move/from16 v23, v1

    invoke-virtual {v5}, Landroidx/work/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lt5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->p()Lu5;

    move-result-object v1

    check-cast v1, Lv5;

    invoke-virtual {v1, v0}, Lv5;->d(Lt5;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    goto :goto_16

    :cond_21
    move-object/from16 v20, v0

    move/from16 v23, v1

    .line 63
    invoke-virtual {v5}, Landroidx/work/o;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->u()Lg6;

    move-result-object v3

    new-instance v4, Lf6;

    invoke-virtual {v5}, Landroidx/work/o;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lf6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lh6;

    invoke-virtual {v3, v4}, Lh6;->b(Lf6;)V

    goto :goto_17

    :cond_22
    if-eqz v21, :cond_23

    .line 65
    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->s()La6;

    move-result-object v0

    new-instance v1, Lz5;

    invoke-virtual {v5}, Landroidx/work/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v3}, Lz5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lb6;

    invoke-virtual {v0, v1}, Lb6;->a(Lz5;)V

    :cond_23
    move-object v4, v9

    move-object/from16 v0, v20

    move/from16 v1, v23

    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_24
    move/from16 v23, v1

    move/from16 v2, v23

    .line 66
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f;->k()V

    or-int v0, v22, v2

    return v0
.end method

.method private static c(Lc6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc6;->j:Landroidx/work/c;

    .line 2
    invoke-virtual {v0}, Landroidx/work/c;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/work/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc6;->c:Ljava/lang/String;

    .line 4
    new-instance v1, Landroidx/work/e$a;

    invoke-direct {v1}, Landroidx/work/e$a;-><init>()V

    .line 5
    iget-object v2, p0, Lc6;->e:Landroidx/work/e;

    invoke-virtual {v1, v2}, Landroidx/work/e$a;->b(Landroidx/work/e;)Landroidx/work/e$a;

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroidx/work/e$a;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    .line 7
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc6;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    iput-object v0, p0, Lc6;->e:Landroidx/work/e;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroidx/work/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/c;->c:Landroidx/work/impl/b;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->g()Landroidx/work/impl/i;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/room/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    invoke-static {v2}, Landroidx/work/impl/utils/c;->b(Landroidx/work/impl/f;)Z

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroidx/room/g;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    if-eqz v2, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/f;->g()Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroid/content/Context;

    move-result-object v0

    .line 10
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/e;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 11
    iget-object v0, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->g()Landroidx/work/impl/i;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroidx/work/impl/i;->i()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Landroidx/work/impl/i;->h()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {v1, v2, v0}, Landroidx/work/impl/e;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/c;->c:Landroidx/work/impl/b;

    sget-object v1, Landroidx/work/k;->a:Landroidx/work/k$b$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/b;->a(Landroidx/work/k$b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 17
    invoke-virtual {v0}, Landroidx/room/g;->g()V

    .line 18
    throw v1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/c;->b:Landroidx/work/impl/f;

    aput-object v4, v1, v3

    .line 20
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 21
    iget-object v1, p0, Landroidx/work/impl/utils/c;->c:Landroidx/work/impl/b;

    new-instance v2, Landroidx/work/k$b$a;

    invoke-direct {v2, v0}, Landroidx/work/k$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/b;->a(Landroidx/work/k$b;)V

    :goto_0
    return-void
.end method
