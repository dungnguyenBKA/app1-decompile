.class public Lw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Lw0;->a:[Z

    return-void
.end method

.method static a(ILr0;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Lr0$a;->b:Lr0$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ge v3, v4, :cond_4

    .line 2
    iget-object v4, v0, Lr0;->A:[Lq0;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lq0;->d()Lx0;

    move-result-object v4

    .line 3
    iget-object v6, v4, Lx0;->c:Lq0;

    .line 4
    iget-object v7, v6, Lq0;->d:Lq0;

    if-nez v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v8, v7, Lq0;->d:Lq0;

    if-ne v8, v6, :cond_1

    .line 6
    iput v5, v4, Lx0;->h:I

    .line 7
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v6

    iput v5, v6, Lx0;->h:I

    .line 8
    :cond_1
    iget-object v5, v4, Lx0;->c:Lq0;

    invoke-virtual {v5}, Lq0;->c()I

    move-result v5

    .line 9
    iget-object v6, v4, Lx0;->c:Lq0;

    iget-object v6, v6, Lq0;->c:Lq0$b;

    sget-object v8, Lq0$b;->e:Lq0$b;

    if-eq v6, v8, :cond_2

    sget-object v8, Lq0$b;->f:Lq0$b;

    if-ne v6, v8, :cond_3

    :cond_2
    neg-int v5, v5

    .line 10
    :cond_3
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lx0;->g(Lx0;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v3, v0, Lr0;->s:Lq0;

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    .line 12
    iget-object v4, v0, Lr0;->t:Lq0;

    invoke-virtual {v4}, Lq0;->d()Lx0;

    move-result-object v4

    .line 13
    iget-object v6, v0, Lr0;->u:Lq0;

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    .line 14
    iget-object v7, v0, Lr0;->v:Lq0;

    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v7

    const/16 v8, 0x8

    and-int/lit8 v9, p0, 0x8

    const/4 v10, 0x1

    if-ne v9, v8, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .line 15
    :goto_2
    iget-object v11, v0, Lr0;->C:[Lr0$a;

    aget-object v11, v11, v2

    sget-object v12, Lr0$a;->d:Lr0$a;

    if-ne v11, v12, :cond_6

    .line 16
    invoke-static {v0, v2}, Lw0;->b(Lr0;I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    .line 17
    :goto_3
    iget v13, v3, Lx0;->h:I

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eq v13, v5, :cond_18

    iget v13, v6, Lx0;->h:I

    if-eq v13, v5, :cond_18

    .line 18
    iget-object v13, v0, Lr0;->C:[Lr0$a;

    aget-object v13, v13, v2

    if-eq v13, v1, :cond_10

    if-eqz v11, :cond_7

    .line 19
    invoke-virtual/range {p1 .. p1}, Lr0;->v()I

    move-result v13

    if-ne v13, v8, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz v11, :cond_18

    .line 20
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v11

    .line 21
    iput v10, v3, Lx0;->h:I

    .line 22
    iput v10, v6, Lx0;->h:I

    .line 23
    iget-object v13, v0, Lr0;->s:Lq0;

    iget-object v13, v13, Lq0;->d:Lq0;

    if-nez v13, :cond_9

    iget-object v2, v0, Lr0;->u:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_9

    if-eqz v9, :cond_8

    .line 24
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v6, v3, v10, v2}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_5

    .line 25
    :cond_8
    iput-object v3, v6, Lx0;->d:Lx0;

    int-to-float v2, v11

    .line 26
    iput v2, v6, Lx0;->e:F

    .line 27
    iget-object v2, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_9
    if-eqz v13, :cond_b

    .line 28
    iget-object v2, v0, Lr0;->u:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_b

    if-eqz v9, :cond_a

    .line 29
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v6, v3, v10, v2}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_5

    .line 30
    :cond_a
    iput-object v3, v6, Lx0;->d:Lx0;

    int-to-float v2, v11

    .line 31
    iput v2, v6, Lx0;->e:F

    .line 32
    iget-object v2, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    if-nez v13, :cond_d

    .line 33
    iget-object v2, v0, Lr0;->u:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_d

    if-eqz v9, :cond_c

    .line 34
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v3, v6, v14, v2}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_5

    :cond_c
    neg-int v2, v11

    .line 35
    iput-object v6, v3, Lx0;->d:Lx0;

    int-to-float v2, v2

    .line 36
    iput v2, v3, Lx0;->e:F

    .line 37
    iget-object v2, v6, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    if-eqz v13, :cond_18

    .line 38
    iget-object v2, v0, Lr0;->u:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_18

    if-eqz v9, :cond_e

    .line 39
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    .line 40
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    .line 42
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_e
    iget v2, v0, Lr0;->G:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_f

    const/4 v2, 0x3

    .line 44
    iput v2, v3, Lx0;->h:I

    .line 45
    iput v2, v6, Lx0;->h:I

    .line 46
    invoke-virtual {v3, v6, v15}, Lx0;->m(Lx0;F)V

    .line 47
    invoke-virtual {v6, v3, v15}, Lx0;->m(Lx0;F)V

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x2

    .line 48
    iput v2, v3, Lx0;->h:I

    .line 49
    iput v2, v6, Lx0;->h:I

    neg-int v2, v11

    int-to-float v2, v2

    .line 50
    invoke-virtual {v3, v6, v2}, Lx0;->m(Lx0;F)V

    int-to-float v2, v11

    .line 51
    invoke-virtual {v6, v3, v2}, Lx0;->m(Lx0;F)V

    .line 52
    invoke-virtual {v0, v11}, Lr0;->h0(I)V

    goto/16 :goto_5

    .line 53
    :cond_10
    :goto_4
    iget-object v2, v0, Lr0;->s:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_12

    iget-object v11, v0, Lr0;->u:Lq0;

    iget-object v11, v11, Lq0;->d:Lq0;

    if-nez v11, :cond_12

    .line 54
    iput v10, v3, Lx0;->h:I

    .line 55
    iput v10, v6, Lx0;->h:I

    if-eqz v9, :cond_11

    .line 56
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v6, v3, v10, v2}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_5

    .line 57
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    .line 58
    iput-object v3, v6, Lx0;->d:Lx0;

    int-to-float v2, v2

    .line 59
    iput v2, v6, Lx0;->e:F

    .line 60
    iget-object v2, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_12
    if-eqz v2, :cond_14

    .line 61
    iget-object v11, v0, Lr0;->u:Lq0;

    iget-object v11, v11, Lq0;->d:Lq0;

    if-nez v11, :cond_14

    .line 62
    iput v10, v3, Lx0;->h:I

    .line 63
    iput v10, v6, Lx0;->h:I

    if-eqz v9, :cond_13

    .line 64
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v6, v3, v10, v2}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_5

    .line 65
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    .line 66
    iput-object v3, v6, Lx0;->d:Lx0;

    int-to-float v2, v2

    .line 67
    iput v2, v6, Lx0;->e:F

    .line 68
    iget-object v2, v3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_14
    if-nez v2, :cond_16

    .line 69
    iget-object v11, v0, Lr0;->u:Lq0;

    iget-object v11, v11, Lq0;->d:Lq0;

    if-eqz v11, :cond_16

    .line 70
    iput v10, v3, Lx0;->h:I

    .line 71
    iput v10, v6, Lx0;->h:I

    .line 72
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    neg-int v2, v2

    .line 73
    iput-object v6, v3, Lx0;->d:Lx0;

    int-to-float v2, v2

    .line 74
    iput v2, v3, Lx0;->e:F

    .line 75
    iget-object v2, v6, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_15

    .line 76
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v3, v6, v14, v2}, Lx0;->h(Lx0;ILy0;)V

    goto :goto_5

    .line 77
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    neg-int v2, v2

    .line 78
    iput-object v6, v3, Lx0;->d:Lx0;

    int-to-float v2, v2

    .line 79
    iput v2, v3, Lx0;->e:F

    .line 80
    iget-object v2, v6, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    if-eqz v2, :cond_18

    .line 81
    iget-object v2, v0, Lr0;->u:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_18

    const/4 v2, 0x2

    .line 82
    iput v2, v3, Lx0;->h:I

    .line 83
    iput v2, v6, Lx0;->h:I

    if-eqz v9, :cond_17

    .line 84
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    .line 85
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    .line 87
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v3, v6, v14, v2}, Lx0;->n(Lx0;ILy0;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    invoke-virtual {v6, v3, v10, v2}, Lx0;->n(Lx0;ILy0;)V

    goto :goto_5

    .line 90
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v6, v2}, Lx0;->m(Lx0;F)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Lr0;->w()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v3, v2}, Lx0;->m(Lx0;F)V

    .line 92
    :cond_18
    :goto_5
    iget-object v2, v0, Lr0;->C:[Lr0$a;

    aget-object v2, v2, v10

    if-ne v2, v12, :cond_19

    .line 93
    invoke-static {v0, v10}, Lw0;->b(Lr0;I)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    goto :goto_6

    :cond_19
    const/4 v2, 0x0

    .line 94
    :goto_6
    iget v3, v4, Lx0;->h:I

    if-eq v3, v5, :cond_2b

    iget v3, v7, Lx0;->h:I

    if-eq v3, v5, :cond_2b

    .line 95
    iget-object v3, v0, Lr0;->C:[Lr0$a;

    aget-object v3, v3, v10

    if-eq v3, v1, :cond_23

    if-eqz v2, :cond_1a

    .line 96
    invoke-virtual/range {p1 .. p1}, Lr0;->v()I

    move-result v1

    if-ne v1, v8, :cond_1a

    goto/16 :goto_7

    :cond_1a
    if-eqz v2, :cond_2b

    .line 97
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    .line 98
    iput v10, v4, Lx0;->h:I

    .line 99
    iput v10, v7, Lx0;->h:I

    .line 100
    iget-object v2, v0, Lr0;->t:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_1c

    iget-object v3, v0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1c

    if-eqz v9, :cond_1b

    .line 101
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v0

    invoke-virtual {v7, v4, v10, v0}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_c

    .line 102
    :cond_1b
    iput-object v4, v7, Lx0;->d:Lx0;

    int-to-float v0, v1

    .line 103
    iput v0, v7, Lx0;->e:F

    .line 104
    iget-object v0, v4, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1c
    if-eqz v2, :cond_1e

    .line 105
    iget-object v3, v0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1e

    if-eqz v9, :cond_1d

    .line 106
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v0

    invoke-virtual {v7, v4, v10, v0}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_c

    .line 107
    :cond_1d
    iput-object v4, v7, Lx0;->d:Lx0;

    int-to-float v0, v1

    .line 108
    iput v0, v7, Lx0;->e:F

    .line 109
    iget-object v0, v4, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1e
    if-nez v2, :cond_20

    .line 110
    iget-object v3, v0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_20

    if-eqz v9, :cond_1f

    .line 111
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v0

    invoke-virtual {v4, v7, v14, v0}, Lx0;->h(Lx0;ILy0;)V

    goto/16 :goto_c

    :cond_1f
    neg-int v0, v1

    .line 112
    iput-object v7, v4, Lx0;->d:Lx0;

    int-to-float v0, v0

    .line 113
    iput v0, v4, Lx0;->e:F

    .line 114
    iget-object v0, v7, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_20
    if-eqz v2, :cond_2b

    .line 115
    iget-object v2, v0, Lr0;->v:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_2b

    if-eqz v9, :cond_21

    .line 116
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v2

    .line 117
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v2

    .line 119
    iget-object v2, v2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_21
    iget v2, v0, Lr0;->G:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_22

    const/4 v2, 0x3

    .line 121
    iput v2, v4, Lx0;->h:I

    .line 122
    iput v2, v7, Lx0;->h:I

    .line 123
    invoke-virtual {v4, v7, v15}, Lx0;->m(Lx0;F)V

    .line 124
    invoke-virtual {v7, v4, v15}, Lx0;->m(Lx0;F)V

    goto/16 :goto_c

    :cond_22
    const/4 v2, 0x2

    .line 125
    iput v2, v4, Lx0;->h:I

    .line 126
    iput v2, v7, Lx0;->h:I

    neg-int v2, v1

    int-to-float v2, v2

    .line 127
    invoke-virtual {v4, v7, v2}, Lx0;->m(Lx0;F)V

    int-to-float v2, v1

    .line 128
    invoke-virtual {v7, v4, v2}, Lx0;->m(Lx0;F)V

    .line 129
    invoke-virtual {v0, v1}, Lr0;->N(I)V

    .line 130
    iget v1, v0, Lr0;->Q:I

    if-lez v1, :cond_2b

    .line 131
    iget-object v1, v0, Lr0;->w:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v0, v0, Lr0;->Q:I

    invoke-virtual {v1, v10, v4, v0}, Lx0;->f(ILx0;I)V

    goto/16 :goto_c

    .line 132
    :cond_23
    :goto_7
    iget-object v1, v0, Lr0;->t:Lq0;

    iget-object v1, v1, Lq0;->d:Lq0;

    if-nez v1, :cond_25

    iget-object v2, v0, Lr0;->v:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_25

    .line 133
    iput v10, v4, Lx0;->h:I

    .line 134
    iput v10, v7, Lx0;->h:I

    if-eqz v9, :cond_24

    .line 135
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    invoke-virtual {v7, v4, v10, v1}, Lx0;->h(Lx0;ILy0;)V

    goto :goto_8

    .line 136
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    .line 137
    iput-object v4, v7, Lx0;->d:Lx0;

    int-to-float v1, v1

    .line 138
    iput v1, v7, Lx0;->e:F

    .line 139
    iget-object v1, v4, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_8
    iget-object v1, v0, Lr0;->w:Lq0;

    iget-object v2, v1, Lq0;->d:Lq0;

    if-eqz v2, :cond_2b

    .line 141
    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    .line 142
    iput v10, v1, Lx0;->h:I

    .line 143
    iget-object v1, v0, Lr0;->w:Lq0;

    .line 144
    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v0, v0, Lr0;->Q:I

    neg-int v0, v0

    .line 145
    invoke-virtual {v4, v10, v1, v0}, Lx0;->f(ILx0;I)V

    goto/16 :goto_c

    :cond_25
    if-eqz v1, :cond_27

    .line 146
    iget-object v2, v0, Lr0;->v:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-nez v2, :cond_27

    .line 147
    iput v10, v4, Lx0;->h:I

    .line 148
    iput v10, v7, Lx0;->h:I

    if-eqz v9, :cond_26

    .line 149
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    invoke-virtual {v7, v4, v10, v1}, Lx0;->h(Lx0;ILy0;)V

    goto :goto_9

    .line 150
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    .line 151
    iput-object v4, v7, Lx0;->d:Lx0;

    int-to-float v1, v1

    .line 152
    iput v1, v7, Lx0;->e:F

    .line 153
    iget-object v1, v4, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_9
    iget v1, v0, Lr0;->Q:I

    if-lez v1, :cond_2b

    .line 155
    iget-object v1, v0, Lr0;->w:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v0, v0, Lr0;->Q:I

    invoke-virtual {v1, v10, v4, v0}, Lx0;->f(ILx0;I)V

    goto/16 :goto_c

    :cond_27
    if-nez v1, :cond_29

    .line 156
    iget-object v2, v0, Lr0;->v:Lq0;

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_29

    .line 157
    iput v10, v4, Lx0;->h:I

    .line 158
    iput v10, v7, Lx0;->h:I

    if-eqz v9, :cond_28

    .line 159
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    invoke-virtual {v4, v7, v14, v1}, Lx0;->h(Lx0;ILy0;)V

    goto :goto_a

    .line 160
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    neg-int v1, v1

    .line 161
    iput-object v7, v4, Lx0;->d:Lx0;

    int-to-float v1, v1

    .line 162
    iput v1, v4, Lx0;->e:F

    .line 163
    iget-object v1, v7, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_a
    iget v1, v0, Lr0;->Q:I

    if-lez v1, :cond_2b

    .line 165
    iget-object v1, v0, Lr0;->w:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v0, v0, Lr0;->Q:I

    invoke-virtual {v1, v10, v4, v0}, Lx0;->f(ILx0;I)V

    goto :goto_c

    :cond_29
    if-eqz v1, :cond_2b

    .line 166
    iget-object v1, v0, Lr0;->v:Lq0;

    iget-object v1, v1, Lq0;->d:Lq0;

    if-eqz v1, :cond_2b

    const/4 v1, 0x2

    .line 167
    iput v1, v4, Lx0;->h:I

    .line 168
    iput v1, v7, Lx0;->h:I

    if-eqz v9, :cond_2a

    .line 169
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    invoke-virtual {v4, v7, v14, v1}, Lx0;->n(Lx0;ILy0;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    invoke-virtual {v7, v4, v10, v1}, Lx0;->n(Lx0;ILy0;)V

    .line 171
    invoke-virtual/range {p1 .. p1}, Lr0;->r()Ly0;

    move-result-object v1

    .line 172
    iget-object v1, v1, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual/range {p1 .. p1}, Lr0;->s()Ly0;

    move-result-object v1

    .line 174
    iget-object v1, v1, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 175
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v7, v1}, Lx0;->m(Lx0;F)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lr0;->o()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v4, v1}, Lx0;->m(Lx0;F)V

    .line 177
    :goto_b
    iget v1, v0, Lr0;->Q:I

    if-lez v1, :cond_2b

    .line 178
    iget-object v1, v0, Lr0;->w:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v0, v0, Lr0;->Q:I

    invoke-virtual {v1, v10, v4, v0}, Lx0;->f(ILx0;I)V

    :cond_2b
    :goto_c
    return-void
.end method

.method private static b(Lr0;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lr0;->C:[Lr0$a;

    aget-object v1, v0, p1

    sget-object v2, Lr0$a;->d:Lr0$a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget v1, p0, Lr0;->G:F

    const/4 v2, 0x0

    const/4 v4, 0x1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 3
    :goto_0
    aget-object p0, v0, v4

    return v3

    :cond_2
    if-nez p1, :cond_5

    .line 4
    iget p1, p0, Lr0;->e:I

    if-eqz p1, :cond_3

    return v3

    .line 5
    :cond_3
    iget p1, p0, Lr0;->h:I

    if-nez p1, :cond_4

    iget p0, p0, Lr0;->i:I

    if-eqz p0, :cond_7

    :cond_4
    return v3

    .line 6
    :cond_5
    iget p1, p0, Lr0;->f:I

    if-eqz p1, :cond_6

    return v3

    .line 7
    :cond_6
    iget p1, p0, Lr0;->k:I

    if-nez p1, :cond_8

    iget p0, p0, Lr0;->l:I

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    return v4

    :cond_8
    :goto_1
    return v3
.end method

.method static c(Lr0;II)V
    .locals 4

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 1
    iget-object v2, p0, Lr0;->A:[Lq0;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lq0;->d()Lx0;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lr0;->D:Lr0;

    .line 3
    iget-object v3, v3, Lr0;->s:Lq0;

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    iput-object v3, v2, Lx0;->f:Lx0;

    .line 4
    iget-object v2, p0, Lr0;->A:[Lq0;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lq0;->d()Lx0;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Lx0;->g:F

    .line 5
    iget-object p2, p0, Lr0;->A:[Lq0;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lq0;->d()Lx0;

    move-result-object p2

    const/4 v2, 0x1

    iput v2, p2, Lz0;->b:I

    .line 6
    iget-object p2, p0, Lr0;->A:[Lq0;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lq0;->d()Lx0;

    move-result-object p2

    iget-object v3, p0, Lr0;->A:[Lq0;

    aget-object v0, v3, v0

    .line 7
    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iput-object v0, p2, Lx0;->f:Lx0;

    .line 8
    iget-object p2, p0, Lr0;->A:[Lq0;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lq0;->d()Lx0;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1}, Lr0;->q(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Lx0;->g:F

    .line 10
    iget-object p0, p0, Lr0;->A:[Lq0;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lq0;->d()Lx0;

    move-result-object p0

    iput v2, p0, Lz0;->b:I

    return-void
.end method
