.class public Ls0;
.super Lb1;
.source "SourceFile"


# instance fields
.field private j0:Z

.field protected k0:Lk0;

.field private l0:La1;

.field m0:I

.field n0:I

.field o0:[Lp0;

.field p0:[Lp0;

.field public q0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt0;",
            ">;"
        }
    .end annotation
.end field

.field public r0:Z

.field public s0:Z

.field public t0:Z

.field public u0:I

.field public v0:I

.field private w0:I

.field public x0:Z

.field private y0:Z

.field private z0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lb1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls0;->j0:Z

    .line 3
    new-instance v1, Lk0;

    invoke-direct {v1}, Lk0;-><init>()V

    iput-object v1, p0, Ls0;->k0:Lk0;

    .line 4
    iput v0, p0, Ls0;->m0:I

    .line 5
    iput v0, p0, Ls0;->n0:I

    const/4 v1, 0x4

    new-array v2, v1, [Lp0;

    .line 6
    iput-object v2, p0, Ls0;->o0:[Lp0;

    new-array v1, v1, [Lp0;

    .line 7
    iput-object v1, p0, Ls0;->p0:[Lp0;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ls0;->q0:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Ls0;->r0:Z

    .line 10
    iput-boolean v0, p0, Ls0;->s0:Z

    .line 11
    iput-boolean v0, p0, Ls0;->t0:Z

    .line 12
    iput v0, p0, Ls0;->u0:I

    .line 13
    iput v0, p0, Ls0;->v0:I

    const/4 v1, 0x7

    .line 14
    iput v1, p0, Ls0;->w0:I

    .line 15
    iput-boolean v0, p0, Ls0;->x0:Z

    .line 16
    iput-boolean v0, p0, Ls0;->y0:Z

    .line 17
    iput-boolean v0, p0, Ls0;->z0:Z

    return-void
.end method

.method private B0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ls0;->m0:I

    .line 2
    iput v0, p0, Ls0;->n0:I

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls0;->z0()V

    .line 2
    iget v0, p0, Ls0;->w0:I

    invoke-virtual {p0, v0}, Ls0;->c(I)V

    return-void
.end method

.method public C0(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls0;->w0:I

    return-void
.end method

.method public D0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls0;->j0:Z

    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls0;->k0:Lk0;

    invoke-virtual {v0}, Lk0;->v()V

    .line 2
    iget-object v0, p0, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls0;->x0:Z

    .line 4
    invoke-super {p0}, Lb1;->E()V

    return-void
.end method

.method public E0()V
    .locals 4

    .line 1
    sget-object v0, Lq0$b;->c:Lq0$b;

    invoke-virtual {p0, v0}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v0

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    .line 2
    sget-object v1, Lq0$b;->d:Lq0$b;

    invoke-virtual {p0, v1}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v1

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Lx0;->k(Lx0;F)V

    .line 4
    invoke-virtual {v1, v2, v3}, Lx0;->k(Lx0;F)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 1
    invoke-static {p1, p0}, Lw0;->a(ILr0;)V

    .line 2
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    invoke-virtual {v2, p1}, Lr0;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 27

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Lr0$a;->d:Lr0$a;

    sget-object v3, Lr0$a;->c:Lr0$a;

    sget-object v4, Lr0$a;->b:Lr0$a;

    iget v5, v1, Lr0;->I:I

    .line 2
    iget v6, v1, Lr0;->J:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5
    iput-boolean v7, v1, Ls0;->y0:Z

    .line 6
    iput-boolean v7, v1, Ls0;->z0:Z

    .line 7
    iget-object v0, v1, Lr0;->D:Lr0;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v1, Ls0;->l0:La1;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, La1;

    invoke-direct {v0, v1}, La1;-><init>(Lr0;)V

    iput-object v0, v1, Ls0;->l0:La1;

    .line 10
    :cond_0
    iget-object v0, v1, Ls0;->l0:La1;

    invoke-virtual {v0, v1}, La1;->b(Lr0;)V

    .line 11
    iput v7, v1, Lr0;->I:I

    .line 12
    iput v7, v1, Lr0;->J:I

    .line 13
    iget-object v0, v1, Lr0;->D:Lr0;

    if-eqz v0, :cond_1

    .line 14
    instance-of v10, v0, Ls0;

    if-eqz v10, :cond_1

    .line 15
    check-cast v0, Ls0;

    .line 16
    :cond_1
    iget-object v0, v1, Lr0;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v0, :cond_2

    .line 17
    iget-object v11, v1, Lr0;->B:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq0;

    .line 18
    invoke-virtual {v11}, Lq0;->i()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v0}, Lk0;->o()Li0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb1;->G(Li0;)V

    goto :goto_1

    .line 20
    :cond_3
    iput v7, v1, Lr0;->I:I

    .line 21
    iput v7, v1, Lr0;->J:I

    .line 22
    :goto_1
    iget v0, v1, Ls0;->w0:I

    const/16 v10, 0x20

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v1, v11}, Ls0;->x0(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    invoke-virtual/range {p0 .. p0}, Ls0;->z0()V

    .line 25
    :cond_4
    invoke-virtual {v1, v10}, Ls0;->x0(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    invoke-virtual {v1, v11}, Ls0;->x0(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    iget v0, v1, Ls0;->w0:I

    invoke-virtual {v1, v0}, Ls0;->c(I)V

    .line 28
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ls0;->E0()V

    .line 29
    :cond_6
    iget-object v0, v1, Ls0;->k0:Lk0;

    iput-boolean v12, v0, Lk0;->f:Z

    goto :goto_2

    .line 30
    :cond_7
    iget-object v0, v1, Ls0;->k0:Lk0;

    iput-boolean v7, v0, Lk0;->f:Z

    .line 31
    :goto_2
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    aget-object v13, v0, v12

    .line 32
    aget-object v14, v0, v7

    .line 33
    invoke-direct/range {p0 .. p0}, Ls0;->B0()V

    .line 34
    iget-object v0, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 35
    iget-object v0, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iget-object v0, v1, Ls0;->q0:Ljava/util/List;

    new-instance v15, Lt0;

    iget-object v11, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-direct {v15, v11}, Lt0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v7, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    :cond_8
    iget-object v0, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 38
    iget-object v15, v1, Lb1;->i0:Ljava/util/ArrayList;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lr0;->p()Lr0$a;

    move-result-object v0

    if-eq v0, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lr0;->u()Lr0$a;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/16 v16, 0x1

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-ge v7, v11, :cond_22

    .line 40
    iget-boolean v12, v1, Ls0;->x0:Z

    if-nez v12, :cond_22

    .line 41
    iget-object v12, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0;

    iget-boolean v12, v12, Lt0;->b:Z

    if-eqz v12, :cond_b

    move/from16 v22, v5

    move/from16 v21, v6

    move/from16 v18, v11

    move-object/from16 v25, v15

    goto/16 :goto_15

    .line 42
    :cond_b
    invoke-virtual {v1, v10}, Ls0;->x0(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 43
    invoke-virtual/range {p0 .. p0}, Lr0;->p()Lr0$a;

    move-result-object v12

    if-ne v12, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lr0;->u()Lr0$a;

    move-result-object v12

    if-ne v12, v4, :cond_c

    .line 44
    iget-object v12, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0;

    invoke-virtual {v12}, Lt0;->b()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    iput-object v12, v1, Lb1;->i0:Ljava/util/ArrayList;

    goto :goto_6

    .line 45
    :cond_c
    iget-object v12, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0;

    iget-object v12, v12, Lt0;->a:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    iput-object v12, v1, Lb1;->i0:Ljava/util/ArrayList;

    .line 46
    :cond_d
    :goto_6
    invoke-direct/range {p0 .. p0}, Ls0;->B0()V

    .line 47
    iget-object v12, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v12, :cond_f

    move/from16 v18, v11

    .line 48
    iget-object v11, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0;

    move/from16 v19, v0

    .line 49
    instance-of v0, v11, Lb1;

    if-eqz v0, :cond_e

    .line 50
    check-cast v11, Lb1;

    invoke-virtual {v11}, Lb1;->p0()V

    :cond_e
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v18

    move/from16 v0, v19

    goto :goto_7

    :cond_f
    move/from16 v19, v0

    move/from16 v18, v11

    const/4 v0, 0x0

    const/4 v10, 0x1

    :goto_8
    if-eqz v10, :cond_21

    move/from16 v20, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v0, 0x1

    .line 51
    :try_start_0
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v0}, Lk0;->v()V

    .line 52
    invoke-direct/range {p0 .. p0}, Ls0;->B0()V

    .line 53
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v1, v0}, Lr0;->f(Lk0;)V

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v12, :cond_10

    .line 54
    iget-object v11, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v21, v6

    .line 55
    :try_start_1
    iget-object v6, v1, Ls0;->k0:Lk0;

    invoke-virtual {v11, v6}, Lr0;->f(Lk0;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v21

    goto :goto_9

    :cond_10
    move/from16 v21, v6

    .line 56
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v1, v0}, Ls0;->t0(Lk0;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :try_start_2
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v0}, Lk0;->r()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v22, v5

    const/16 v20, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    const/16 v20, 0x1

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v21, v6

    .line 58
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v5

    const-string v5, "EXCEPTION : "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_b
    const/4 v0, 0x2

    if-eqz v20, :cond_16

    .line 60
    iget-object v5, v1, Ls0;->k0:Lk0;

    sget-object v6, Lw0;->a:[Z

    const/16 v17, 0x0

    .line 61
    aput-boolean v17, v6, v0

    .line 62
    invoke-virtual {v1, v5}, Lr0;->n0(Lk0;)V

    .line 63
    iget-object v11, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v11, :cond_14

    move/from16 v23, v11

    .line 64
    iget-object v11, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0;

    .line 65
    invoke-virtual {v11, v5}, Lr0;->n0(Lk0;)V

    move-object/from16 v24, v5

    .line 66
    iget-object v5, v11, Lr0;->C:[Lr0$a;

    aget-object v5, v5, v17

    if-ne v5, v2, :cond_11

    .line 67
    invoke-virtual {v11}, Lr0;->w()I

    move-result v5

    move-object/from16 v25, v15

    invoke-virtual {v11}, Lr0;->y()I

    move-result v15

    if-ge v5, v15, :cond_12

    const/4 v5, 0x2

    const/4 v15, 0x1

    .line 68
    aput-boolean v15, v6, v5

    goto :goto_d

    :cond_11
    move-object/from16 v25, v15

    :cond_12
    const/4 v15, 0x1

    .line 69
    :goto_d
    iget-object v5, v11, Lr0;->C:[Lr0$a;

    aget-object v5, v5, v15

    if-ne v5, v2, :cond_13

    .line 70
    invoke-virtual {v11}, Lr0;->o()I

    move-result v5

    invoke-virtual {v11}, Lr0;->x()I

    move-result v11

    if-ge v5, v11, :cond_13

    const/4 v5, 0x2

    .line 71
    aput-boolean v15, v6, v5

    :cond_13
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v23

    move-object/from16 v5, v24

    move-object/from16 v15, v25

    const/16 v17, 0x0

    goto :goto_c

    :cond_14
    move-object/from16 v25, v15

    :cond_15
    const/4 v6, 0x2

    goto :goto_f

    :cond_16
    move-object/from16 v25, v15

    .line 72
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v1, v0}, Lr0;->n0(Lk0;)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v12, :cond_15

    .line 73
    iget-object v5, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0;

    .line 74
    iget-object v6, v5, Lr0;->C:[Lr0$a;

    const/4 v11, 0x0

    aget-object v6, v6, v11

    if-ne v6, v2, :cond_17

    .line 75
    invoke-virtual {v5}, Lr0;->w()I

    move-result v6

    invoke-virtual {v5}, Lr0;->y()I

    move-result v11

    if-ge v6, v11, :cond_17

    .line 76
    sget-object v0, Lw0;->a:[Z

    const/4 v6, 0x2

    const/4 v11, 0x1

    aput-boolean v11, v0, v6

    goto :goto_f

    :cond_17
    const/4 v6, 0x2

    const/4 v11, 0x1

    .line 77
    iget-object v15, v5, Lr0;->C:[Lr0$a;

    aget-object v15, v15, v11

    if-ne v15, v2, :cond_18

    .line 78
    invoke-virtual {v5}, Lr0;->o()I

    move-result v15

    invoke-virtual {v5}, Lr0;->x()I

    move-result v5

    if-ge v15, v5, :cond_18

    .line 79
    sget-object v0, Lw0;->a:[Z

    aput-boolean v11, v0, v6

    goto :goto_f

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :goto_f
    if-eqz v16, :cond_1b

    const/16 v5, 0x8

    if-ge v10, v5, :cond_1b

    .line 80
    sget-object v0, Lw0;->a:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_10
    if-ge v0, v12, :cond_19

    .line 81
    iget-object v15, v1, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr0;

    .line 82
    iget v5, v15, Lr0;->I:I

    invoke-virtual {v15}, Lr0;->w()I

    move-result v20

    add-int v5, v20, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 83
    iget v5, v15, Lr0;->J:I

    invoke-virtual {v15}, Lr0;->o()I

    move-result v15

    add-int/2addr v15, v5

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x8

    goto :goto_10

    .line 84
    :cond_19
    iget v0, v1, Lr0;->R:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    iget v5, v1, Lr0;->S:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v14, v3, :cond_1a

    .line 86
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v6

    if-ge v6, v0, :cond_1a

    .line 87
    invoke-virtual {v1, v0}, Lr0;->h0(I)V

    .line 88
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    const/4 v6, 0x0

    aput-object v3, v0, v6

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    :goto_11
    if-ne v13, v3, :cond_1c

    .line 89
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v6

    if-ge v6, v5, :cond_1c

    .line 90
    invoke-virtual {v1, v5}, Lr0;->N(I)V

    .line 91
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    .line 92
    :cond_1c
    :goto_12
    iget v5, v1, Lr0;->R:I

    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 93
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v6

    if-le v5, v6, :cond_1d

    .line 94
    invoke-virtual {v1, v5}, Lr0;->h0(I)V

    .line 95
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v0, 0x1

    const/16 v19, 0x1

    .line 96
    :cond_1d
    iget v5, v1, Lr0;->S:I

    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 97
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v6

    if-le v5, v6, :cond_1e

    .line 98
    invoke-virtual {v1, v5}, Lr0;->N(I)V

    .line 99
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const/4 v0, 0x1

    const/4 v11, 0x1

    goto :goto_13

    :cond_1e
    const/4 v5, 0x1

    move/from16 v11, v19

    :goto_13
    if-nez v11, :cond_20

    .line 100
    iget-object v6, v1, Lr0;->C:[Lr0$a;

    const/4 v15, 0x0

    aget-object v6, v6, v15

    if-ne v6, v3, :cond_1f

    if-lez v8, :cond_1f

    .line 101
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v6

    if-le v6, v8, :cond_1f

    .line 102
    iput-boolean v5, v1, Ls0;->y0:Z

    .line 103
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    aput-object v4, v0, v15

    .line 104
    invoke-virtual {v1, v8}, Lr0;->h0(I)V

    const/4 v0, 0x1

    const/4 v11, 0x1

    .line 105
    :cond_1f
    iget-object v6, v1, Lr0;->C:[Lr0$a;

    aget-object v6, v6, v5

    if-ne v6, v3, :cond_20

    if-lez v9, :cond_20

    .line 106
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v6

    if-le v6, v9, :cond_20

    .line 107
    iput-boolean v5, v1, Ls0;->z0:Z

    .line 108
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    aput-object v4, v0, v5

    .line 109
    invoke-virtual {v1, v9}, Lr0;->N(I)V

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_14

    :cond_20
    move/from16 v19, v11

    :goto_14
    move/from16 v6, v21

    move/from16 v5, v22

    move-object/from16 v15, v25

    move/from16 v26, v10

    move v10, v0

    move/from16 v0, v26

    goto/16 :goto_8

    :cond_21
    move/from16 v22, v5

    move/from16 v21, v6

    move-object/from16 v25, v15

    .line 110
    iget-object v0, v1, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt0;

    invoke-virtual {v0}, Lt0;->e()V

    move/from16 v0, v19

    :goto_15
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v18

    move/from16 v6, v21

    move/from16 v5, v22

    move-object/from16 v15, v25

    const/16 v10, 0x20

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_22
    move/from16 v19, v0

    move/from16 v22, v5

    move/from16 v21, v6

    move-object v2, v15

    .line 111
    iput-object v2, v1, Lb1;->i0:Ljava/util/ArrayList;

    .line 112
    iget-object v0, v1, Lr0;->D:Lr0;

    if-eqz v0, :cond_23

    .line 113
    iget v0, v1, Lr0;->R:I

    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    iget v2, v1, Lr0;->S:I

    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 115
    iget-object v3, v1, Ls0;->l0:La1;

    invoke-virtual {v3, v1}, La1;->a(Lr0;)V

    const/4 v3, 0x0

    add-int/2addr v0, v3

    add-int/2addr v0, v3

    .line 116
    invoke-virtual {v1, v0}, Lr0;->h0(I)V

    add-int/2addr v2, v3

    add-int/2addr v2, v3

    .line 117
    invoke-virtual {v1, v2}, Lr0;->N(I)V

    goto :goto_16

    :cond_23
    move/from16 v2, v22

    const/4 v3, 0x0

    .line 118
    iput v2, v1, Lr0;->I:I

    move/from16 v2, v21

    .line 119
    iput v2, v1, Lr0;->J:I

    :goto_16
    if-eqz v19, :cond_24

    .line 120
    iget-object v0, v1, Lr0;->C:[Lr0$a;

    aput-object v14, v0, v3

    const/4 v2, 0x1

    .line 121
    aput-object v13, v0, v2

    .line 122
    :cond_24
    iget-object v0, v1, Ls0;->k0:Lk0;

    invoke-virtual {v0}, Lk0;->o()Li0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb1;->G(Li0;)V

    .line 123
    iget-object v0, v1, Lr0;->D:Lr0;

    move-object v2, v1

    :goto_17
    if-eqz v0, :cond_26

    .line 124
    iget-object v3, v0, Lr0;->D:Lr0;

    .line 125
    instance-of v4, v0, Ls0;

    if-eqz v4, :cond_25

    .line 126
    move-object v2, v0

    check-cast v2, Ls0;

    :cond_25
    move-object v0, v3

    goto :goto_17

    :cond_26
    if-ne v1, v2, :cond_27

    .line 127
    invoke-virtual/range {p0 .. p0}, Lb1;->m0()V

    :cond_27
    return-void
.end method

.method s0(Lr0;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Ls0;->m0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls0;->p0:[Lp0;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    .line 2
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lp0;

    iput-object p2, p0, Ls0;->p0:[Lp0;

    .line 4
    :cond_0
    iget-object p2, p0, Ls0;->p0:[Lp0;

    iget v1, p0, Ls0;->m0:I

    new-instance v2, Lp0;

    const/4 v3, 0x0

    .line 5
    iget-boolean v4, p0, Ls0;->j0:Z

    .line 6
    invoke-direct {v2, p1, v3, v4}, Lp0;-><init>(Lr0;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Ls0;->m0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 8
    iget p2, p0, Ls0;->n0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ls0;->o0:[Lp0;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 9
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lp0;

    iput-object p2, p0, Ls0;->o0:[Lp0;

    .line 11
    :cond_2
    iget-object p2, p0, Ls0;->o0:[Lp0;

    iget v1, p0, Ls0;->n0:I

    new-instance v2, Lp0;

    .line 12
    iget-boolean v3, p0, Ls0;->j0:Z

    .line 13
    invoke-direct {v2, p1, v0, v3}, Lp0;-><init>(Lr0;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Ls0;->n0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public t0(Lk0;)Z
    .locals 13

    .line 1
    sget-object v0, Lr0$a;->b:Lr0$a;

    sget-object v1, Lr0$a;->c:Lr0$a;

    invoke-virtual {p0, p1}, Lr0;->a(Lk0;)V

    .line 2
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_9

    .line 3
    iget-object v6, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr0;

    .line 4
    instance-of v7, v6, Ls0;

    if-eqz v7, :cond_3

    .line 5
    iget-object v7, v6, Lr0;->C:[Lr0$a;

    aget-object v8, v7, v3

    .line 6
    aget-object v5, v7, v5

    if-ne v8, v1, :cond_0

    .line 7
    invoke-virtual {v6, v0}, Lr0;->R(Lr0$a;)V

    :cond_0
    if-ne v5, v1, :cond_1

    .line 8
    invoke-virtual {v6, v0}, Lr0;->d0(Lr0$a;)V

    .line 9
    :cond_1
    invoke-virtual {v6, p1}, Lr0;->a(Lk0;)V

    if-ne v8, v1, :cond_2

    .line 10
    invoke-virtual {v6, v8}, Lr0;->R(Lr0$a;)V

    :cond_2
    if-ne v5, v1, :cond_8

    .line 11
    invoke-virtual {v6, v5}, Lr0;->d0(Lr0$a;)V

    goto/16 :goto_1

    .line 12
    :cond_3
    sget-object v7, Lr0$a;->e:Lr0$a;

    iget-object v8, p0, Lr0;->C:[Lr0$a;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    if-eq v8, v1, :cond_4

    iget-object v8, v6, Lr0;->C:[Lr0$a;

    aget-object v8, v8, v3

    if-ne v8, v7, :cond_4

    .line 13
    iget-object v8, v6, Lr0;->s:Lq0;

    iget v8, v8, Lq0;->e:I

    .line 14
    invoke-virtual {p0}, Lr0;->w()I

    move-result v10

    iget-object v11, v6, Lr0;->u:Lq0;

    iget v11, v11, Lq0;->e:I

    sub-int/2addr v10, v11

    .line 15
    iget-object v11, v6, Lr0;->s:Lq0;

    invoke-virtual {p1, v11}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v12

    iput-object v12, v11, Lq0;->i:Lm0;

    .line 16
    iget-object v11, v6, Lr0;->u:Lq0;

    invoke-virtual {p1, v11}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v12

    iput-object v12, v11, Lq0;->i:Lm0;

    .line 17
    iget-object v11, v6, Lr0;->s:Lq0;

    iget-object v11, v11, Lq0;->i:Lm0;

    invoke-virtual {p1, v11, v8}, Lk0;->e(Lm0;I)V

    .line 18
    iget-object v11, v6, Lr0;->u:Lq0;

    iget-object v11, v11, Lq0;->i:Lm0;

    invoke-virtual {p1, v11, v10}, Lk0;->e(Lm0;I)V

    .line 19
    iput v9, v6, Lr0;->a:I

    .line 20
    invoke-virtual {v6, v8, v10}, Lr0;->Q(II)V

    .line 21
    :cond_4
    iget-object v8, p0, Lr0;->C:[Lr0$a;

    aget-object v8, v8, v5

    if-eq v8, v1, :cond_7

    iget-object v8, v6, Lr0;->C:[Lr0$a;

    aget-object v5, v8, v5

    if-ne v5, v7, :cond_7

    .line 22
    iget-object v5, v6, Lr0;->t:Lq0;

    iget v5, v5, Lq0;->e:I

    .line 23
    invoke-virtual {p0}, Lr0;->o()I

    move-result v7

    iget-object v8, v6, Lr0;->v:Lq0;

    iget v8, v8, Lq0;->e:I

    sub-int/2addr v7, v8

    .line 24
    iget-object v8, v6, Lr0;->t:Lq0;

    invoke-virtual {p1, v8}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v10

    iput-object v10, v8, Lq0;->i:Lm0;

    .line 25
    iget-object v8, v6, Lr0;->v:Lq0;

    invoke-virtual {p1, v8}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v10

    iput-object v10, v8, Lq0;->i:Lm0;

    .line 26
    iget-object v8, v6, Lr0;->t:Lq0;

    iget-object v8, v8, Lq0;->i:Lm0;

    invoke-virtual {p1, v8, v5}, Lk0;->e(Lm0;I)V

    .line 27
    iget-object v8, v6, Lr0;->v:Lq0;

    iget-object v8, v8, Lq0;->i:Lm0;

    invoke-virtual {p1, v8, v7}, Lk0;->e(Lm0;I)V

    .line 28
    iget v8, v6, Lr0;->Q:I

    if-gtz v8, :cond_5

    invoke-virtual {v6}, Lr0;->v()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_6

    .line 29
    :cond_5
    iget-object v8, v6, Lr0;->w:Lq0;

    invoke-virtual {p1, v8}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v10

    iput-object v10, v8, Lq0;->i:Lm0;

    .line 30
    iget-object v8, v6, Lr0;->w:Lq0;

    iget-object v8, v8, Lq0;->i:Lm0;

    iget v10, v6, Lr0;->Q:I

    add-int/2addr v10, v5

    invoke-virtual {p1, v8, v10}, Lk0;->e(Lm0;I)V

    .line 31
    :cond_6
    iput v9, v6, Lr0;->b:I

    .line 32
    invoke-virtual {v6, v5, v7}, Lr0;->c0(II)V

    .line 33
    :cond_7
    invoke-virtual {v6, p1}, Lr0;->a(Lk0;)V

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 34
    :cond_9
    iget v0, p0, Ls0;->m0:I

    if-lez v0, :cond_a

    .line 35
    invoke-static {p0, p1, v3}, Ln0;->a(Ls0;Lk0;I)V

    .line 36
    :cond_a
    iget v0, p0, Ls0;->n0:I

    if-lez v0, :cond_b

    .line 37
    invoke-static {p0, p1, v5}, Ln0;->a(Ls0;Lk0;I)V

    :cond_b
    return v5
.end method

.method public u0()I
    .locals 1

    .line 1
    iget v0, p0, Ls0;->w0:I

    return v0
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls0;->z0:Z

    return v0
.end method

.method public w0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls0;->y0:Z

    return v0
.end method

.method public x0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Ls0;->w0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lr0$a;->c:Lr0$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lr0;->c:Ly0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ly0;->f(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lr0;->C:[Lr0$a;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lr0;->d:Ly0;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Ly0;->f(I)V

    :cond_1
    return-void
.end method

.method public z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lr0;->F()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    invoke-virtual {v2}, Lr0;->F()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
