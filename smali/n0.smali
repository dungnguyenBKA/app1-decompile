.class public Ln0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ls0;Lk0;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_0

    .line 1
    iget v5, v0, Ls0;->m0:I

    .line 2
    iget-object v6, v0, Ls0;->p0:[Lp0;

    const/4 v7, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v5, v0, Ls0;->n0:I

    .line 4
    iget-object v6, v0, Ls0;->o0:[Lp0;

    const/4 v7, 0x2

    :goto_0
    move-object v9, v0

    move-object v10, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_41

    .line 5
    aget-object v11, v6, v8

    .line 6
    invoke-virtual {v11}, Lp0;->a()V

    const/4 v12, 0x4

    .line 7
    invoke-virtual {v9, v12}, Ls0;->x0(I)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 8
    sget-object v12, Lr0$a;->c:Lr0$a;

    iget-object v13, v11, Lp0;->a:Lr0;

    .line 9
    iget-object v14, v11, Lp0;->c:Lr0;

    .line 10
    iget-object v15, v11, Lp0;->b:Lr0;

    .line 11
    iget-object v4, v11, Lp0;->d:Lr0;

    .line 12
    iget-object v3, v11, Lp0;->e:Lr0;

    move/from16 v17, v5

    .line 13
    iget v5, v11, Lp0;->k:F

    .line 14
    iget-object v9, v9, Lr0;->C:[Lr0$a;

    aget-object v9, v9, v2

    const/4 v9, 0x1

    if-nez v2, :cond_3

    .line 15
    iget v3, v3, Lr0;->d0:I

    if-nez v3, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    :goto_2
    if-ne v3, v9, :cond_2

    const/4 v9, 0x2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x2

    const/16 v16, 0x0

    :goto_3
    if-ne v3, v9, :cond_6

    goto :goto_6

    :cond_3
    const/4 v9, 0x2

    .line 16
    iget v3, v3, Lr0;->e0:I

    const/4 v9, 0x1

    if-nez v3, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    if-ne v3, v9, :cond_5

    const/4 v9, 0x2

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x2

    const/16 v16, 0x0

    :goto_5
    if-ne v3, v9, :cond_6

    :goto_6
    const/4 v3, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    :goto_7
    const/16 v19, 0x0

    move-object/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v21, v13

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    :goto_8
    const/16 v8, 0x8

    if-nez v20, :cond_15

    move-object/from16 v26, v10

    .line 17
    invoke-virtual/range {v21 .. v21}, Lr0;->v()I

    move-result v10

    if-eq v10, v8, :cond_a

    add-int/lit8 v9, v9, 0x1

    if-nez v2, :cond_7

    .line 18
    invoke-virtual/range {v21 .. v21}, Lr0;->w()I

    move-result v10

    goto :goto_9

    .line 19
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lr0;->o()I

    move-result v10

    :goto_9
    int-to-float v10, v10

    add-float v22, v22, v10

    move-object/from16 v10, v21

    if-eq v10, v15, :cond_8

    .line 20
    iget-object v8, v10, Lr0;->A:[Lq0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lq0;->c()I

    move-result v8

    int-to-float v8, v8

    add-float v22, v22, v8

    :cond_8
    if-eq v10, v4, :cond_9

    .line 21
    iget-object v8, v10, Lr0;->A:[Lq0;

    add-int/lit8 v27, v7, 0x1

    aget-object v8, v8, v27

    invoke-virtual {v8}, Lq0;->c()I

    move-result v8

    int-to-float v8, v8

    add-float v22, v22, v8

    .line 22
    :cond_9
    iget-object v8, v10, Lr0;->A:[Lq0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lq0;->c()I

    move-result v8

    int-to-float v8, v8

    add-float v24, v24, v8

    .line 23
    iget-object v8, v10, Lr0;->A:[Lq0;

    add-int/lit8 v27, v7, 0x1

    aget-object v8, v8, v27

    invoke-virtual {v8}, Lq0;->c()I

    move-result v8

    int-to-float v8, v8

    add-float v24, v24, v8

    goto :goto_a

    :cond_a
    move-object/from16 v10, v21

    .line 24
    :goto_a
    iget-object v8, v10, Lr0;->A:[Lq0;

    aget-object v8, v8, v7

    .line 25
    invoke-virtual {v10}, Lr0;->v()I

    move-result v8

    move/from16 v27, v9

    const/16 v9, 0x8

    if-eq v8, v9, :cond_10

    iget-object v8, v10, Lr0;->C:[Lr0$a;

    aget-object v8, v8, v2

    sget-object v9, Lr0$a;->d:Lr0$a;

    if-ne v8, v9, :cond_10

    add-int/lit8 v6, v6, 0x1

    if-nez v2, :cond_c

    .line 26
    iget v8, v10, Lr0;->e:I

    if-eqz v8, :cond_b

    goto :goto_b

    .line 27
    :cond_b
    iget v8, v10, Lr0;->h:I

    if-nez v8, :cond_f

    iget v8, v10, Lr0;->i:I

    if-eqz v8, :cond_e

    goto :goto_b

    .line 28
    :cond_c
    iget v8, v10, Lr0;->f:I

    if-eqz v8, :cond_d

    goto :goto_b

    .line 29
    :cond_d
    iget v8, v10, Lr0;->k:I

    if-nez v8, :cond_f

    iget v8, v10, Lr0;->l:I

    if-eqz v8, :cond_e

    goto :goto_b

    .line 30
    :cond_e
    iget v8, v10, Lr0;->G:F

    cmpl-float v8, v8, v19

    if-eqz v8, :cond_10

    :cond_f
    :goto_b
    move-object v10, v1

    move-object/from16 v27, v11

    goto/16 :goto_26

    .line 31
    :cond_10
    iget-object v8, v10, Lr0;->A:[Lq0;

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Lq0;->d:Lq0;

    if-eqz v8, :cond_12

    .line 32
    iget-object v8, v8, Lq0;->b:Lr0;

    .line 33
    iget-object v9, v8, Lr0;->A:[Lq0;

    move/from16 v21, v6

    aget-object v6, v9, v7

    iget-object v6, v6, Lq0;->d:Lq0;

    if-eqz v6, :cond_13

    aget-object v6, v9, v7

    iget-object v6, v6, Lq0;->d:Lq0;

    iget-object v6, v6, Lq0;->b:Lr0;

    if-eq v6, v10, :cond_11

    goto :goto_c

    :cond_11
    move-object v6, v8

    goto :goto_d

    :cond_12
    move/from16 v21, v6

    :cond_13
    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_14

    goto :goto_e

    :cond_14
    move-object v6, v10

    const/16 v20, 0x1

    :goto_e
    move-object/from16 v10, v26

    move/from16 v9, v27

    move/from16 v29, v21

    move-object/from16 v21, v6

    move/from16 v6, v29

    goto/16 :goto_8

    :cond_15
    move-object/from16 v26, v10

    move-object/from16 v10, v21

    .line 34
    iget-object v8, v13, Lr0;->A:[Lq0;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lq0;->d()Lx0;

    move-result-object v8

    .line 35
    iget-object v0, v14, Lr0;->A:[Lq0;

    add-int/lit8 v20, v7, 0x1

    aget-object v0, v0, v20

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    move-object/from16 v27, v11

    .line 36
    iget-object v11, v8, Lx0;->d:Lx0;

    if-eqz v11, :cond_3e

    move-object/from16 v28, v13

    iget-object v13, v0, Lx0;->d:Lx0;

    if-nez v13, :cond_16

    goto/16 :goto_25

    .line 37
    :cond_16
    iget v11, v11, Lz0;->b:I

    const/4 v1, 0x1

    if-ne v11, v1, :cond_3d

    iget v11, v13, Lz0;->b:I

    if-eq v11, v1, :cond_17

    goto/16 :goto_24

    :cond_17
    if-lez v6, :cond_18

    if-eq v6, v9, :cond_18

    goto/16 :goto_24

    :cond_18
    if-nez v3, :cond_1a

    if-nez v18, :cond_1a

    if-eqz v16, :cond_19

    goto :goto_f

    :cond_19
    const/4 v1, 0x0

    goto :goto_11

    :cond_1a
    :goto_f
    if-eqz v15, :cond_1b

    .line 38
    iget-object v1, v15, Lr0;->A:[Lq0;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lq0;->c()I

    move-result v1

    int-to-float v1, v1

    goto :goto_10

    :cond_1b
    const/4 v1, 0x0

    :goto_10
    if-eqz v4, :cond_1c

    .line 39
    iget-object v4, v4, Lr0;->A:[Lq0;

    aget-object v4, v4, v20

    invoke-virtual {v4}, Lq0;->c()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 40
    :cond_1c
    :goto_11
    iget-object v4, v8, Lx0;->d:Lx0;

    iget v4, v4, Lx0;->g:F

    .line 41
    iget-object v0, v0, Lx0;->d:Lx0;

    iget v0, v0, Lx0;->g:F

    cmpg-float v11, v4, v0

    if-gez v11, :cond_1d

    sub-float/2addr v0, v4

    goto :goto_12

    :cond_1d
    sub-float v0, v4, v0

    :goto_12
    sub-float v0, v0, v22

    const/high16 v11, -0x40800000    # -1.0f

    if-lez v6, :cond_25

    if-ne v6, v9, :cond_25

    .line 42
    iget-object v1, v10, Lr0;->D:Lr0;

    if-eqz v1, :cond_1e

    .line 43
    iget-object v1, v1, Lr0;->C:[Lr0$a;

    aget-object v1, v1, v2

    if-ne v1, v12, :cond_1e

    goto/16 :goto_24

    :cond_1e
    add-float v0, v0, v22

    sub-float v0, v0, v24

    move-object/from16 v13, v28

    :goto_13
    if-eqz v13, :cond_24

    .line 44
    iget-object v1, v13, Lr0;->h0:[Lr0;

    aget-object v1, v1, v2

    if-nez v1, :cond_20

    if-ne v13, v14, :cond_1f

    goto :goto_14

    :cond_1f
    move-object/from16 v10, p1

    goto :goto_16

    :cond_20
    :goto_14
    int-to-float v3, v6

    div-float v3, v0, v3

    cmpl-float v9, v5, v19

    if-lez v9, :cond_22

    .line 45
    iget-object v3, v13, Lr0;->f0:[F

    aget v9, v3, v2

    cmpl-float v9, v9, v11

    if-nez v9, :cond_21

    const/4 v3, 0x0

    goto :goto_15

    .line 46
    :cond_21
    aget v3, v3, v2

    mul-float v3, v3, v0

    div-float/2addr v3, v5

    .line 47
    :cond_22
    :goto_15
    invoke-virtual {v13}, Lr0;->v()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_23

    const/4 v3, 0x0

    .line 48
    :cond_23
    iget-object v9, v13, Lr0;->A:[Lq0;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lq0;->c()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 49
    iget-object v9, v13, Lr0;->A:[Lq0;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lq0;->d()Lx0;

    move-result-object v9

    iget-object v10, v8, Lx0;->f:Lx0;

    invoke-virtual {v9, v10, v4}, Lx0;->k(Lx0;F)V

    .line 50
    iget-object v9, v13, Lr0;->A:[Lq0;

    aget-object v9, v9, v20

    invoke-virtual {v9}, Lq0;->d()Lx0;

    move-result-object v9

    iget-object v10, v8, Lx0;->f:Lx0;

    add-float/2addr v4, v3

    invoke-virtual {v9, v10, v4}, Lx0;->k(Lx0;F)V

    .line 51
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    move-object/from16 v10, p1

    invoke-virtual {v3, v10}, Lx0;->e(Lk0;)V

    .line 52
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    invoke-virtual {v3, v10}, Lx0;->e(Lk0;)V

    .line 53
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    :goto_16
    move-object v13, v1

    goto :goto_13

    :cond_24
    move-object/from16 v10, p1

    goto/16 :goto_1a

    :cond_25
    move-object/from16 v10, p1

    cmpg-float v5, v0, v19

    if-gez v5, :cond_26

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x0

    :cond_26
    if-eqz v3, :cond_2c

    sub-float/2addr v0, v1

    if-nez v2, :cond_27

    move-object/from16 v3, v28

    .line 54
    iget v11, v3, Lr0;->V:F

    goto :goto_17

    :cond_27
    move-object/from16 v3, v28

    const/4 v1, 0x1

    if-ne v2, v1, :cond_28

    .line 55
    iget v11, v3, Lr0;->W:F

    :cond_28
    :goto_17
    mul-float v0, v0, v11

    add-float/2addr v0, v4

    move-object v13, v3

    :goto_18
    if-eqz v13, :cond_2d

    .line 56
    iget-object v1, v13, Lr0;->h0:[Lr0;

    aget-object v1, v1, v2

    if-nez v1, :cond_29

    if-ne v13, v14, :cond_2b

    :cond_29
    if-nez v2, :cond_2a

    .line 57
    invoke-virtual {v13}, Lr0;->w()I

    move-result v3

    goto :goto_19

    .line 58
    :cond_2a
    invoke-virtual {v13}, Lr0;->o()I

    move-result v3

    :goto_19
    int-to-float v3, v3

    .line 59
    iget-object v4, v13, Lr0;->A:[Lq0;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lq0;->c()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 60
    iget-object v4, v13, Lr0;->A:[Lq0;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lq0;->d()Lx0;

    move-result-object v4

    iget-object v5, v8, Lx0;->f:Lx0;

    invoke-virtual {v4, v5, v0}, Lx0;->k(Lx0;F)V

    .line 61
    iget-object v4, v13, Lr0;->A:[Lq0;

    aget-object v4, v4, v20

    invoke-virtual {v4}, Lq0;->d()Lx0;

    move-result-object v4

    iget-object v5, v8, Lx0;->f:Lx0;

    add-float/2addr v0, v3

    invoke-virtual {v4, v5, v0}, Lx0;->k(Lx0;F)V

    .line 62
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    invoke-virtual {v3, v10}, Lx0;->e(Lk0;)V

    .line 63
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lq0;->d()Lx0;

    move-result-object v3

    invoke-virtual {v3, v10}, Lx0;->e(Lk0;)V

    .line 64
    iget-object v3, v13, Lr0;->A:[Lq0;

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :cond_2b
    move-object v13, v1

    goto :goto_18

    :cond_2c
    move-object/from16 v3, v28

    if-nez v18, :cond_2e

    if-eqz v16, :cond_2d

    goto :goto_1b

    :cond_2d
    :goto_1a
    const/4 v5, 0x1

    goto/16 :goto_23

    :cond_2e
    :goto_1b
    if-eqz v18, :cond_2f

    goto :goto_1c

    :cond_2f
    if-eqz v16, :cond_30

    :goto_1c
    sub-float/2addr v0, v1

    :cond_30
    add-int/lit8 v1, v9, 0x1

    int-to-float v1, v1

    div-float v1, v0, v1

    if-eqz v16, :cond_32

    const/4 v5, 0x1

    if-le v9, v5, :cond_31

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    goto :goto_1d

    :cond_31
    const/high16 v1, 0x40000000    # 2.0f

    :goto_1d
    div-float v1, v0, v1

    .line 65
    :cond_32
    invoke-virtual {v3}, Lr0;->v()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_33

    add-float v0, v4, v1

    goto :goto_1e

    :cond_33
    move v0, v4

    :goto_1e
    const/4 v5, 0x1

    if-eqz v16, :cond_34

    if-le v9, v5, :cond_34

    .line 66
    iget-object v0, v15, Lr0;->A:[Lq0;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v4

    :cond_34
    if-eqz v18, :cond_35

    if-eqz v15, :cond_35

    .line 67
    iget-object v4, v15, Lr0;->A:[Lq0;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lq0;->c()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    :cond_35
    :goto_1f
    move-object v13, v3

    if-eqz v13, :cond_3c

    .line 68
    iget-object v3, v13, Lr0;->h0:[Lr0;

    aget-object v3, v3, v2

    if-nez v3, :cond_37

    if-ne v13, v14, :cond_36

    goto :goto_20

    :cond_36
    const/16 v6, 0x8

    goto :goto_1f

    :cond_37
    :goto_20
    if-nez v2, :cond_38

    .line 69
    invoke-virtual {v13}, Lr0;->w()I

    move-result v4

    goto :goto_21

    .line 70
    :cond_38
    invoke-virtual {v13}, Lr0;->o()I

    move-result v4

    :goto_21
    int-to-float v4, v4

    if-eq v13, v15, :cond_39

    .line 71
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lq0;->c()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    .line 72
    :cond_39
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    iget-object v9, v8, Lx0;->f:Lx0;

    invoke-virtual {v6, v9, v0}, Lx0;->k(Lx0;F)V

    .line 73
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v20

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    iget-object v9, v8, Lx0;->f:Lx0;

    add-float v11, v0, v4

    invoke-virtual {v6, v9, v11}, Lx0;->k(Lx0;F)V

    .line 74
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v6, v10}, Lx0;->e(Lk0;)V

    .line 75
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v20

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v6, v10}, Lx0;->e(Lk0;)V

    .line 76
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v20

    invoke-virtual {v6}, Lq0;->c()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    add-float/2addr v4, v0

    if-eqz v3, :cond_3a

    .line 77
    invoke-virtual {v3}, Lr0;->v()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_3b

    add-float/2addr v4, v1

    goto :goto_22

    :cond_3a
    const/16 v6, 0x8

    :cond_3b
    :goto_22
    move v0, v4

    goto :goto_1f

    :cond_3c
    :goto_23
    move-object v0, v10

    const/4 v9, 0x1

    goto :goto_27

    :cond_3d
    :goto_24
    move-object/from16 v10, p1

    move-object/from16 v26, v10

    goto :goto_26

    :cond_3e
    :goto_25
    move-object v10, v1

    :goto_26
    move-object/from16 v0, v26

    const/4 v9, 0x0

    :goto_27
    move-object/from16 v1, p0

    if-nez v9, :cond_3f

    move-object/from16 v3, v27

    .line 78
    invoke-static {v1, v0, v2, v7, v3}, Ln0;->b(Ls0;Lk0;IILp0;)V

    :cond_3f
    move-object v9, v1

    goto :goto_28

    :cond_40
    move/from16 v17, v5

    move-object/from16 v23, v6

    move/from16 v25, v8

    move-object v4, v10

    move-object v3, v11

    move-object v10, v1

    move-object v1, v0

    move-object v0, v9

    .line 79
    invoke-static {v0, v4, v2, v7, v3}, Ln0;->b(Ls0;Lk0;IILp0;)V

    move-object v0, v4

    :goto_28
    add-int/lit8 v8, v25, 0x1

    move/from16 v5, v17

    move-object/from16 v6, v23

    move-object/from16 v29, v10

    move-object v10, v0

    move-object v0, v1

    move-object/from16 v1, v29

    goto/16 :goto_1

    :cond_41
    return-void
.end method

.method static b(Ls0;Lk0;IILp0;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 1
    iget-object v10, v1, Lp0;->a:Lr0;

    .line 2
    iget-object v11, v1, Lp0;->c:Lr0;

    .line 3
    iget-object v12, v1, Lp0;->b:Lr0;

    .line 4
    iget-object v13, v1, Lp0;->d:Lr0;

    .line 5
    iget-object v2, v1, Lp0;->e:Lr0;

    .line 6
    iget v3, v1, Lp0;->k:F

    .line 7
    iget-object v4, v0, Lr0;->C:[Lr0$a;

    aget-object v4, v4, p2

    sget-object v5, Lr0$a;->c:Lr0$a;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_3

    .line 8
    iget v8, v2, Lr0;->d0:I

    if-nez v8, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ne v8, v7, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-ne v8, v5, :cond_6

    goto :goto_5

    .line 9
    :cond_3
    iget v8, v2, Lr0;->e0:I

    if-nez v8, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    if-ne v8, v7, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-ne v8, v5, :cond_6

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move-object v7, v10

    const/4 v8, 0x0

    :goto_7
    const/16 v17, 0x0

    if-nez v8, :cond_13

    .line 10
    iget-object v6, v7, Lr0;->A:[Lq0;

    aget-object v6, v6, p3

    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    goto :goto_8

    :cond_7
    const/16 v23, 0x4

    goto :goto_9

    :cond_8
    :goto_8
    const/16 v23, 0x1

    .line 11
    :goto_9
    invoke-virtual {v6}, Lq0;->c()I

    move-result v24

    move/from16 v25, v3

    .line 12
    iget-object v3, v6, Lq0;->d:Lq0;

    if-eqz v3, :cond_9

    if-eq v7, v10, :cond_9

    .line 13
    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    add-int v24, v3, v24

    :cond_9
    move/from16 v3, v24

    if-eqz v5, :cond_a

    if-eq v7, v10, :cond_a

    if-eq v7, v12, :cond_a

    move/from16 v24, v8

    move/from16 v23, v15

    const/4 v8, 0x6

    goto :goto_a

    :cond_a
    if-eqz v14, :cond_b

    if-eqz v4, :cond_b

    move/from16 v24, v8

    move/from16 v23, v15

    const/4 v8, 0x4

    goto :goto_a

    :cond_b
    move/from16 v24, v8

    move/from16 v8, v23

    move/from16 v23, v15

    .line 14
    :goto_a
    iget-object v15, v6, Lq0;->d:Lq0;

    if-eqz v15, :cond_d

    if-ne v7, v12, :cond_c

    move/from16 v26, v14

    .line 15
    iget-object v14, v6, Lq0;->i:Lm0;

    iget-object v15, v15, Lq0;->i:Lm0;

    move-object/from16 v27, v2

    const/4 v2, 0x5

    invoke-virtual {v9, v14, v15, v3, v2}, Lk0;->f(Lm0;Lm0;II)V

    goto :goto_b

    :cond_c
    move-object/from16 v27, v2

    move/from16 v26, v14

    .line 16
    iget-object v2, v6, Lq0;->i:Lm0;

    iget-object v14, v15, Lq0;->i:Lm0;

    const/4 v15, 0x6

    invoke-virtual {v9, v2, v14, v3, v15}, Lk0;->f(Lm0;Lm0;II)V

    .line 17
    :goto_b
    iget-object v2, v6, Lq0;->i:Lm0;

    iget-object v6, v6, Lq0;->d:Lq0;

    iget-object v6, v6, Lq0;->i:Lm0;

    invoke-virtual {v9, v2, v6, v3, v8}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto :goto_c

    :cond_d
    move-object/from16 v27, v2

    move/from16 v26, v14

    :goto_c
    if-eqz v4, :cond_f

    .line 18
    invoke-virtual {v7}, Lr0;->v()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    iget-object v2, v7, Lr0;->C:[Lr0$a;

    aget-object v2, v2, p2

    sget-object v3, Lr0$a;->d:Lr0$a;

    if-ne v2, v3, :cond_e

    .line 19
    iget-object v2, v7, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lq0;->i:Lm0;

    aget-object v2, v2, p3

    iget-object v2, v2, Lq0;->i:Lm0;

    const/4 v6, 0x5

    const/4 v8, 0x0

    invoke-virtual {v9, v3, v2, v8, v6}, Lk0;->f(Lm0;Lm0;II)V

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    .line 20
    :goto_d
    iget-object v2, v7, Lr0;->A:[Lq0;

    aget-object v2, v2, p3

    iget-object v2, v2, Lq0;->i:Lm0;

    iget-object v3, v0, Lr0;->A:[Lq0;

    aget-object v3, v3, p3

    iget-object v3, v3, Lq0;->i:Lm0;

    const/4 v6, 0x6

    invoke-virtual {v9, v2, v3, v8, v6}, Lk0;->f(Lm0;Lm0;II)V

    .line 21
    :cond_f
    iget-object v2, v7, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lq0;->d:Lq0;

    if-eqz v2, :cond_11

    .line 22
    iget-object v2, v2, Lq0;->b:Lr0;

    .line 23
    iget-object v3, v2, Lr0;->A:[Lq0;

    aget-object v6, v3, p3

    iget-object v6, v6, Lq0;->d:Lq0;

    if-eqz v6, :cond_11

    aget-object v3, v3, p3

    iget-object v3, v3, Lq0;->d:Lq0;

    iget-object v3, v3, Lq0;->b:Lr0;

    if-eq v3, v7, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v17, v2

    :cond_11
    :goto_e
    if-eqz v17, :cond_12

    move-object/from16 v7, v17

    move/from16 v8, v24

    goto :goto_f

    :cond_12
    const/4 v8, 0x1

    :goto_f
    move/from16 v15, v23

    move/from16 v3, v25

    move/from16 v14, v26

    move-object/from16 v2, v27

    goto/16 :goto_7

    :cond_13
    move-object/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v14

    move/from16 v23, v15

    if-eqz v13, :cond_14

    .line 24
    iget-object v2, v11, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v6, v2, v3

    iget-object v6, v6, Lq0;->d:Lq0;

    if-eqz v6, :cond_14

    .line 25
    iget-object v6, v13, Lr0;->A:[Lq0;

    aget-object v6, v6, v3

    .line 26
    iget-object v7, v6, Lq0;->i:Lm0;

    aget-object v2, v2, v3

    iget-object v2, v2, Lq0;->d:Lq0;

    iget-object v2, v2, Lq0;->i:Lm0;

    .line 27
    invoke-virtual {v6}, Lq0;->c()I

    move-result v3

    neg-int v3, v3

    const/4 v6, 0x5

    .line 28
    invoke-virtual {v9, v7, v2, v3, v6}, Lk0;->g(Lm0;Lm0;II)V

    goto :goto_10

    :cond_14
    const/4 v6, 0x5

    :goto_10
    if-eqz v4, :cond_15

    .line 29
    iget-object v0, v0, Lr0;->A:[Lq0;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lq0;->i:Lm0;

    iget-object v3, v11, Lr0;->A:[Lq0;

    aget-object v4, v3, v2

    iget-object v4, v4, Lq0;->i:Lm0;

    aget-object v2, v3, v2

    .line 30
    invoke-virtual {v2}, Lq0;->c()I

    move-result v2

    const/4 v3, 0x6

    .line 31
    invoke-virtual {v9, v0, v4, v2, v3}, Lk0;->f(Lm0;Lm0;II)V

    .line 32
    :cond_15
    iget-object v0, v1, Lp0;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    .line 34
    iget-boolean v4, v1, Lp0;->n:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v1, Lp0;->p:Z

    if-nez v4, :cond_16

    .line 35
    iget v4, v1, Lp0;->j:I

    int-to-float v4, v4

    goto :goto_11

    :cond_16
    move/from16 v4, v25

    :goto_11
    const/4 v7, 0x0

    move-object/from16 v14, v17

    const/4 v8, 0x0

    const/16 v29, 0x0

    :goto_12
    if-ge v8, v2, :cond_1b

    .line 36
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr0;

    .line 37
    iget-object v3, v15, Lr0;->f0:[F

    aget v3, v3, p2

    cmpg-float v21, v3, v7

    if-gez v21, :cond_18

    .line 38
    iget-boolean v3, v1, Lp0;->p:Z

    if-eqz v3, :cond_17

    .line 39
    iget-object v3, v15, Lr0;->A:[Lq0;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lq0;->i:Lm0;

    aget-object v3, v3, p3

    iget-object v3, v3, Lq0;->i:Lm0;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v9, v15, v3, v7, v6}, Lk0;->d(Lm0;Lm0;II)Lh0;

    const/4 v6, 0x6

    goto :goto_14

    :cond_17
    const/4 v6, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    goto :goto_13

    :cond_18
    const/4 v6, 0x4

    :goto_13
    cmpl-float v20, v3, v7

    if-nez v20, :cond_19

    .line 40
    iget-object v3, v15, Lr0;->A:[Lq0;

    add-int/lit8 v15, p3, 0x1

    aget-object v15, v3, v15

    iget-object v15, v15, Lq0;->i:Lm0;

    aget-object v3, v3, p3

    iget-object v3, v3, Lq0;->i:Lm0;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v9, v15, v3, v7, v6}, Lk0;->d(Lm0;Lm0;II)Lh0;

    :goto_14
    move-object/from16 v25, v0

    move/from16 v18, v2

    goto :goto_16

    :cond_19
    const/4 v6, 0x6

    const/4 v7, 0x0

    if-eqz v14, :cond_1a

    .line 41
    iget-object v14, v14, Lr0;->A:[Lq0;

    aget-object v6, v14, p3

    iget-object v6, v6, Lq0;->i:Lm0;

    add-int/lit8 v18, p3, 0x1

    .line 42
    aget-object v14, v14, v18

    iget-object v14, v14, Lq0;->i:Lm0;

    .line 43
    iget-object v7, v15, Lr0;->A:[Lq0;

    move-object/from16 v25, v0

    aget-object v0, v7, p3

    iget-object v0, v0, Lq0;->i:Lm0;

    .line 44
    aget-object v7, v7, v18

    iget-object v7, v7, Lq0;->i:Lm0;

    move/from16 v18, v2

    .line 45
    invoke-virtual/range {p1 .. p1}, Lk0;->m()Lh0;

    move-result-object v2

    move-object/from16 v28, v2

    move/from16 v30, v4

    move/from16 v31, v3

    move-object/from16 v32, v6

    move-object/from16 v33, v14

    move-object/from16 v34, v0

    move-object/from16 v35, v7

    .line 46
    invoke-virtual/range {v28 .. v35}, Lh0;->d(FFFLm0;Lm0;Lm0;Lm0;)Lh0;

    .line 47
    invoke-virtual {v9, v2}, Lk0;->c(Lh0;)V

    goto :goto_15

    :cond_1a
    move-object/from16 v25, v0

    move/from16 v18, v2

    :goto_15
    move/from16 v29, v3

    move-object v14, v15

    :goto_16
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v18

    move-object/from16 v0, v25

    const/4 v3, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_1b
    if-eqz v12, :cond_21

    if-eq v12, v13, :cond_1c

    if-eqz v5, :cond_21

    .line 48
    :cond_1c
    iget-object v0, v10, Lr0;->A:[Lq0;

    aget-object v1, v0, p3

    .line 49
    iget-object v2, v11, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v4, v2, v3

    .line 50
    aget-object v5, v0, p3

    iget-object v5, v5, Lq0;->d:Lq0;

    if-eqz v5, :cond_1d

    aget-object v0, v0, p3

    iget-object v0, v0, Lq0;->d:Lq0;

    iget-object v0, v0, Lq0;->i:Lm0;

    move-object v5, v0

    goto :goto_17

    :cond_1d
    move-object/from16 v5, v17

    .line 51
    :goto_17
    aget-object v0, v2, v3

    iget-object v0, v0, Lq0;->d:Lq0;

    if-eqz v0, :cond_1e

    aget-object v0, v2, v3

    iget-object v0, v0, Lq0;->d:Lq0;

    iget-object v0, v0, Lq0;->i:Lm0;

    move-object v6, v0

    goto :goto_18

    :cond_1e
    move-object/from16 v6, v17

    :goto_18
    if-ne v12, v13, :cond_1f

    .line 52
    iget-object v0, v12, Lr0;->A:[Lq0;

    aget-object v1, v0, p3

    .line 53
    aget-object v4, v0, v3

    :cond_1f
    if-eqz v5, :cond_43

    if-eqz v6, :cond_43

    if-nez p2, :cond_20

    move-object/from16 v0, v27

    .line 54
    iget v0, v0, Lr0;->V:F

    goto :goto_19

    :cond_20
    move-object/from16 v0, v27

    .line 55
    iget v0, v0, Lr0;->W:F

    :goto_19
    move v7, v0

    .line 56
    invoke-virtual {v1}, Lq0;->c()I

    move-result v3

    .line 57
    invoke-virtual {v4}, Lq0;->c()I

    move-result v8

    .line 58
    iget-object v1, v1, Lq0;->i:Lm0;

    iget-object v10, v4, Lq0;->i:Lm0;

    const/4 v14, 0x5

    move-object/from16 v0, p1

    move-object v2, v5

    move v4, v7

    move-object v5, v6

    move-object v6, v10

    move v7, v8

    move v8, v14

    invoke-virtual/range {v0 .. v8}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    goto/16 :goto_31

    :cond_21
    if-eqz v26, :cond_33

    if-eqz v12, :cond_33

    .line 59
    iget v0, v1, Lp0;->j:I

    if-lez v0, :cond_22

    iget v1, v1, Lp0;->i:I

    if-ne v1, v0, :cond_22

    const/16 v16, 0x1

    goto :goto_1a

    :cond_22
    const/16 v16, 0x0

    :goto_1a
    move-object v14, v12

    move-object v15, v14

    :goto_1b
    if-eqz v14, :cond_43

    .line 60
    iget-object v0, v14, Lr0;->h0:[Lr0;

    aget-object v0, v0, p2

    move-object v8, v0

    :goto_1c
    if-eqz v8, :cond_23

    .line 61
    invoke-virtual {v8}, Lr0;->v()I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_24

    .line 62
    iget-object v0, v8, Lr0;->h0:[Lr0;

    aget-object v8, v0, p2

    goto :goto_1c

    :cond_23
    const/16 v6, 0x8

    :cond_24
    if-nez v8, :cond_26

    if-ne v14, v13, :cond_25

    goto :goto_1d

    :cond_25
    move-object/from16 v18, v8

    const/16 v19, 0x4

    const/16 v20, 0x6

    goto/16 :goto_24

    .line 63
    :cond_26
    :goto_1d
    iget-object v0, v14, Lr0;->A:[Lq0;

    aget-object v0, v0, p3

    .line 64
    iget-object v1, v0, Lq0;->i:Lm0;

    .line 65
    iget-object v2, v0, Lq0;->d:Lq0;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lq0;->i:Lm0;

    goto :goto_1e

    :cond_27
    move-object/from16 v2, v17

    :goto_1e
    if-eq v15, v14, :cond_28

    .line 66
    iget-object v2, v15, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lq0;->i:Lm0;

    goto :goto_1f

    :cond_28
    if-ne v14, v12, :cond_2a

    if-ne v15, v14, :cond_2a

    .line 67
    iget-object v2, v10, Lr0;->A:[Lq0;

    aget-object v3, v2, p3

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_29

    aget-object v2, v2, p3

    iget-object v2, v2, Lq0;->d:Lq0;

    iget-object v2, v2, Lq0;->i:Lm0;

    goto :goto_1f

    :cond_29
    move-object/from16 v2, v17

    .line 68
    :cond_2a
    :goto_1f
    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    .line 69
    iget-object v3, v14, Lr0;->A:[Lq0;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    if-eqz v8, :cond_2b

    .line 70
    iget-object v5, v8, Lr0;->A:[Lq0;

    aget-object v5, v5, p3

    .line 71
    iget-object v7, v5, Lq0;->i:Lm0;

    .line 72
    iget-object v6, v14, Lr0;->A:[Lq0;

    aget-object v6, v6, v4

    iget-object v6, v6, Lq0;->i:Lm0;

    move-object/from16 v36, v7

    move-object v7, v6

    move-object/from16 v6, v36

    goto :goto_21

    .line 73
    :cond_2b
    iget-object v5, v11, Lr0;->A:[Lq0;

    aget-object v5, v5, v4

    iget-object v5, v5, Lq0;->d:Lq0;

    if-eqz v5, :cond_2c

    .line 74
    iget-object v6, v5, Lq0;->i:Lm0;

    goto :goto_20

    :cond_2c
    move-object/from16 v6, v17

    .line 75
    :goto_20
    iget-object v7, v14, Lr0;->A:[Lq0;

    aget-object v7, v7, v4

    iget-object v7, v7, Lq0;->i:Lm0;

    :goto_21
    if-eqz v5, :cond_2d

    .line 76
    invoke-virtual {v5}, Lq0;->c()I

    move-result v5

    add-int/2addr v3, v5

    :cond_2d
    if-eqz v15, :cond_2e

    .line 77
    iget-object v5, v15, Lr0;->A:[Lq0;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lq0;->c()I

    move-result v5

    add-int/2addr v0, v5

    :cond_2e
    if-eqz v1, :cond_25

    if-eqz v2, :cond_25

    if-eqz v6, :cond_25

    if-eqz v7, :cond_25

    if-ne v14, v12, :cond_2f

    .line 78
    iget-object v0, v12, Lr0;->A:[Lq0;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    :cond_2f
    move v5, v0

    if-ne v14, v13, :cond_30

    .line 79
    iget-object v0, v13, Lr0;->A:[Lq0;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    move/from16 v18, v0

    goto :goto_22

    :cond_30
    move/from16 v18, v3

    :goto_22
    if-eqz v16, :cond_31

    const/16 v21, 0x6

    goto :goto_23

    :cond_31
    const/16 v21, 0x4

    :goto_23
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v3, v5

    move-object v5, v6

    const/16 v19, 0x4

    const/16 v20, 0x6

    move-object v6, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v21

    .line 80
    invoke-virtual/range {v0 .. v8}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    .line 81
    :goto_24
    invoke-virtual {v14}, Lr0;->v()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_32

    move-object v15, v14

    :cond_32
    move-object/from16 v14, v18

    goto/16 :goto_1b

    :cond_33
    const/16 v8, 0x8

    const/16 v19, 0x4

    const/16 v20, 0x6

    if-eqz v23, :cond_43

    if-eqz v12, :cond_43

    .line 82
    iget v0, v1, Lp0;->j:I

    if-lez v0, :cond_34

    iget v1, v1, Lp0;->i:I

    if-ne v1, v0, :cond_34

    const/16 v16, 0x1

    goto :goto_25

    :cond_34
    const/16 v16, 0x0

    :goto_25
    move-object v14, v12

    move-object v15, v14

    :goto_26
    if-eqz v14, :cond_3f

    .line 83
    iget-object v0, v14, Lr0;->h0:[Lr0;

    aget-object v0, v0, p2

    :goto_27
    if-eqz v0, :cond_35

    .line 84
    invoke-virtual {v0}, Lr0;->v()I

    move-result v1

    if-ne v1, v8, :cond_35

    .line 85
    iget-object v0, v0, Lr0;->h0:[Lr0;

    aget-object v0, v0, p2

    goto :goto_27

    :cond_35
    if-eq v14, v12, :cond_3d

    if-eq v14, v13, :cond_3d

    if-eqz v0, :cond_3d

    if-ne v0, v13, :cond_36

    move-object/from16 v7, v17

    goto :goto_28

    :cond_36
    move-object v7, v0

    .line 86
    :goto_28
    iget-object v0, v14, Lr0;->A:[Lq0;

    aget-object v0, v0, p3

    .line 87
    iget-object v1, v0, Lq0;->i:Lm0;

    .line 88
    iget-object v2, v0, Lq0;->d:Lq0;

    .line 89
    iget-object v2, v15, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lq0;->i:Lm0;

    .line 90
    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    .line 91
    iget-object v4, v14, Lr0;->A:[Lq0;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lq0;->c()I

    move-result v4

    if-eqz v7, :cond_38

    .line 92
    iget-object v5, v7, Lr0;->A:[Lq0;

    aget-object v5, v5, p3

    .line 93
    iget-object v6, v5, Lq0;->i:Lm0;

    .line 94
    iget-object v8, v5, Lq0;->d:Lq0;

    if-eqz v8, :cond_37

    iget-object v8, v8, Lq0;->i:Lm0;

    goto :goto_2a

    :cond_37
    move-object/from16 v8, v17

    goto :goto_2a

    .line 95
    :cond_38
    iget-object v5, v14, Lr0;->A:[Lq0;

    aget-object v6, v5, v3

    iget-object v6, v6, Lq0;->d:Lq0;

    if-eqz v6, :cond_39

    .line 96
    iget-object v8, v6, Lq0;->i:Lm0;

    goto :goto_29

    :cond_39
    move-object/from16 v8, v17

    .line 97
    :goto_29
    aget-object v5, v5, v3

    iget-object v5, v5, Lq0;->i:Lm0;

    move-object/from16 v36, v8

    move-object v8, v5

    move-object v5, v6

    move-object/from16 v6, v36

    :goto_2a
    if-eqz v5, :cond_3a

    .line 98
    invoke-virtual {v5}, Lq0;->c()I

    move-result v5

    add-int/2addr v5, v4

    move/from16 v18, v5

    goto :goto_2b

    :cond_3a
    move/from16 v18, v4

    .line 99
    :goto_2b
    iget-object v4, v15, Lr0;->A:[Lq0;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    add-int/2addr v3, v0

    if-eqz v16, :cond_3b

    const/16 v22, 0x6

    goto :goto_2c

    :cond_3b
    const/16 v22, 0x4

    :goto_2c
    if-eqz v1, :cond_3c

    if-eqz v2, :cond_3c

    if-eqz v6, :cond_3c

    if-eqz v8, :cond_3c

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v21, v7

    move/from16 v7, v18

    move-object/from16 v18, v15

    const/16 v15, 0x8

    move/from16 v8, v22

    .line 100
    invoke-virtual/range {v0 .. v8}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    goto :goto_2d

    :cond_3c
    move-object/from16 v21, v7

    move-object/from16 v18, v15

    const/16 v15, 0x8

    :goto_2d
    move-object/from16 v0, v21

    goto :goto_2e

    :cond_3d
    move-object/from16 v18, v15

    const/16 v15, 0x8

    .line 101
    :goto_2e
    invoke-virtual {v14}, Lr0;->v()I

    move-result v1

    if-eq v1, v15, :cond_3e

    goto :goto_2f

    :cond_3e
    move-object/from16 v14, v18

    :goto_2f
    move-object v15, v14

    const/16 v8, 0x8

    move-object v14, v0

    goto/16 :goto_26

    .line 102
    :cond_3f
    iget-object v0, v12, Lr0;->A:[Lq0;

    aget-object v0, v0, p3

    .line 103
    iget-object v1, v10, Lr0;->A:[Lq0;

    aget-object v1, v1, p3

    iget-object v1, v1, Lq0;->d:Lq0;

    .line 104
    iget-object v2, v13, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 105
    iget-object v2, v11, Lr0;->A:[Lq0;

    aget-object v2, v2, v3

    iget-object v14, v2, Lq0;->d:Lq0;

    if-eqz v1, :cond_41

    if-eq v12, v13, :cond_40

    .line 106
    iget-object v2, v0, Lq0;->i:Lm0;

    iget-object v1, v1, Lq0;->i:Lm0;

    invoke-virtual {v0}, Lq0;->c()I

    move-result v0

    const/4 v15, 0x5

    invoke-virtual {v9, v2, v1, v0, v15}, Lk0;->d(Lm0;Lm0;II)Lh0;

    goto :goto_30

    :cond_40
    const/4 v15, 0x5

    if-eqz v14, :cond_42

    .line 107
    iget-object v2, v0, Lq0;->i:Lm0;

    iget-object v3, v1, Lq0;->i:Lm0;

    invoke-virtual {v0}, Lq0;->c()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Lq0;->i:Lm0;

    iget-object v7, v14, Lq0;->i:Lm0;

    .line 108
    invoke-virtual {v10}, Lq0;->c()I

    move-result v8

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    .line 109
    invoke-virtual/range {v0 .. v8}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    goto :goto_30

    :cond_41
    const/4 v15, 0x5

    :cond_42
    :goto_30
    if-eqz v14, :cond_43

    if-eq v12, v13, :cond_43

    .line 110
    iget-object v0, v10, Lq0;->i:Lm0;

    iget-object v1, v14, Lq0;->i:Lm0;

    invoke-virtual {v10}, Lq0;->c()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v15}, Lk0;->d(Lm0;Lm0;II)Lh0;

    :cond_43
    :goto_31
    if-nez v26, :cond_44

    if-eqz v23, :cond_4a

    :cond_44
    if-eqz v12, :cond_4a

    .line 111
    iget-object v0, v12, Lr0;->A:[Lq0;

    aget-object v1, v0, p3

    .line 112
    iget-object v2, v13, Lr0;->A:[Lq0;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 113
    iget-object v4, v1, Lq0;->d:Lq0;

    if-eqz v4, :cond_45

    iget-object v4, v4, Lq0;->i:Lm0;

    goto :goto_32

    :cond_45
    move-object/from16 v4, v17

    .line 114
    :goto_32
    iget-object v5, v2, Lq0;->d:Lq0;

    if-eqz v5, :cond_46

    iget-object v5, v5, Lq0;->i:Lm0;

    goto :goto_33

    :cond_46
    move-object/from16 v5, v17

    :goto_33
    if-eq v11, v13, :cond_48

    .line 115
    iget-object v5, v11, Lr0;->A:[Lq0;

    aget-object v5, v5, v3

    .line 116
    iget-object v5, v5, Lq0;->d:Lq0;

    if-eqz v5, :cond_47

    iget-object v5, v5, Lq0;->i:Lm0;

    move-object/from16 v17, v5

    :cond_47
    move-object/from16 v5, v17

    :cond_48
    if-ne v12, v13, :cond_49

    .line 117
    aget-object v1, v0, p3

    .line 118
    aget-object v2, v0, v3

    :cond_49
    if-eqz v4, :cond_4a

    if-eqz v5, :cond_4a

    const/high16 v6, 0x3f000000    # 0.5f

    .line 119
    invoke-virtual {v1}, Lq0;->c()I

    move-result v7

    .line 120
    iget-object v0, v13, Lr0;->A:[Lq0;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lq0;->c()I

    move-result v8

    .line 121
    iget-object v1, v1, Lq0;->i:Lm0;

    iget-object v10, v2, Lq0;->i:Lm0;

    const/4 v11, 0x5

    move-object/from16 v0, p1

    move-object v2, v4

    move v3, v7

    move v4, v6

    move-object v6, v10

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lk0;->b(Lm0;Lm0;IFLm0;Lm0;II)V

    :cond_4a
    return-void
.end method

.method public static c(Ls0;)V
    .locals 11

    .line 1
    sget-object v0, Lr0$a;->b:Lr0$a;

    invoke-virtual {p0}, Ls0;->u0()I

    move-result v1

    const/16 v2, 0x20

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 2
    iget-object v0, p0, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Ls0;->q0:Ljava/util/List;

    new-instance v1, Lt0;

    iget-object p0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lt0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Ls0;->x0:Z

    .line 5
    iput-boolean v3, p0, Ls0;->r0:Z

    .line 6
    iput-boolean v3, p0, Ls0;->s0:Z

    .line 7
    iput-boolean v3, p0, Ls0;->t0:Z

    .line 8
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    .line 9
    iget-object v4, p0, Ls0;->q0:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lr0;->p()Lr0$a;

    move-result-object v5

    sget-object v6, Lr0$a;->c:Lr0$a;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lr0;->u()Lr0$a;

    move-result-object v7

    if-ne v7, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 12
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr0;

    const/4 v10, 0x0

    .line 14
    iput-object v10, v9, Lr0;->p:Lt0;

    .line 15
    iput-boolean v3, v9, Lr0;->c0:Z

    .line 16
    invoke-virtual {v9}, Lr0;->F()V

    goto :goto_4

    .line 17
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr0;

    .line 18
    iget-object v9, v8, Lr0;->p:Lt0;

    if-nez v9, :cond_6

    .line 19
    new-instance v9, Lt0;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v9, v10, v1}, Lt0;-><init>(Ljava/util/List;Z)V

    .line 20
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v8, v9, v4, v7}, Ln0;->i(Lr0;Lt0;Ljava/util/List;Z)Z

    move-result v8

    if-nez v8, :cond_6

    .line 22
    iget-object v0, p0, Ls0;->q0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    iget-object v0, p0, Ls0;->q0:Ljava/util/List;

    new-instance v1, Lt0;

    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lt0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24
    iput-boolean v3, p0, Ls0;->x0:Z

    return-void

    .line 25
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt0;

    .line 26
    invoke-static {v9, v3}, Ln0;->d(Lt0;I)I

    move-result v10

    .line 27
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 28
    invoke-static {v9, v1}, Ln0;->d(Lt0;I)I

    move-result v9

    .line 29
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 30
    invoke-virtual {p0, v0}, Lr0;->R(Lr0$a;)V

    .line 31
    invoke-virtual {p0, v7}, Lr0;->h0(I)V

    .line 32
    iput-boolean v1, p0, Ls0;->r0:Z

    .line 33
    iput-boolean v1, p0, Ls0;->s0:Z

    .line 34
    iput v7, p0, Ls0;->u0:I

    :cond_9
    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lr0;->d0(Lr0$a;)V

    .line 36
    invoke-virtual {p0, v8}, Lr0;->N(I)V

    .line 37
    iput-boolean v1, p0, Ls0;->r0:Z

    .line 38
    iput-boolean v1, p0, Ls0;->t0:Z

    .line 39
    iput v8, p0, Ls0;->v0:I

    .line 40
    :cond_a
    invoke-virtual {p0}, Lr0;->w()I

    move-result v0

    invoke-static {v4, v3, v0}, Ln0;->h(Ljava/util/List;II)V

    .line 41
    invoke-virtual {p0}, Lr0;->o()I

    move-result p0

    invoke-static {v4, v1, p0}, Ln0;->h(Ljava/util/List;II)V

    return-void
.end method

.method private static d(Lt0;I)I
    .locals 11

    mul-int/lit8 v0, p1, 0x2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object v2, p0, Lt0;->d:Ljava/util/List;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 3
    iget-object v2, p0, Lt0;->e:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr0;

    .line 6
    iget-object v8, v7, Lr0;->A:[Lq0;

    add-int/lit8 v9, v0, 0x1

    aget-object v10, v8, v9

    iget-object v10, v10, Lq0;->d:Lq0;

    if-eqz v10, :cond_3

    aget-object v10, v8, v0

    iget-object v10, v10, Lq0;->d:Lq0;

    if-eqz v10, :cond_2

    aget-object v8, v8, v9

    iget-object v8, v8, Lq0;->d:Lq0;

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    .line 7
    :goto_3
    invoke-static {v7, p1, v8, v4}, Ln0;->e(Lr0;IZI)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_4
    iget-object p0, p0, Lt0;->c:[I

    aput v6, p0, p1

    return v6
.end method

.method private static e(Lr0;IZI)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lr0;->a0:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2
    :cond_0
    iget-object v3, v0, Lr0;->w:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v1, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    iget v6, v0, Lr0;->Q:I

    .line 4
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v7

    .line 5
    iget v8, v0, Lr0;->Q:I

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v6

    .line 7
    iget v7, v0, Lr0;->Q:I

    sub-int/2addr v6, v7

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v8, v9, 0x1

    .line 8
    :goto_1
    iget-object v10, v0, Lr0;->A:[Lq0;

    aget-object v11, v10, v9

    iget-object v11, v11, Lq0;->d:Lq0;

    if-eqz v11, :cond_3

    aget-object v11, v10, v8

    iget-object v11, v11, Lq0;->d:Lq0;

    if-nez v11, :cond_3

    const/4 v11, -0x1

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_2
    if-eqz v3, :cond_4

    sub-int v13, p3, v6

    goto :goto_3

    :cond_4
    move/from16 v13, p3

    .line 9
    :goto_3
    aget-object v10, v10, v8

    invoke-virtual {v10}, Lq0;->c()I

    move-result v10

    mul-int v10, v10, v11

    invoke-static/range {p0 .. p1}, Ln0;->f(Lr0;I)I

    move-result v14

    add-int/2addr v10, v14

    add-int/2addr v13, v10

    if-nez v1, :cond_5

    .line 10
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v14

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v14

    :goto_4
    mul-int v14, v14, v11

    .line 11
    iget-object v15, v0, Lr0;->A:[Lq0;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Lq0;->d()Lx0;

    move-result-object v15

    iget-object v15, v15, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lz0;

    .line 12
    move-object/from16 v12, v17

    check-cast v12, Lx0;

    .line 13
    iget-object v12, v12, Lx0;->c:Lq0;

    iget-object v12, v12, Lq0;->b:Lr0;

    invoke-static {v12, v1, v2, v13}, Ln0;->e(Lr0;IZI)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_5

    .line 14
    :cond_6
    iget-object v12, v0, Lr0;->A:[Lq0;

    aget-object v12, v12, v9

    invoke-virtual {v12}, Lq0;->d()Lx0;

    move-result-object v12

    iget-object v12, v12, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lz0;

    .line 15
    move-object/from16 v5, v17

    check-cast v5, Lx0;

    .line 16
    iget-object v5, v5, Lx0;->c:Lq0;

    iget-object v5, v5, Lq0;->b:Lr0;

    move-object/from16 p3, v12

    add-int v12, v14, v13

    invoke-static {v5, v1, v2, v12}, Ln0;->e(Lr0;IZI)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v12, p3

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    sub-int/2addr v4, v6

    add-int/2addr v15, v7

    :goto_7
    const/4 v5, 0x1

    goto :goto_9

    :cond_8
    if-nez v1, :cond_9

    .line 17
    invoke-virtual/range {p0 .. p0}, Lr0;->w()I

    move-result v5

    goto :goto_8

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lr0;->o()I

    move-result v5

    :goto_8
    mul-int v5, v5, v11

    add-int/2addr v15, v5

    goto :goto_7

    :goto_9
    if-ne v1, v5, :cond_e

    .line 18
    iget-object v12, v0, Lr0;->w:Lq0;

    invoke-virtual {v12}, Lq0;->d()Lx0;

    move-result-object v12

    iget-object v12, v12, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v18, 0x0

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lz0;

    move-object/from16 p3, v12

    .line 19
    move-object/from16 v12, v16

    check-cast v12, Lx0;

    if-ne v11, v5, :cond_a

    .line 20
    iget-object v5, v12, Lx0;->c:Lq0;

    iget-object v5, v5, Lq0;->b:Lr0;

    add-int v12, v6, v13

    invoke-static {v5, v1, v2, v12}, Ln0;->e(Lr0;IZI)I

    move-result v5

    move/from16 v12, v18

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    move/from16 v17, v9

    goto :goto_b

    :cond_a
    move/from16 v5, v18

    .line 21
    iget-object v12, v12, Lx0;->c:Lq0;

    iget-object v12, v12, Lq0;->b:Lr0;

    mul-int v16, v7, v11

    move/from16 v17, v9

    add-int v9, v16, v13

    invoke-static {v12, v1, v2, v9}, Ln0;->e(Lr0;IZI)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v18, v5

    :goto_b
    move-object/from16 v12, p3

    move/from16 v9, v17

    const/4 v5, 0x1

    goto :goto_a

    :cond_b
    move/from16 v17, v9

    move/from16 v5, v18

    .line 22
    iget-object v9, v0, Lr0;->w:Lq0;

    invoke-virtual {v9}, Lq0;->d()Lx0;

    move-result-object v9

    iget-object v9, v9, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_d

    if-nez v3, :cond_d

    const/4 v3, 0x1

    if-ne v11, v3, :cond_c

    add-int v3, v5, v6

    goto :goto_c

    :cond_c
    sub-int v3, v5, v7

    goto :goto_c

    :cond_d
    move v3, v5

    goto :goto_c

    :cond_e
    move/from16 v17, v9

    const/4 v3, 0x0

    .line 23
    :goto_c
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v10

    add-int/2addr v14, v13

    const/4 v4, -0x1

    if-ne v11, v4, :cond_f

    move/from16 v19, v14

    move v14, v13

    move/from16 v13, v19

    :cond_f
    if-eqz v2, :cond_10

    .line 24
    invoke-static {v0, v1, v13}, Lw0;->c(Lr0;II)V

    .line 25
    invoke-virtual {v0, v13, v14, v1}, Lr0;->M(III)V

    goto :goto_d

    .line 26
    :cond_10
    iget-object v2, v0, Lr0;->p:Lt0;

    invoke-virtual {v2, v0, v1}, Lt0;->a(Lr0;I)V

    if-nez v1, :cond_11

    .line 27
    iput v13, v0, Lr0;->K:I

    goto :goto_d

    :cond_11
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 28
    iput v13, v0, Lr0;->L:I

    .line 29
    :cond_12
    :goto_d
    invoke-virtual/range {p0 .. p1}, Lr0;->l(I)Lr0$a;

    move-result-object v2

    sget-object v4, Lr0$a;->d:Lr0$a;

    if-ne v2, v4, :cond_13

    iget v2, v0, Lr0;->G:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_13

    .line 30
    iget-object v2, v0, Lr0;->p:Lt0;

    invoke-virtual {v2, v0, v1}, Lt0;->a(Lr0;I)V

    .line 31
    :cond_13
    iget-object v2, v0, Lr0;->A:[Lq0;

    aget-object v4, v2, v8

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_14

    aget-object v4, v2, v17

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_14

    .line 32
    iget-object v4, v0, Lr0;->D:Lr0;

    .line 33
    aget-object v5, v2, v8

    iget-object v5, v5, Lq0;->d:Lq0;

    iget-object v5, v5, Lq0;->b:Lr0;

    if-ne v5, v4, :cond_14

    aget-object v2, v2, v17

    iget-object v2, v2, Lq0;->d:Lq0;

    iget-object v2, v2, Lq0;->b:Lr0;

    if-ne v2, v4, :cond_14

    .line 34
    iget-object v2, v0, Lr0;->p:Lt0;

    invoke-virtual {v2, v0, v1}, Lt0;->a(Lr0;I)V

    :cond_14
    return v3
.end method

.method private static f(Lr0;I)I
    .locals 4

    mul-int/lit8 v0, p1, 0x2

    .line 1
    iget-object v1, p0, Lr0;->A:[Lq0;

    aget-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    aget-object v0, v1, v0

    .line 3
    iget-object v1, v2, Lq0;->d:Lq0;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq0;->b:Lr0;

    iget-object v3, p0, Lr0;->D:Lr0;

    if-ne v1, v3, :cond_1

    iget-object v1, v0, Lq0;->d:Lq0;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lq0;->b:Lr0;

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Lr0;->q(I)I

    move-result v1

    if-nez p1, :cond_0

    .line 5
    iget v3, p0, Lr0;->V:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lr0;->W:F

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lr0;->q(I)I

    move-result p0

    .line 7
    invoke-virtual {v2}, Lq0;->c()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Lq0;->c()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float p0, p0, v3

    float-to-int p0, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Lr0;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr0;->p()Lr0$a;

    move-result-object v0

    sget-object v1, Lr0$a;->d:Lr0$a;

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lr0;->H:I

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lr0;->o()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lr0;->G:F

    mul-float v0, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lr0;->o()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lr0;->G:F

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 5
    invoke-virtual {p0, v0}, Lr0;->h0(I)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lr0;->u()Lr0$a;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 7
    iget v0, p0, Lr0;->H:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lr0;->w()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lr0;->G:F

    mul-float v0, v0, v1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lr0;->w()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lr0;->G:F

    div-float/2addr v0, v1

    :goto_1
    float-to-int v0, v0

    .line 10
    invoke-virtual {p0, v0}, Lr0;->N(I)V

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public static h(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt0;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt0;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 4
    iget-object v3, v3, Lt0;->f:Ljava/util/HashSet;

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    .line 5
    iget-object v3, v3, Lt0;->g:Ljava/util/HashSet;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0;

    .line 7
    iget-boolean v6, v5, Lr0;->a0:Z

    if-eqz v6, :cond_2

    mul-int/lit8 v6, p1, 0x2

    .line 8
    iget-object v7, v5, Lr0;->A:[Lq0;

    aget-object v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    .line 9
    aget-object v7, v7, v9

    .line 10
    iget-object v9, v8, Lq0;->d:Lq0;

    if-eqz v9, :cond_3

    iget-object v9, v7, Lq0;->d:Lq0;

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 11
    invoke-static {v5, p1}, Ln0;->f(Lr0;I)I

    move-result v6

    invoke-virtual {v8}, Lq0;->c()I

    move-result v7

    add-int/2addr v7, v6

    .line 12
    invoke-static {v5, p1, v7}, Lw0;->c(Lr0;II)V

    goto :goto_2

    .line 13
    :cond_4
    iget v9, v5, Lr0;->G:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    invoke-virtual {v5, p1}, Lr0;->l(I)Lr0$a;

    move-result-object v9

    sget-object v10, Lr0$a;->d:Lr0$a;

    if-ne v9, v10, :cond_5

    .line 14
    invoke-static {v5}, Ln0;->g(Lr0;)I

    move-result v9

    .line 15
    iget-object v10, v5, Lr0;->A:[Lq0;

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    iget v6, v6, Lx0;->g:F

    float-to-int v6, v6

    add-int v10, v6, v9

    .line 16
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v11

    invoke-virtual {v8}, Lq0;->d()Lx0;

    move-result-object v8

    iput-object v8, v11, Lx0;->f:Lx0;

    .line 17
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v8

    int-to-float v9, v9

    iput v9, v8, Lx0;->g:F

    .line 18
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v7

    iput v4, v7, Lz0;->b:I

    .line 19
    invoke-virtual {v5, v6, v10, p1}, Lr0;->M(III)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    .line 20
    iget v6, v5, Lr0;->K:I

    goto :goto_4

    :cond_6
    if-ne p1, v4, :cond_7

    .line 21
    iget v6, v5, Lr0;->L:I

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    sub-int v6, p2, v6

    .line 22
    invoke-virtual {v5, p1}, Lr0;->q(I)I

    move-result v7

    sub-int v7, v6, v7

    .line 23
    invoke-virtual {v5, v7, v6, p1}, Lr0;->M(III)V

    .line 24
    invoke-static {v5, p1, v7}, Lw0;->c(Lr0;II)V

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static i(Lr0;Lt0;Ljava/util/List;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0;",
            "Lt0;",
            "Ljava/util/List<",
            "Lt0;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lr0;->b0:Z

    .line 2
    iget-object v2, p0, Lr0;->D:Lr0;

    .line 3
    check-cast v2, Ls0;

    .line 4
    iget-object v3, p0, Lr0;->p:Lt0;

    if-nez v3, :cond_1e

    .line 5
    iput-boolean v0, p0, Lr0;->a0:Z

    .line 6
    iget-object v3, p1, Lt0;->a:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object p1, p0, Lr0;->p:Lt0;

    .line 8
    iget-object v3, p0, Lr0;->s:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    iget-object v3, p0, Lr0;->u:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    iget-object v3, p0, Lr0;->t:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    iget-object v3, p0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    iget-object v3, p0, Lr0;->w:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    iget-object v3, p0, Lr0;->z:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_1

    .line 9
    iput-boolean v1, p1, Lt0;->b:Z

    .line 10
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 11
    iput-boolean v1, p0, Lr0;->a0:Z

    if-eqz p3, :cond_1

    return v1

    .line 12
    :cond_1
    iget-object v3, p0, Lr0;->t:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {v2}, Lr0;->u()Lr0$a;

    if-eqz p3, :cond_2

    .line 14
    iput-boolean v1, p1, Lt0;->b:Z

    .line 15
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 16
    iput-boolean v1, p0, Lr0;->a0:Z

    return v1

    .line 17
    :cond_2
    iget-object v3, p0, Lr0;->t:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    iget-object v3, v3, Lq0;->b:Lr0;

    .line 18
    iget-object v4, p0, Lr0;->D:Lr0;

    if-ne v3, v4, :cond_3

    .line 19
    iget-object v3, p0, Lr0;->v:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    iget-object v3, v3, Lq0;->b:Lr0;

    if-eq v3, v4, :cond_4

    .line 20
    :cond_3
    iput-boolean v1, p1, Lt0;->b:Z

    .line 21
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 22
    iput-boolean v1, p0, Lr0;->a0:Z

    .line 23
    :cond_4
    iget-object v3, p0, Lr0;->s:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lr0;->u:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {v2}, Lr0;->p()Lr0$a;

    if-eqz p3, :cond_5

    .line 25
    iput-boolean v1, p1, Lt0;->b:Z

    .line 26
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 27
    iput-boolean v1, p0, Lr0;->a0:Z

    return v1

    .line 28
    :cond_5
    iget-object v3, p0, Lr0;->s:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    iget-object v3, v3, Lq0;->b:Lr0;

    .line 29
    iget-object v4, p0, Lr0;->D:Lr0;

    if-ne v3, v4, :cond_6

    .line 30
    iget-object v3, p0, Lr0;->u:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    iget-object v3, v3, Lq0;->b:Lr0;

    if-eq v3, v4, :cond_7

    .line 31
    :cond_6
    iput-boolean v1, p1, Lt0;->b:Z

    .line 32
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 33
    iput-boolean v1, p0, Lr0;->a0:Z

    .line 34
    :cond_7
    invoke-virtual {p0}, Lr0;->p()Lr0$a;

    move-result-object v3

    sget-object v4, Lr0$a;->d:Lr0$a;

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lr0;->u()Lr0$a;

    move-result-object v5

    if-ne v5, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :goto_1
    xor-int/2addr v3, v5

    if-eqz v3, :cond_a

    iget v3, p0, Lr0;->G:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_a

    .line 36
    invoke-static {p0}, Ln0;->g(Lr0;)I

    goto :goto_2

    .line 37
    :cond_a
    invoke-virtual {p0}, Lr0;->p()Lr0$a;

    move-result-object v3

    if-eq v3, v4, :cond_b

    .line 38
    invoke-virtual {p0}, Lr0;->u()Lr0$a;

    move-result-object v3

    if-ne v3, v4, :cond_c

    .line 39
    :cond_b
    iput-boolean v1, p1, Lt0;->b:Z

    .line 40
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 41
    iput-boolean v1, p0, Lr0;->a0:Z

    if-eqz p3, :cond_c

    return v1

    .line 42
    :cond_c
    :goto_2
    iget-object v3, p0, Lr0;->s:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_d

    iget-object v4, p0, Lr0;->u:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_10

    :cond_d
    if-eqz v3, :cond_e

    iget-object v4, v3, Lq0;->b:Lr0;

    iget-object v5, p0, Lr0;->D:Lr0;

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Lr0;->u:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_10

    :cond_e
    iget-object v4, p0, Lr0;->u:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_f

    iget-object v5, v4, Lq0;->b:Lr0;

    iget-object v6, p0, Lr0;->D:Lr0;

    if-ne v5, v6, :cond_f

    if-eqz v3, :cond_10

    :cond_f
    if-eqz v3, :cond_11

    iget-object v3, v3, Lq0;->b:Lr0;

    iget-object v5, p0, Lr0;->D:Lr0;

    if-ne v3, v5, :cond_11

    if-eqz v4, :cond_11

    iget-object v3, v4, Lq0;->b:Lr0;

    if-ne v3, v5, :cond_11

    :cond_10
    iget-object v3, p0, Lr0;->z:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_11

    .line 43
    instance-of v3, p0, Lu0;

    if-nez v3, :cond_11

    instance-of v3, p0, Lv0;

    if-nez v3, :cond_11

    .line 44
    iget-object v3, p1, Lt0;->d:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_11
    iget-object v3, p0, Lr0;->t:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_12

    iget-object v4, p0, Lr0;->v:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_15

    :cond_12
    if-eqz v3, :cond_13

    iget-object v4, v3, Lq0;->b:Lr0;

    iget-object v5, p0, Lr0;->D:Lr0;

    if-ne v4, v5, :cond_13

    iget-object v4, p0, Lr0;->v:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_15

    :cond_13
    iget-object v4, p0, Lr0;->v:Lq0;

    iget-object v4, v4, Lq0;->d:Lq0;

    if-eqz v4, :cond_14

    iget-object v5, v4, Lq0;->b:Lr0;

    iget-object v6, p0, Lr0;->D:Lr0;

    if-ne v5, v6, :cond_14

    if-eqz v3, :cond_15

    :cond_14
    if-eqz v3, :cond_16

    iget-object v3, v3, Lq0;->b:Lr0;

    iget-object v5, p0, Lr0;->D:Lr0;

    if-ne v3, v5, :cond_16

    if-eqz v4, :cond_16

    iget-object v3, v4, Lq0;->b:Lr0;

    if-ne v3, v5, :cond_16

    :cond_15
    iget-object v3, p0, Lr0;->z:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_16

    iget-object v3, p0, Lr0;->w:Lq0;

    iget-object v3, v3, Lq0;->d:Lq0;

    if-nez v3, :cond_16

    .line 46
    instance-of v3, p0, Lu0;

    if-nez v3, :cond_16

    instance-of v3, p0, Lv0;

    if-nez v3, :cond_16

    .line 47
    iget-object v3, p1, Lt0;->e:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_16
    instance-of v3, p0, Lv0;

    if-eqz v3, :cond_19

    .line 49
    iput-boolean v1, p1, Lt0;->b:Z

    .line 50
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 51
    iput-boolean v1, p0, Lr0;->a0:Z

    if-eqz p3, :cond_17

    return v1

    .line 52
    :cond_17
    move-object v3, p0

    check-cast v3, Lv0;

    const/4 v4, 0x0

    .line 53
    :goto_3
    iget v5, v3, Lv0;->j0:I

    if-ge v4, v5, :cond_19

    .line 54
    iget-object v5, v3, Lv0;->i0:[Lr0;

    aget-object v5, v5, v4

    invoke-static {v5, p1, p2, p3}, Ln0;->i(Lr0;Lt0;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_18

    return v1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 55
    :cond_19
    iget-object v3, p0, Lr0;->A:[Lq0;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_1d

    .line 56
    iget-object v5, p0, Lr0;->A:[Lq0;

    aget-object v5, v5, v4

    .line 57
    iget-object v6, v5, Lq0;->d:Lq0;

    if-eqz v6, :cond_1c

    iget-object v6, v6, Lq0;->b:Lr0;

    .line 58
    iget-object v7, p0, Lr0;->D:Lr0;

    if-eq v6, v7, :cond_1c

    .line 59
    iget-object v6, v5, Lq0;->c:Lq0$b;

    sget-object v7, Lq0$b;->h:Lq0$b;

    if-ne v6, v7, :cond_1a

    .line 60
    iput-boolean v1, p1, Lt0;->b:Z

    .line 61
    iput-boolean v1, v2, Ls0;->x0:Z

    .line 62
    iput-boolean v1, p0, Lr0;->a0:Z

    if-eqz p3, :cond_1b

    return v1

    .line 63
    :cond_1a
    invoke-virtual {v5}, Lq0;->d()Lx0;

    move-result-object v6

    .line 64
    iget-object v7, v5, Lq0;->d:Lq0;

    if-eqz v7, :cond_1b

    iget-object v8, v7, Lq0;->d:Lq0;

    if-eq v8, v5, :cond_1b

    .line 65
    invoke-virtual {v7}, Lq0;->d()Lx0;

    move-result-object v7

    .line 66
    iget-object v7, v7, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1b
    iget-object v5, v5, Lq0;->d:Lq0;

    iget-object v5, v5, Lq0;->b:Lr0;

    invoke-static {v5, p1, p2, p3}, Ln0;->i(Lr0;Lt0;Ljava/util/List;Z)Z

    move-result v5

    if-nez v5, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1d
    return v0

    :cond_1e
    if-eq v3, p1, :cond_20

    .line 68
    iget-object p3, p1, Lt0;->a:Ljava/util/List;

    iget-object v2, v3, Lt0;->a:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object p3, p1, Lt0;->d:Ljava/util/List;

    iget-object v2, p0, Lr0;->p:Lt0;

    iget-object v2, v2, Lt0;->d:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object p3, p1, Lt0;->e:Ljava/util/List;

    iget-object v2, p0, Lr0;->p:Lt0;

    iget-object v2, v2, Lt0;->e:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object p3, p0, Lr0;->p:Lt0;

    iget-boolean v2, p3, Lt0;->b:Z

    if-nez v2, :cond_1f

    .line 72
    iput-boolean v1, p1, Lt0;->b:Z

    .line 73
    :cond_1f
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lr0;->p:Lt0;

    iget-object p0, p0, Lt0;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr0;

    .line 75
    iput-object p1, p2, Lr0;->p:Lt0;

    goto :goto_5

    :cond_20
    return v0
.end method
