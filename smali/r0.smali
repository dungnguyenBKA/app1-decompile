.class public Lr0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0$a;
    }
.end annotation


# instance fields
.field protected A:[Lq0;

.field protected B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lq0;",
            ">;"
        }
    .end annotation
.end field

.field protected C:[Lr0$a;

.field D:Lr0;

.field E:I

.field F:I

.field protected G:F

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field L:I

.field private M:I

.field private N:I

.field protected O:I

.field protected P:I

.field Q:I

.field protected R:I

.field protected S:I

.field private T:I

.field private U:I

.field V:F

.field W:F

.field private X:Ljava/lang/Object;

.field private Y:I

.field private Z:Ljava/lang/String;

.field public a:I

.field a0:Z

.field public b:I

.field b0:Z

.field c:Ly0;

.field c0:Z

.field d:Ly0;

.field d0:I

.field e:I

.field e0:I

.field f:I

.field f0:[F

.field g:[I

.field protected g0:[Lr0;

.field h:I

.field protected h0:[Lr0;

.field i:I

.field j:F

.field k:I

.field l:I

.field m:F

.field n:I

.field o:F

.field p:Lt0;

.field private q:[I

.field private r:F

.field s:Lq0;

.field t:Lq0;

.field u:Lq0;

.field v:Lq0;

.field w:Lq0;

.field x:Lq0;

.field y:Lq0;

.field z:Lq0;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lr0;->a:I

    .line 3
    iput v0, p0, Lr0;->b:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lr0;->e:I

    .line 5
    iput v1, p0, Lr0;->f:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Lr0;->g:[I

    .line 7
    iput v1, p0, Lr0;->h:I

    .line 8
    iput v1, p0, Lr0;->i:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    iput v3, p0, Lr0;->j:F

    .line 10
    iput v1, p0, Lr0;->k:I

    .line 11
    iput v1, p0, Lr0;->l:I

    .line 12
    iput v3, p0, Lr0;->m:F

    .line 13
    iput v0, p0, Lr0;->n:I

    .line 14
    iput v3, p0, Lr0;->o:F

    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Lr0;->p:Lt0;

    new-array v4, v2, [I

    .line 16
    fill-array-data v4, :array_0

    iput-object v4, p0, Lr0;->q:[I

    const/4 v4, 0x0

    .line 17
    iput v4, p0, Lr0;->r:F

    .line 18
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->c:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->s:Lq0;

    .line 19
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->d:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->t:Lq0;

    .line 20
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->e:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->u:Lq0;

    .line 21
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->f:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->v:Lq0;

    .line 22
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->g:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->w:Lq0;

    .line 23
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->i:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->x:Lq0;

    .line 24
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->j:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->y:Lq0;

    .line 25
    new-instance v5, Lq0;

    sget-object v6, Lq0$b;->h:Lq0$b;

    invoke-direct {v5, p0, v6}, Lq0;-><init>(Lr0;Lq0$b;)V

    iput-object v5, p0, Lr0;->z:Lq0;

    const/4 v6, 0x6

    new-array v6, v6, [Lq0;

    .line 26
    iget-object v7, p0, Lr0;->s:Lq0;

    aput-object v7, v6, v1

    iget-object v7, p0, Lr0;->u:Lq0;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Lr0;->t:Lq0;

    aput-object v7, v6, v2

    iget-object v7, p0, Lr0;->v:Lq0;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    iget-object v7, p0, Lr0;->w:Lq0;

    const/4 v9, 0x4

    aput-object v7, v6, v9

    const/4 v7, 0x5

    aput-object v5, v6, v7

    iput-object v6, p0, Lr0;->A:[Lq0;

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lr0;->B:Ljava/util/ArrayList;

    new-array v6, v2, [Lr0$a;

    .line 28
    sget-object v7, Lr0$a;->b:Lr0$a;

    aput-object v7, v6, v1

    aput-object v7, v6, v8

    iput-object v6, p0, Lr0;->C:[Lr0$a;

    .line 29
    iput-object v3, p0, Lr0;->D:Lr0;

    .line 30
    iput v1, p0, Lr0;->E:I

    .line 31
    iput v1, p0, Lr0;->F:I

    .line 32
    iput v4, p0, Lr0;->G:F

    .line 33
    iput v0, p0, Lr0;->H:I

    .line 34
    iput v1, p0, Lr0;->I:I

    .line 35
    iput v1, p0, Lr0;->J:I

    .line 36
    iput v1, p0, Lr0;->K:I

    .line 37
    iput v1, p0, Lr0;->L:I

    .line 38
    iput v1, p0, Lr0;->M:I

    .line 39
    iput v1, p0, Lr0;->N:I

    .line 40
    iput v1, p0, Lr0;->O:I

    .line 41
    iput v1, p0, Lr0;->P:I

    .line 42
    iput v1, p0, Lr0;->Q:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 43
    iput v0, p0, Lr0;->V:F

    .line 44
    iput v0, p0, Lr0;->W:F

    .line 45
    iput v1, p0, Lr0;->Y:I

    .line 46
    iput-object v3, p0, Lr0;->Z:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lr0;->a0:Z

    .line 48
    iput-boolean v1, p0, Lr0;->b0:Z

    .line 49
    iput-boolean v1, p0, Lr0;->c0:Z

    .line 50
    iput v1, p0, Lr0;->d0:I

    .line 51
    iput v1, p0, Lr0;->e0:I

    new-array v0, v2, [F

    .line 52
    fill-array-data v0, :array_1

    iput-object v0, p0, Lr0;->f0:[F

    new-array v0, v2, [Lr0;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 53
    iput-object v0, p0, Lr0;->g0:[Lr0;

    new-array v0, v2, [Lr0;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 54
    iput-object v0, p0, Lr0;->h0:[Lr0;

    .line 55
    iget-object v0, p0, Lr0;->s:Lq0;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->t:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->u:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->v:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->x:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->y:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->z:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0;->w:Lq0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private A(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lr0;->A:[Lq0;

    aget-object v1, v0, p1

    iget-object v1, v1, Lq0;->d:Lq0;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lq0;->d:Lq0;

    iget-object v1, v1, Lq0;->d:Lq0;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lq0;->d:Lq0;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lq0;->d:Lq0;

    iget-object v1, v1, Lq0;->d:Lq0;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private d(Lk0;ZLm0;Lm0;Lr0$a;ZLq0;Lq0;IIIIFZZIIIFZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v1, p11

    move/from16 v2, p12

    .line 1
    sget-object v3, Lq0$b;->f:Lq0$b;

    invoke-virtual {v10, v13}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v15

    .line 2
    invoke-virtual {v10, v14}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v9

    .line 3
    iget-object v4, v13, Lq0;->d:Lq0;

    .line 4
    invoke-virtual {v10, v4}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v8

    .line 5
    iget-object v4, v14, Lq0;->d:Lq0;

    .line 6
    invoke-virtual {v10, v4}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v7

    .line 7
    iget-boolean v4, v10, Lk0;->f:Z

    const/4 v5, 0x1

    const/4 v6, 0x6

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual/range {p7 .. p7}, Lq0;->d()Lx0;

    move-result-object v4

    iget v4, v4, Lz0;->b:I

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual/range {p8 .. p8}, Lq0;->d()Lx0;

    move-result-object v4

    iget v4, v4, Lz0;->b:I

    if-ne v4, v5, :cond_1

    .line 10
    invoke-virtual/range {p7 .. p7}, Lq0;->d()Lx0;

    move-result-object v1

    invoke-virtual {v1, v10}, Lx0;->e(Lk0;)V

    .line 11
    invoke-virtual/range {p8 .. p8}, Lq0;->d()Lx0;

    move-result-object v1

    invoke-virtual {v1, v10}, Lx0;->e(Lk0;)V

    if-nez p15, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v10, v12, v9, v1, v6}, Lk0;->f(Lm0;Lm0;II)V

    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-virtual/range {p7 .. p7}, Lq0;->h()Z

    move-result v17

    .line 14
    invoke-virtual/range {p8 .. p8}, Lq0;->h()Z

    move-result v18

    .line 15
    iget-object v4, v0, Lr0;->z:Lq0;

    invoke-virtual {v4}, Lq0;->h()Z

    move-result v19

    if-eqz v18, :cond_2

    add-int/lit8 v4, v17, 0x1

    goto :goto_0

    :cond_2
    move/from16 v4, v17

    :goto_0
    if-eqz v19, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p14, :cond_4

    const/4 v6, 0x3

    goto :goto_1

    :cond_4
    move/from16 v6, p16

    .line 16
    :goto_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v14, 0x2

    move/from16 v21, v4

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    if-eq v5, v4, :cond_7

    if-eq v5, v14, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    if-ne v6, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    .line 17
    :goto_3
    iget v5, v0, Lr0;->Y:I

    const/16 v14, 0x8

    if-ne v5, v14, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    move v5, v4

    move/from16 v4, p10

    :goto_4
    if-eqz p20, :cond_a

    if-nez v17, :cond_9

    if-nez v18, :cond_9

    if-nez v19, :cond_9

    move/from16 v14, p9

    .line 18
    invoke-virtual {v10, v15, v14}, Lk0;->e(Lm0;I)V

    goto :goto_5

    :cond_9
    if-eqz v17, :cond_a

    if-nez v18, :cond_a

    .line 19
    invoke-virtual/range {p7 .. p7}, Lq0;->c()I

    move-result v14

    move-object/from16 v22, v7

    const/4 v7, 0x6

    invoke-virtual {v10, v15, v8, v14, v7}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v22, v7

    const/4 v7, 0x6

    :goto_6
    if-nez v5, :cond_e

    if-eqz p6, :cond_c

    const/4 v3, 0x0

    const/4 v14, 0x3

    .line 20
    invoke-virtual {v10, v9, v15, v3, v14}, Lk0;->d(Lm0;Lm0;II)Lh0;

    if-lez v1, :cond_b

    .line 21
    invoke-virtual {v10, v9, v15, v1, v7}, Lk0;->f(Lm0;Lm0;II)V

    :cond_b
    const v4, 0x7fffffff

    if-ge v2, v4, :cond_d

    .line 22
    invoke-virtual {v10, v9, v15, v2, v7}, Lk0;->g(Lm0;Lm0;II)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    const/4 v14, 0x3

    .line 23
    invoke-virtual {v10, v9, v15, v4, v7}, Lk0;->d(Lm0;Lm0;II)Lh0;

    :cond_d
    :goto_7
    move/from16 v14, p17

    move/from16 v2, p18

    move v0, v5

    move/from16 v24, v6

    move-object/from16 v26, v8

    move-object v3, v9

    move/from16 v13, v21

    move-object/from16 v25, v22

    const/4 v11, 0x6

    const/16 v20, 0x4

    goto/16 :goto_d

    :cond_e
    const/4 v14, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    move/from16 v7, p18

    if-ne v14, v2, :cond_f

    move v14, v4

    :cond_f
    if-ne v7, v2, :cond_10

    move v2, v4

    goto :goto_8

    :cond_10
    move v2, v7

    :goto_8
    const/4 v7, 0x6

    if-lez v14, :cond_11

    .line 24
    invoke-virtual {v10, v9, v15, v14, v7}, Lk0;->f(Lm0;Lm0;II)V

    .line 25
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_11
    if-lez v2, :cond_12

    .line 26
    invoke-virtual {v10, v9, v15, v2, v7}, Lk0;->g(Lm0;Lm0;II)V

    .line 27
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_12
    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    if-eqz p2, :cond_13

    const/4 v3, 0x6

    .line 28
    invoke-virtual {v10, v9, v15, v4, v3}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto/16 :goto_b

    :cond_13
    const/4 v3, 0x6

    if-eqz p15, :cond_14

    const/4 v7, 0x4

    .line 29
    invoke-virtual {v10, v9, v15, v4, v7}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto/16 :goto_b

    .line 30
    :cond_14
    invoke-virtual {v10, v9, v15, v4, v7}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto/16 :goto_b

    :cond_15
    const/4 v7, 0x2

    const/16 v20, 0x6

    if-ne v6, v7, :cond_18

    .line 31
    iget-object v5, v13, Lq0;->c:Lq0$b;

    .line 32
    sget-object v7, Lq0$b;->d:Lq0$b;

    if-eq v5, v7, :cond_17

    if-ne v5, v3, :cond_16

    goto :goto_9

    .line 33
    :cond_16
    iget-object v3, v0, Lr0;->D:Lr0;

    sget-object v5, Lq0$b;->c:Lq0$b;

    invoke-virtual {v3, v5}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    .line 34
    iget-object v5, v0, Lr0;->D:Lr0;

    sget-object v7, Lq0$b;->e:Lq0$b;

    invoke-virtual {v5, v7}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v5

    invoke-virtual {v10, v5}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v5

    move-object v7, v5

    goto :goto_a

    .line 35
    :cond_17
    :goto_9
    iget-object v5, v0, Lr0;->D:Lr0;

    invoke-virtual {v5, v7}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v5

    invoke-virtual {v10, v5}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v5

    .line 36
    iget-object v7, v0, Lr0;->D:Lr0;

    invoke-virtual {v7, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    move-object v7, v3

    move-object v3, v5

    .line 37
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lk0;->m()Lh0;

    move-result-object v5

    move v0, v4

    move/from16 v13, v21

    move-object v4, v5

    move-object v1, v5

    move-object v5, v9

    move/from16 v24, v6

    const/4 v11, 0x6

    move-object v6, v15

    move-object/from16 v25, v22

    const/16 v20, 0x4

    move-object/from16 v26, v8

    move-object v8, v3

    move-object v3, v9

    move/from16 v9, p19

    invoke-virtual/range {v4 .. v9}, Lh0;->c(Lm0;Lm0;Lm0;Lm0;F)Lh0;

    invoke-virtual {v10, v1}, Lk0;->c(Lh0;)V

    const/4 v6, 0x0

    goto :goto_c

    :cond_18
    :goto_b
    move v0, v4

    move/from16 v24, v6

    move-object/from16 v26, v8

    move-object v3, v9

    move/from16 v13, v21

    move-object/from16 v25, v22

    const/4 v11, 0x6

    const/16 v20, 0x4

    move v6, v5

    :goto_c
    if-eqz v6, :cond_1a

    const/4 v1, 0x2

    if-eq v13, v1, :cond_1a

    if-nez p14, :cond_1a

    .line 38
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v2, :cond_19

    .line 39
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 40
    :cond_19
    invoke-virtual {v10, v3, v15, v0, v11}, Lk0;->d(Lm0;Lm0;II)Lh0;

    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    move v0, v6

    :goto_d
    if-eqz p20, :cond_36

    if-eqz p15, :cond_1b

    goto/16 :goto_1a

    :cond_1b
    const/4 v13, 0x5

    if-nez v17, :cond_1c

    if-nez v18, :cond_1c

    if-nez v19, :cond_1c

    const/4 v1, 0x0

    if-eqz p2, :cond_33

    .line 41
    invoke-virtual {v10, v12, v3, v1, v13}, Lk0;->f(Lm0;Lm0;II)V

    goto/16 :goto_18

    :cond_1c
    const/4 v1, 0x0

    if-eqz v17, :cond_1d

    if-nez v18, :cond_1d

    if-eqz p2, :cond_33

    .line 42
    invoke-virtual {v10, v12, v3, v1, v13}, Lk0;->f(Lm0;Lm0;II)V

    goto/16 :goto_18

    :cond_1d
    if-nez v17, :cond_1e

    if-eqz v18, :cond_1e

    .line 43
    invoke-virtual/range {p8 .. p8}, Lq0;->c()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v9, v25

    invoke-virtual {v10, v3, v9, v0, v11}, Lk0;->d(Lm0;Lm0;II)Lh0;

    if-eqz p2, :cond_33

    move-object/from16 v8, p3

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v10, v15, v8, v7, v13}, Lk0;->f(Lm0;Lm0;II)V

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v8, p3

    move-object/from16 v9, v25

    const/4 v7, 0x0

    if-eqz v17, :cond_33

    if-eqz v18, :cond_33

    if-eqz v0, :cond_28

    if-eqz p2, :cond_1f

    if-nez p11, :cond_1f

    .line 45
    invoke-virtual {v10, v3, v15, v7, v11}, Lk0;->f(Lm0;Lm0;II)V

    :cond_1f
    move/from16 v6, v24

    if-nez v6, :cond_24

    if-gtz v2, :cond_21

    if-lez v14, :cond_20

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    const/4 v6, 0x6

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x1

    const/4 v6, 0x4

    .line 46
    :goto_f
    invoke-virtual/range {p7 .. p7}, Lq0;->c()I

    move-result v4

    move-object/from16 v5, v26

    invoke-virtual {v10, v15, v5, v4, v6}, Lk0;->d(Lm0;Lm0;II)Lh0;

    .line 47
    invoke-virtual/range {p8 .. p8}, Lq0;->c()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v10, v3, v9, v4, v6}, Lk0;->d(Lm0;Lm0;II)Lh0;

    if-gtz v2, :cond_23

    if-lez v14, :cond_22

    goto :goto_10

    :cond_22
    const/4 v6, 0x0

    goto :goto_11

    :cond_23
    :goto_10
    const/4 v6, 0x1

    :goto_11
    move v2, v1

    move v1, v6

    const/4 v14, 0x1

    move-object/from16 v6, p0

    goto :goto_14

    :cond_24
    move-object/from16 v5, v26

    const/4 v14, 0x1

    if-ne v6, v14, :cond_25

    const/4 v1, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x6

    move-object/from16 v6, p0

    goto :goto_15

    :cond_25
    const/4 v1, 0x3

    if-ne v6, v1, :cond_27

    move-object/from16 v6, p0

    if-nez p14, :cond_26

    .line 48
    iget v1, v6, Lr0;->n:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_26

    if-gtz v2, :cond_26

    const/4 v1, 0x6

    goto :goto_12

    :cond_26
    const/4 v1, 0x4

    .line 49
    :goto_12
    invoke-virtual/range {p7 .. p7}, Lq0;->c()I

    move-result v2

    invoke-virtual {v10, v15, v5, v2, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    .line 50
    invoke-virtual/range {p8 .. p8}, Lq0;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v3, v9, v2, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_14

    :cond_27
    move-object/from16 v6, p0

    const/4 v1, 0x0

    goto :goto_13

    :cond_28
    move-object/from16 v6, p0

    move-object/from16 v5, v26

    const/4 v14, 0x1

    const/4 v1, 0x1

    :goto_13
    const/4 v2, 0x0

    :goto_14
    move/from16 v16, v2

    const/16 v17, 0x5

    :goto_15
    if-eqz v1, :cond_2a

    .line 51
    invoke-virtual/range {p7 .. p7}, Lq0;->c()I

    move-result v4

    .line 52
    invoke-virtual/range {p8 .. p8}, Lq0;->c()I

    move-result v18

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 p5, v3

    move-object v3, v5

    move-object v13, v5

    move/from16 v5, p13

    move-object v6, v9

    const/4 v14, 0x0

    move-object/from16 v7, p5

    move-object v11, v8

    move/from16 v8, v18

    move-object v14, v9

    move/from16 v9, v17

    .line 53
    invoke-virtual/range {v1 .. v9}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    move-object/from16 v1, p7

    .line 54
    iget-object v2, v1, Lq0;->d:Lq0;

    iget-object v2, v2, Lq0;->b:Lr0;

    instance-of v2, v2, Lo0;

    move-object/from16 v3, p8

    .line 55
    iget-object v4, v3, Lq0;->d:Lq0;

    iget-object v4, v4, Lq0;->b:Lr0;

    instance-of v4, v4, Lo0;

    if-eqz v2, :cond_29

    if-nez v4, :cond_29

    move/from16 v5, p2

    const/4 v2, 0x6

    const/4 v6, 0x5

    const/16 v23, 0x1

    goto :goto_16

    :cond_29
    if-nez v2, :cond_2b

    if-eqz v4, :cond_2b

    move/from16 v23, p2

    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x6

    goto :goto_16

    :cond_2a
    move-object/from16 v1, p7

    move-object/from16 p5, v3

    move-object v13, v5

    move-object v11, v8

    move-object v14, v9

    move-object/from16 v3, p8

    :cond_2b
    move/from16 v5, p2

    move/from16 v23, v5

    const/4 v2, 0x5

    const/4 v6, 0x5

    :goto_16
    if-eqz v16, :cond_2c

    const/4 v2, 0x6

    const/4 v6, 0x6

    :cond_2c
    if-nez v0, :cond_2d

    if-nez v5, :cond_2e

    :cond_2d
    if-eqz v16, :cond_2f

    .line 56
    :cond_2e
    invoke-virtual/range {p7 .. p7}, Lq0;->c()I

    move-result v1

    invoke-virtual {v10, v15, v13, v1, v6}, Lk0;->f(Lm0;Lm0;II)V

    :cond_2f
    if-nez v0, :cond_30

    if-nez v23, :cond_31

    :cond_30
    if-eqz v16, :cond_32

    .line 57
    :cond_31
    invoke-virtual/range {p8 .. p8}, Lq0;->c()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v1, p5

    invoke-virtual {v10, v1, v14, v0, v2}, Lk0;->g(Lm0;Lm0;II)V

    goto :goto_17

    :cond_32
    move-object/from16 v1, p5

    :goto_17
    const/4 v0, 0x0

    const/4 v2, 0x6

    if-eqz p2, :cond_34

    .line 58
    invoke-virtual {v10, v15, v11, v0, v2}, Lk0;->f(Lm0;Lm0;II)V

    goto :goto_19

    :cond_33
    :goto_18
    move-object v1, v3

    const/4 v0, 0x0

    const/4 v2, 0x6

    :cond_34
    :goto_19
    if-eqz p2, :cond_35

    .line 59
    invoke-virtual {v10, v12, v1, v0, v2}, Lk0;->f(Lm0;Lm0;II)V

    :cond_35
    return-void

    :cond_36
    :goto_1a
    move-object/from16 v11, p3

    move-object v1, v3

    move v4, v13

    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x2

    if-ge v4, v3, :cond_37

    if-eqz p2, :cond_37

    .line 60
    invoke-virtual {v10, v15, v11, v0, v2}, Lk0;->f(Lm0;Lm0;II)V

    .line 61
    invoke-virtual {v10, v12, v1, v0, v2}, Lk0;->f(Lm0;Lm0;II)V

    :cond_37
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v0, v0, Lz0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr0;->u:Lq0;

    .line 2
    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v0, v0, Lz0;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr0;->t:Lq0;

    .line 3
    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v0, v0, Lz0;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr0;->v:Lq0;

    .line 4
    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v0, v0, Lz0;->b:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 3

    .line 1
    iget v0, p0, Lr0;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->G:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr0;->C:[Lr0$a;

    aget-object v0, v0, v1

    sget-object v2, Lr0$a;->d:Lr0$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public D()Z
    .locals 3

    .line 1
    iget v0, p0, Lr0;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->G:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lr0;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr0;->C:[Lr0$a;

    aget-object v0, v0, v1

    sget-object v2, Lr0$a;->d:Lr0$a;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public E()V
    .locals 7

    .line 1
    iget-object v0, p0, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 2
    iget-object v0, p0, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 3
    iget-object v0, p0, Lr0;->u:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 4
    iget-object v0, p0, Lr0;->v:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 5
    iget-object v0, p0, Lr0;->w:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 6
    iget-object v0, p0, Lr0;->x:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 7
    iget-object v0, p0, Lr0;->y:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    .line 8
    iget-object v0, p0, Lr0;->z:Lq0;

    invoke-virtual {v0}, Lq0;->i()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lr0;->D:Lr0;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lr0;->r:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lr0;->E:I

    .line 12
    iput v2, p0, Lr0;->F:I

    .line 13
    iput v1, p0, Lr0;->G:F

    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lr0;->H:I

    .line 15
    iput v2, p0, Lr0;->I:I

    .line 16
    iput v2, p0, Lr0;->J:I

    .line 17
    iput v2, p0, Lr0;->M:I

    .line 18
    iput v2, p0, Lr0;->N:I

    .line 19
    iput v2, p0, Lr0;->O:I

    .line 20
    iput v2, p0, Lr0;->P:I

    .line 21
    iput v2, p0, Lr0;->Q:I

    .line 22
    iput v2, p0, Lr0;->R:I

    .line 23
    iput v2, p0, Lr0;->S:I

    .line 24
    iput v2, p0, Lr0;->T:I

    .line 25
    iput v2, p0, Lr0;->U:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 26
    iput v4, p0, Lr0;->V:F

    .line 27
    iput v4, p0, Lr0;->W:F

    .line 28
    iget-object v4, p0, Lr0;->C:[Lr0$a;

    sget-object v5, Lr0$a;->b:Lr0$a;

    aput-object v5, v4, v2

    const/4 v6, 0x1

    .line 29
    aput-object v5, v4, v6

    .line 30
    iput-object v0, p0, Lr0;->X:Ljava/lang/Object;

    .line 31
    iput v2, p0, Lr0;->Y:I

    .line 32
    iput v2, p0, Lr0;->d0:I

    .line 33
    iput v2, p0, Lr0;->e0:I

    .line 34
    iget-object v4, p0, Lr0;->f0:[F

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v4, v2

    .line 35
    aput v5, v4, v6

    .line 36
    iput v3, p0, Lr0;->a:I

    .line 37
    iput v3, p0, Lr0;->b:I

    .line 38
    iget-object v4, p0, Lr0;->q:[I

    const v5, 0x7fffffff

    aput v5, v4, v2

    .line 39
    aput v5, v4, v6

    .line 40
    iput v2, p0, Lr0;->e:I

    .line 41
    iput v2, p0, Lr0;->f:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 42
    iput v4, p0, Lr0;->j:F

    .line 43
    iput v4, p0, Lr0;->m:F

    .line 44
    iput v5, p0, Lr0;->i:I

    .line 45
    iput v5, p0, Lr0;->l:I

    .line 46
    iput v2, p0, Lr0;->h:I

    .line 47
    iput v2, p0, Lr0;->k:I

    .line 48
    iput v3, p0, Lr0;->n:I

    .line 49
    iput v4, p0, Lr0;->o:F

    .line 50
    iget-object v3, p0, Lr0;->c:Ly0;

    if-eqz v3, :cond_0

    .line 51
    iput v2, v3, Lz0;->b:I

    .line 52
    iget-object v4, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 53
    iput v1, v3, Ly0;->c:F

    .line 54
    :cond_0
    iget-object v3, p0, Lr0;->d:Ly0;

    if-eqz v3, :cond_1

    .line 55
    iput v2, v3, Lz0;->b:I

    .line 56
    iget-object v4, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 57
    iput v1, v3, Ly0;->c:F

    .line 58
    :cond_1
    iput-object v0, p0, Lr0;->p:Lt0;

    .line 59
    iput-boolean v2, p0, Lr0;->a0:Z

    .line 60
    iput-boolean v2, p0, Lr0;->b0:Z

    .line 61
    iput-boolean v2, p0, Lr0;->c0:Z

    return-void
.end method

.method public F()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lr0;->A:[Lq0;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    invoke-virtual {v1}, Lx0;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Li0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lr0;->s:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 2
    iget-object p1, p0, Lr0;->t:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 3
    iget-object p1, p0, Lr0;->u:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 4
    iget-object p1, p0, Lr0;->v:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 5
    iget-object p1, p0, Lr0;->w:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 6
    iget-object p1, p0, Lr0;->z:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 7
    iget-object p1, p0, Lr0;->x:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    .line 8
    iget-object p1, p0, Lr0;->y:Lq0;

    invoke-virtual {p1}, Lq0;->j()V

    return-void
.end method

.method public H()V
    .locals 0

    return-void
.end method

.method public I(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->Q:I

    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr0;->X:Ljava/lang/Object;

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr0;->Z:Ljava/lang/String;

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 11
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 17
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 18
    iput p1, p0, Lr0;->G:F

    .line 19
    iput v1, p0, Lr0;->H:I

    :cond_7
    return-void

    .line 20
    :cond_8
    :goto_2
    iput v0, p0, Lr0;->G:F

    return-void
.end method

.method public M(III)V
    .locals 1

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1
    iput p1, p0, Lr0;->I:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Lr0;->E:I

    .line 3
    iget p1, p0, Lr0;->R:I

    if-ge p2, p1, :cond_1

    .line 4
    iput p1, p0, Lr0;->E:I

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 5
    iput p1, p0, Lr0;->J:I

    sub-int/2addr p2, p1

    .line 6
    iput p2, p0, Lr0;->F:I

    .line 7
    iget p1, p0, Lr0;->S:I

    if-ge p2, p1, :cond_1

    .line 8
    iput p1, p0, Lr0;->F:I

    .line 9
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lr0;->b0:Z

    return-void
.end method

.method public N(I)V
    .locals 1

    .line 1
    iput p1, p0, Lr0;->F:I

    .line 2
    iget v0, p0, Lr0;->S:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lr0;->F:I

    :cond_0
    return-void
.end method

.method public O(F)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->V:F

    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->d0:I

    return-void
.end method

.method public Q(II)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->I:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Lr0;->E:I

    .line 3
    iget p1, p0, Lr0;->R:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Lr0;->E:I

    :cond_0
    return-void
.end method

.method public R(Lr0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    sget-object v0, Lr0$a;->c:Lr0$a;

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Lr0;->T:I

    invoke-virtual {p0, p1}, Lr0;->h0(I)V

    :cond_0
    return-void
.end method

.method public S(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->e:I

    .line 2
    iput p2, p0, Lr0;->h:I

    .line 3
    iput p3, p0, Lr0;->i:I

    .line 4
    iput p4, p0, Lr0;->j:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lr0;->e:I

    :cond_0
    return-void
.end method

.method public T(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->f0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public U(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->q:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public V(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->q:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public W(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lr0;->S:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lr0;->S:I

    :goto_0
    return-void
.end method

.method public X(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lr0;->R:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lr0;->R:I

    :goto_0
    return-void
.end method

.method public Y(II)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->O:I

    .line 2
    iput p2, p0, Lr0;->P:I

    return-void
.end method

.method public Z(II)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->I:I

    .line 2
    iput p2, p0, Lr0;->J:I

    return-void
.end method

.method public a(Lk0;)V
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    sget-object v10, Lr0$a;->c:Lr0$a;

    iget-object v0, v15, Lr0;->s:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v21

    .line 2
    iget-object v0, v15, Lr0;->u:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v6

    .line 3
    iget-object v0, v15, Lr0;->t:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v4

    .line 4
    iget-object v0, v15, Lr0;->v:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    .line 5
    iget-object v0, v15, Lr0;->w:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v2

    .line 6
    iget-object v0, v15, Lr0;->D:Lr0;

    const/16 v1, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_c

    if-eqz v0, :cond_0

    .line 7
    iget-object v5, v0, Lr0;->C:[Lr0$a;

    aget-object v5, v5, v12

    if-ne v5, v10, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Lr0;->C:[Lr0$a;

    aget-object v0, v0, v13

    if-ne v0, v10, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-direct {v15, v12}, Lr0;->A(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 10
    iget-object v7, v15, Lr0;->D:Lr0;

    check-cast v7, Ls0;

    invoke-virtual {v7, v15, v12}, Ls0;->s0(Lr0;I)V

    :cond_2
    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    .line 11
    :cond_3
    iget-object v7, v15, Lr0;->s:Lq0;

    iget-object v8, v7, Lq0;->d:Lq0;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lq0;->d:Lq0;

    if-eq v8, v7, :cond_2

    :cond_4
    iget-object v7, v15, Lr0;->u:Lq0;

    iget-object v8, v7, Lq0;->d:Lq0;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lq0;->d:Lq0;

    if-ne v8, v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 12
    :goto_3
    invoke-direct {v15, v13}, Lr0;->A(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 13
    iget-object v8, v15, Lr0;->D:Lr0;

    check-cast v8, Ls0;

    invoke-virtual {v8, v15, v13}, Ls0;->s0(Lr0;I)V

    :cond_6
    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    .line 14
    :cond_7
    iget-object v8, v15, Lr0;->t:Lq0;

    iget-object v9, v8, Lq0;->d:Lq0;

    if-eqz v9, :cond_8

    iget-object v9, v9, Lq0;->d:Lq0;

    if-eq v9, v8, :cond_6

    :cond_8
    iget-object v8, v15, Lr0;->v:Lq0;

    iget-object v9, v8, Lq0;->d:Lq0;

    if-eqz v9, :cond_9

    iget-object v9, v9, Lq0;->d:Lq0;

    if-ne v9, v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_5
    if-eqz v5, :cond_a

    .line 15
    iget v9, v15, Lr0;->Y:I

    if-eq v9, v1, :cond_a

    iget-object v9, v15, Lr0;->s:Lq0;

    iget-object v9, v9, Lq0;->d:Lq0;

    if-nez v9, :cond_a

    iget-object v9, v15, Lr0;->u:Lq0;

    iget-object v9, v9, Lq0;->d:Lq0;

    if-nez v9, :cond_a

    .line 16
    iget-object v9, v15, Lr0;->D:Lr0;

    iget-object v9, v9, Lr0;->u:Lq0;

    invoke-virtual {v14, v9}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v9

    .line 17
    invoke-virtual {v14, v9, v6, v12, v13}, Lk0;->f(Lm0;Lm0;II)V

    :cond_a
    if-eqz v0, :cond_b

    .line 18
    iget v9, v15, Lr0;->Y:I

    if-eq v9, v1, :cond_b

    iget-object v9, v15, Lr0;->t:Lq0;

    iget-object v9, v9, Lq0;->d:Lq0;

    if-nez v9, :cond_b

    iget-object v9, v15, Lr0;->v:Lq0;

    iget-object v9, v9, Lq0;->d:Lq0;

    if-nez v9, :cond_b

    iget-object v9, v15, Lr0;->w:Lq0;

    if-nez v9, :cond_b

    .line 19
    iget-object v9, v15, Lr0;->D:Lr0;

    iget-object v9, v9, Lr0;->v:Lq0;

    invoke-virtual {v14, v9}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v9

    .line 20
    invoke-virtual {v14, v9, v3, v12, v13}, Lk0;->f(Lm0;Lm0;II)V

    :cond_b
    move/from16 v22, v0

    move/from16 v16, v5

    move/from16 v20, v7

    move/from16 v23, v8

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 21
    :goto_6
    iget v0, v15, Lr0;->E:I

    .line 22
    iget v5, v15, Lr0;->R:I

    if-ge v0, v5, :cond_d

    goto :goto_7

    :cond_d
    move v5, v0

    .line 23
    :goto_7
    iget v7, v15, Lr0;->F:I

    .line 24
    iget v8, v15, Lr0;->S:I

    if-ge v7, v8, :cond_e

    goto :goto_8

    :cond_e
    move v8, v7

    .line 25
    :goto_8
    iget-object v9, v15, Lr0;->C:[Lr0$a;

    aget-object v11, v9, v12

    sget-object v12, Lr0$a;->d:Lr0$a;

    if-eq v11, v12, :cond_f

    const/4 v11, 0x1

    goto :goto_9

    :cond_f
    const/4 v11, 0x0

    .line 26
    :goto_9
    aget-object v1, v9, v13

    if-eq v1, v12, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    .line 27
    :goto_a
    iget v13, v15, Lr0;->H:I

    iput v13, v15, Lr0;->n:I

    move-object/from16 v24, v2

    .line 28
    iget v2, v15, Lr0;->G:F

    iput v2, v15, Lr0;->o:F

    move-object/from16 v25, v3

    .line 29
    iget v3, v15, Lr0;->e:I

    move-object/from16 v26, v4

    .line 30
    iget v4, v15, Lr0;->f:I

    const/16 v27, 0x0

    const/16 v28, 0x4

    move-object/from16 v29, v6

    cmpl-float v27, v2, v27

    if-lez v27, :cond_26

    .line 31
    iget v6, v15, Lr0;->Y:I

    move/from16 v30, v5

    const/16 v5, 0x8

    if-eq v6, v5, :cond_27

    const/4 v5, 0x0

    .line 32
    aget-object v6, v9, v5

    if-ne v6, v12, :cond_11

    if-nez v3, :cond_11

    const/4 v3, 0x3

    :cond_11
    const/4 v6, 0x1

    .line 33
    aget-object v5, v9, v6

    if-ne v5, v12, :cond_12

    if-nez v4, :cond_12

    const/4 v4, 0x3

    :cond_12
    const/4 v5, 0x0

    .line 34
    aget-object v6, v9, v5

    const/high16 v31, 0x3f800000    # 1.0f

    if-ne v6, v12, :cond_20

    const/4 v6, 0x1

    aget-object v5, v9, v6

    if-ne v5, v12, :cond_20

    const/4 v5, 0x3

    if-ne v3, v5, :cond_20

    if-ne v4, v5, :cond_20

    const/4 v0, -0x1

    if-ne v13, v0, :cond_14

    if-eqz v11, :cond_13

    if-nez v1, :cond_13

    const/4 v5, 0x0

    .line 35
    iput v5, v15, Lr0;->n:I

    goto :goto_b

    :cond_13
    if-nez v11, :cond_14

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 36
    iput v1, v15, Lr0;->n:I

    if-ne v13, v0, :cond_14

    div-float v0, v31, v2

    .line 37
    iput v0, v15, Lr0;->o:F

    .line 38
    :cond_14
    :goto_b
    iget v0, v15, Lr0;->n:I

    if-nez v0, :cond_16

    iget-object v0, v15, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v15, Lr0;->v:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    const/4 v0, 0x1

    .line 39
    iput v0, v15, Lr0;->n:I

    goto :goto_c

    :cond_16
    const/4 v0, 0x1

    .line 40
    iget v1, v15, Lr0;->n:I

    if-ne v1, v0, :cond_18

    iget-object v0, v15, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v15, Lr0;->u:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    const/4 v0, 0x0

    .line 41
    iput v0, v15, Lr0;->n:I

    .line 42
    :cond_18
    :goto_c
    iget v0, v15, Lr0;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 43
    iget-object v0, v15, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v15, Lr0;->v:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v15, Lr0;->s:Lq0;

    .line 44
    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v15, Lr0;->u:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 45
    :cond_19
    iget-object v0, v15, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v15, Lr0;->v:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 46
    iput v0, v15, Lr0;->n:I

    goto :goto_d

    .line 47
    :cond_1a
    iget-object v0, v15, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v15, Lr0;->u:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 48
    iget v0, v15, Lr0;->o:F

    div-float v0, v31, v0

    iput v0, v15, Lr0;->o:F

    const/4 v0, 0x1

    .line 49
    iput v0, v15, Lr0;->n:I

    .line 50
    :cond_1b
    :goto_d
    iget v0, v15, Lr0;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    if-eqz v16, :cond_1c

    if-nez v22, :cond_1c

    const/4 v0, 0x0

    .line 51
    iput v0, v15, Lr0;->n:I

    goto :goto_e

    :cond_1c
    if-nez v16, :cond_1d

    if-eqz v22, :cond_1d

    .line 52
    iget v0, v15, Lr0;->o:F

    div-float v0, v31, v0

    iput v0, v15, Lr0;->o:F

    const/4 v0, 0x1

    .line 53
    iput v0, v15, Lr0;->n:I

    .line 54
    :cond_1d
    :goto_e
    iget v0, v15, Lr0;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 55
    iget v0, v15, Lr0;->h:I

    if-lez v0, :cond_1e

    iget v1, v15, Lr0;->k:I

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    .line 56
    iput v1, v15, Lr0;->n:I

    goto :goto_f

    :cond_1e
    if-nez v0, :cond_1f

    .line 57
    iget v0, v15, Lr0;->k:I

    if-lez v0, :cond_1f

    .line 58
    iget v0, v15, Lr0;->o:F

    div-float v0, v31, v0

    iput v0, v15, Lr0;->o:F

    const/4 v0, 0x1

    .line 59
    iput v0, v15, Lr0;->n:I

    .line 60
    :cond_1f
    :goto_f
    iget v0, v15, Lr0;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    if-eqz v16, :cond_25

    if-eqz v22, :cond_25

    .line 61
    iget v0, v15, Lr0;->o:F

    div-float v0, v31, v0

    iput v0, v15, Lr0;->o:F

    const/4 v0, 0x1

    .line 62
    iput v0, v15, Lr0;->n:I

    goto :goto_10

    :cond_20
    const/4 v1, 0x0

    .line 63
    aget-object v5, v9, v1

    if-ne v5, v12, :cond_22

    const/4 v5, 0x3

    if-ne v3, v5, :cond_22

    .line 64
    iput v1, v15, Lr0;->n:I

    int-to-float v0, v7

    mul-float v2, v2, v0

    float-to-int v0, v2

    const/4 v1, 0x1

    .line 65
    aget-object v2, v9, v1

    move/from16 v30, v0

    if-eq v2, v12, :cond_21

    move/from16 v33, v4

    move/from16 v31, v8

    const/16 v17, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x4

    goto :goto_12

    :cond_21
    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v31, v8

    const/16 v17, 0x0

    goto :goto_11

    :cond_22
    const/4 v1, 0x1

    .line 66
    aget-object v5, v9, v1

    if-ne v5, v12, :cond_25

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 67
    iput v1, v15, Lr0;->n:I

    const/4 v1, -0x1

    if-ne v13, v1, :cond_23

    div-float v1, v31, v2

    .line 68
    iput v1, v15, Lr0;->o:F

    .line 69
    :cond_23
    iget v1, v15, Lr0;->o:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/16 v17, 0x0

    .line 70
    aget-object v1, v9, v17

    move/from16 v31, v0

    move/from16 v32, v3

    if-eq v1, v12, :cond_24

    const/16 v28, 0x0

    const/16 v33, 0x4

    goto :goto_12

    :cond_24
    move/from16 v33, v4

    goto :goto_11

    :cond_25
    :goto_10
    const/16 v17, 0x0

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v31, v8

    :goto_11
    const/16 v28, 0x1

    goto :goto_12

    :cond_26
    move/from16 v30, v5

    :cond_27
    const/16 v17, 0x0

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v31, v8

    const/16 v28, 0x0

    .line 71
    :goto_12
    iget-object v0, v15, Lr0;->g:[I

    aput v32, v0, v17

    const/4 v1, 0x1

    .line 72
    aput v33, v0, v1

    if-eqz v28, :cond_29

    .line 73
    iget v0, v15, Lr0;->n:I

    const/4 v6, -0x1

    if-eqz v0, :cond_28

    if-ne v0, v6, :cond_2a

    :cond_28
    const/16 v27, 0x1

    goto :goto_13

    :cond_29
    const/4 v6, -0x1

    :cond_2a
    const/16 v27, 0x0

    .line 74
    :goto_13
    iget-object v0, v15, Lr0;->C:[Lr0$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne v0, v10, :cond_2b

    instance-of v0, v15, Ls0;

    if-eqz v0, :cond_2b

    const/16 v34, 0x1

    goto :goto_14

    :cond_2b
    const/16 v34, 0x0

    .line 75
    :goto_14
    iget-object v0, v15, Lr0;->z:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v35, v0, 0x1

    .line 76
    iget v0, v15, Lr0;->a:I

    const/4 v4, 0x2

    const/16 v36, 0x0

    if-eq v0, v4, :cond_2e

    .line 77
    iget-object v0, v15, Lr0;->D:Lr0;

    if-eqz v0, :cond_2c

    iget-object v0, v0, Lr0;->u:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_15

    :cond_2c
    move-object/from16 v37, v36

    .line 78
    :goto_15
    iget-object v0, v15, Lr0;->D:Lr0;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lr0;->s:Lq0;

    invoke-virtual {v14, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    move-object v3, v0

    goto :goto_16

    :cond_2d
    move-object/from16 v3, v36

    .line 79
    :goto_16
    iget-object v0, v15, Lr0;->C:[Lr0$a;

    const/4 v2, 0x0

    aget-object v5, v0, v2

    iget-object v7, v15, Lr0;->s:Lq0;

    iget-object v8, v15, Lr0;->u:Lq0;

    iget v9, v15, Lr0;->I:I

    iget v11, v15, Lr0;->R:I

    iget-object v0, v15, Lr0;->q:[I

    aget v12, v0, v2

    iget v13, v15, Lr0;->V:F

    iget v0, v15, Lr0;->h:I

    move/from16 v17, v0

    iget v0, v15, Lr0;->i:I

    move/from16 v18, v0

    iget v0, v15, Lr0;->j:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v38, v24

    move/from16 v2, v16

    move-object/from16 v24, v25

    move-object/from16 v39, v26

    move-object/from16 v4, v37

    move-object/from16 v25, v29

    move/from16 v6, v34

    move-object/from16 v40, v10

    move/from16 v10, v30

    move/from16 v14, v27

    move/from16 v15, v20

    move/from16 v16, v32

    move/from16 v20, v35

    invoke-direct/range {v0 .. v20}, Lr0;->d(Lk0;ZLm0;Lm0;Lr0$a;ZLq0;Lq0;IIIIFZZIIIFZ)V

    goto :goto_17

    :cond_2e
    move-object/from16 v40, v10

    move-object/from16 v38, v24

    move-object/from16 v24, v25

    move-object/from16 v39, v26

    move-object/from16 v25, v29

    :goto_17
    move-object/from16 v15, p0

    .line 80
    iget v0, v15, Lr0;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    return-void

    .line 81
    :cond_2f
    iget-object v0, v15, Lr0;->C:[Lr0$a;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_30

    instance-of v0, v15, Ls0;

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    goto :goto_18

    :cond_30
    const/4 v6, 0x0

    :goto_18
    if-eqz v28, :cond_32

    .line 82
    iget v0, v15, Lr0;->n:I

    if-eq v0, v14, :cond_31

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    :cond_31
    const/16 v16, 0x1

    goto :goto_19

    :cond_32
    const/16 v16, 0x0

    .line 83
    :goto_19
    iget v0, v15, Lr0;->Q:I

    if-lez v0, :cond_34

    .line 84
    iget-object v0, v15, Lr0;->w:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v0, v0, Lz0;->b:I

    if-ne v0, v14, :cond_33

    .line 85
    iget-object v0, v15, Lr0;->w:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lx0;->e(Lk0;)V

    goto :goto_1a

    :cond_33
    move-object/from16 v10, p1

    .line 86
    iget v0, v15, Lr0;->Q:I

    const/4 v1, 0x6

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    .line 87
    invoke-virtual {v10, v2, v4, v0, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    .line 88
    iget-object v0, v15, Lr0;->w:Lq0;

    iget-object v0, v0, Lq0;->d:Lq0;

    if-eqz v0, :cond_35

    .line 89
    invoke-virtual {v10, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v10, v2, v0, v3, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    const/16 v20, 0x0

    goto :goto_1b

    :cond_34
    move-object/from16 v10, p1

    :goto_1a
    move-object/from16 v4, v39

    :cond_35
    move/from16 v20, v35

    .line 91
    :goto_1b
    iget-object v0, v15, Lr0;->D:Lr0;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lr0;->v:Lq0;

    invoke-virtual {v10, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_1c

    :cond_36
    move-object/from16 v26, v36

    .line 92
    :goto_1c
    iget-object v0, v15, Lr0;->D:Lr0;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lr0;->t:Lq0;

    invoke-virtual {v10, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    move-object v3, v0

    goto :goto_1d

    :cond_37
    move-object/from16 v3, v36

    .line 93
    :goto_1d
    iget-object v0, v15, Lr0;->C:[Lr0$a;

    aget-object v5, v0, v14

    iget-object v7, v15, Lr0;->t:Lq0;

    iget-object v8, v15, Lr0;->v:Lq0;

    iget v9, v15, Lr0;->J:I

    iget v11, v15, Lr0;->S:I

    iget-object v0, v15, Lr0;->q:[I

    aget v12, v0, v14

    iget v13, v15, Lr0;->W:F

    iget v0, v15, Lr0;->k:I

    move/from16 v17, v0

    iget v0, v15, Lr0;->l:I

    move/from16 v18, v0

    iget v0, v15, Lr0;->m:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v26

    move/from16 v10, v31

    move/from16 v14, v16

    move/from16 v15, v23

    move/from16 v16, v33

    invoke-direct/range {v0 .. v20}, Lr0;->d(Lk0;ZLm0;Lm0;Lr0$a;ZLq0;Lq0;IIIIFZZIIIFZ)V

    if-eqz v28, :cond_39

    const/4 v6, 0x6

    move-object/from16 v7, p0

    .line 94
    iget v0, v7, Lr0;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 95
    iget v5, v7, Lr0;->o:F

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Lk0;->h(Lm0;Lm0;Lm0;Lm0;FI)V

    goto :goto_1e

    .line 96
    :cond_38
    iget v5, v7, Lr0;->o:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v22

    invoke-virtual/range {v0 .. v6}, Lk0;->h(Lm0;Lm0;Lm0;Lm0;FI)V

    goto :goto_1e

    :cond_39
    move-object/from16 v7, p0

    .line 97
    :goto_1e
    iget-object v0, v7, Lr0;->z:Lq0;

    invoke-virtual {v0}, Lq0;->h()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 98
    iget-object v0, v7, Lr0;->z:Lq0;

    .line 99
    iget-object v0, v0, Lq0;->d:Lq0;

    .line 100
    iget-object v0, v0, Lq0;->b:Lr0;

    .line 101
    iget v1, v7, Lr0;->r:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lr0;->z:Lq0;

    invoke-virtual {v2}, Lq0;->c()I

    move-result v2

    .line 102
    sget-object v3, Lq0$b;->c:Lq0$b;

    invoke-virtual {v7, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v9

    .line 103
    sget-object v4, Lq0$b;->d:Lq0$b;

    invoke-virtual {v7, v4}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v11

    .line 104
    sget-object v6, Lq0$b;->e:Lq0$b;

    invoke-virtual {v7, v6}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v8

    invoke-virtual {v5, v8}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v16

    .line 105
    sget-object v8, Lq0$b;->f:Lq0$b;

    invoke-virtual {v7, v8}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v10

    invoke-virtual {v5, v10}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v12

    .line 106
    invoke-virtual {v0, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v3

    invoke-virtual {v5, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v4}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    invoke-virtual {v5, v4}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v13

    .line 108
    invoke-virtual {v0, v6}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    invoke-virtual {v5, v4}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v8}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v0

    invoke-virtual {v5, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v14

    .line 110
    invoke-virtual/range {p1 .. p1}, Lk0;->m()Lh0;

    move-result-object v0

    float-to-double v6, v1

    .line 111
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    mul-double v3, v17, v1

    double-to-float v15, v3

    move-object v10, v0

    .line 112
    invoke-virtual/range {v10 .. v15}, Lh0;->g(Lm0;Lm0;Lm0;Lm0;F)Lh0;

    .line 113
    invoke-virtual {v5, v0}, Lk0;->c(Lh0;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Lk0;->m()Lh0;

    move-result-object v0

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-float v13, v3

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    .line 116
    invoke-virtual/range {v8 .. v13}, Lh0;->g(Lm0;Lm0;Lm0;Lm0;F)Lh0;

    .line 117
    invoke-virtual {v5, v0}, Lk0;->c(Lh0;)V

    :cond_3a
    return-void
.end method

.method public a0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->W:F

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lr0;->Y:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->e0:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lw0;->a(ILr0;)V

    return-void
.end method

.method public c0(II)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->J:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Lr0;->F:I

    .line 3
    iget p1, p0, Lr0;->S:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Lr0;->F:I

    :cond_0
    return-void
.end method

.method public d0(Lr0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    sget-object v0, Lr0$a;->c:Lr0$a;

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Lr0;->U:I

    invoke-virtual {p0, p1}, Lr0;->N(I)V

    :cond_0
    return-void
.end method

.method public e(Lr0;FI)V
    .locals 6

    .line 1
    sget-object v3, Lq0$b;->h:Lq0$b;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    .line 2
    iput p2, p0, Lr0;->r:F

    return-void
.end method

.method public e0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->f:I

    .line 2
    iput p2, p0, Lr0;->k:I

    .line 3
    iput p3, p0, Lr0;->l:I

    .line 4
    iput p4, p0, Lr0;->m:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lr0;->f:I

    :cond_0
    return-void
.end method

.method public f(Lk0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0;->s:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    .line 2
    iget-object v0, p0, Lr0;->t:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    .line 3
    iget-object v0, p0, Lr0;->u:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    .line 4
    iget-object v0, p0, Lr0;->v:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    .line 5
    iget v0, p0, Lr0;->Q:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lr0;->w:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    :cond_0
    return-void
.end method

.method public f0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->f0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public g(Lq0$b;)Lq0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Lr0;->y:Lq0;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Lr0;->x:Lq0;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Lr0;->z:Lq0;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Lr0;->w:Lq0;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Lr0;->v:Lq0;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Lr0;->u:Lq0;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Lr0;->t:Lq0;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Lr0;->s:Lq0;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->Y:I

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lr0;->Q:I

    return v0
.end method

.method public h0(I)V
    .locals 1

    .line 1
    iput p1, p0, Lr0;->E:I

    .line 2
    iget v0, p0, Lr0;->R:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lr0;->E:I

    :cond_0
    return-void
.end method

.method public i()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->J:I

    .line 2
    iget v1, p0, Lr0;->F:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->U:I

    return-void
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0;->X:Ljava/lang/Object;

    return-object v0
.end method

.method public j0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->T:I

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public k0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->I:I

    return-void
.end method

.method public l(I)Lr0$a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lr0;->p()Lr0$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lr0;->u()Lr0$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr0;->J:I

    return-void
.end method

.method public m()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->M:I

    iget v1, p0, Lr0;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public m0()V
    .locals 2

    .line 1
    iget v0, p0, Lr0;->I:I

    .line 2
    iget v1, p0, Lr0;->J:I

    .line 3
    iput v0, p0, Lr0;->M:I

    .line 4
    iput v1, p0, Lr0;->N:I

    return-void
.end method

.method public n()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->N:I

    iget v1, p0, Lr0;->P:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n0(Lk0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lr0;->s:Lq0;

    invoke-virtual {p1, v0}, Lk0;->p(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lr0;->t:Lq0;

    invoke-virtual {p1, v1}, Lk0;->p(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lr0;->u:Lq0;

    invoke-virtual {p1, v2}, Lk0;->p(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lr0;->v:Lq0;

    invoke-virtual {p1, v3}, Lk0;->p(Ljava/lang/Object;)I

    move-result p1

    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 5
    iput v0, p0, Lr0;->I:I

    .line 6
    iput v1, p0, Lr0;->J:I

    .line 7
    iget v0, p0, Lr0;->Y:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 8
    iput v5, p0, Lr0;->E:I

    .line 9
    iput v5, p0, Lr0;->F:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    aget-object v1, v0, v5

    sget-object v3, Lr0$a;->b:Lr0$a;

    if-ne v1, v3, :cond_3

    iget v1, p0, Lr0;->E:I

    if-ge v2, v1, :cond_3

    move v2, v1

    :cond_3
    const/4 v1, 0x1

    .line 11
    aget-object v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lr0;->F:I

    if-ge p1, v0, :cond_4

    move p1, v0

    .line 12
    :cond_4
    iput v2, p0, Lr0;->E:I

    .line 13
    iput p1, p0, Lr0;->F:I

    .line 14
    iget v0, p0, Lr0;->S:I

    if-ge p1, v0, :cond_5

    .line 15
    iput v0, p0, Lr0;->F:I

    .line 16
    :cond_5
    iget p1, p0, Lr0;->R:I

    if-ge v2, p1, :cond_6

    .line 17
    iput p1, p0, Lr0;->E:I

    .line 18
    :cond_6
    iput-boolean v1, p0, Lr0;->b0:Z

    :goto_0
    return-void
.end method

.method public o()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->Y:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lr0;->F:I

    return v0
.end method

.method public p()Lr0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public q(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lr0;->w()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lr0;->o()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r()Ly0;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0;->d:Ly0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iput-object v0, p0, Lr0;->d:Ly0;

    .line 3
    :cond_0
    iget-object v0, p0, Lr0;->d:Ly0;

    return-object v0
.end method

.method public s()Ly0;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0;->c:Ly0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    iput-object v0, p0, Lr0;->c:Ly0;

    .line 3
    :cond_0
    iget-object v0, p0, Lr0;->c:Ly0;

    return-object v0
.end method

.method public t()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->I:I

    .line 2
    iget v1, p0, Lr0;->E:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lr0;->Z:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, "id: "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lr0;->Z:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v0, v2, v3}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lr0;->I:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lr0;->J:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lr0;->E:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lr0;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") wrap: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lr0;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lr0;->U:I

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lr0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lr0;->Y:I

    return v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget v0, p0, Lr0;->Y:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lr0;->E:I

    return v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lr0;->U:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lr0;->T:I

    return v0
.end method

.method public z(Lq0$b;Lr0;Lq0$b;II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v0

    .line 2
    invoke-virtual {p2, p3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v1

    .line 3
    sget-object v4, Lq0$a;->c:Lq0$a;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Lq0;->a(Lq0;IILq0$a;IZ)Z

    return-void
.end method
