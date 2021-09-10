.class public Lma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;

.field private static b:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "a"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "rz"

    const-string v4, "r"

    const-string v5, "o"

    const-string v6, "so"

    const-string v7, "eo"

    const-string v8, "sk"

    const-string v9, "sa"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lma;->a:Lub$a;

    const-string v0, "k"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lma;->b:Lub$a;

    return-void
.end method

.method public static a(Lub;Lcom/airbnb/lottie/e;)Le9;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->d:Lub$b;

    const/4 v10, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    :cond_1
    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 4
    sget-object v2, Lma;->a:Lub$a;

    invoke-virtual {v0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_1

    .line 7
    :pswitch_0
    invoke-static {v0, v8, v10}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v17

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-static {v0, v8, v10}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v16

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {v0, v8, v10}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v25

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-static {v0, v8, v10}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v24

    goto :goto_1

    .line 11
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lna;->g(Lub;Lcom/airbnb/lottie/e;)Lw8;

    move-result-object v23

    goto :goto_1

    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 12
    invoke-virtual {v8, v1}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    .line 13
    :pswitch_6
    invoke-static {v0, v8, v10}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v18

    .line 14
    invoke-virtual/range {v18 .. v18}, Lu8;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual/range {v18 .. v18}, Lu8;->b()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lec;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->f()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v19

    move-object v9, v6

    move/from16 v6, v20

    move-object v12, v7

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lec;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lu8;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec;

    iget-object v1, v1, Lec;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 17
    invoke-virtual/range {v18 .. v18}, Lu8;->b()Ljava/util/List;

    move-result-object v9

    new-instance v12, Lec;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->f()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lec;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 18
    :pswitch_7
    invoke-static/range {p0 .. p1}, Lna;->i(Lub;Lcom/airbnb/lottie/e;)Lz8;

    move-result-object v15

    goto/16 :goto_1

    .line 19
    :pswitch_8
    invoke-static/range {p0 .. p1}, Lka;->b(Lub;Lcom/airbnb/lottie/e;)Lf9;

    move-result-object v14

    goto/16 :goto_1

    .line 20
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    .line 21
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    sget-object v2, Lma;->b:Lub$a;

    invoke-virtual {v0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_3

    .line 25
    :cond_4
    invoke-static/range {p0 .. p1}, Lka;->a(Lub;Lcom/airbnb/lottie/e;)Lx8;

    move-result-object v13

    goto :goto_3

    .line 26
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    goto/16 :goto_1

    :cond_6
    if-eqz v11, :cond_7

    .line 27
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    :cond_7
    if-eqz v13, :cond_9

    .line 28
    invoke-virtual {v13}, Lx8;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v13}, Lx8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_a

    const/4 v13, 0x0

    :cond_a
    if-eqz v14, :cond_c

    .line 29
    instance-of v0, v14, Lb9;

    if-nez v0, :cond_b

    .line 30
    invoke-interface {v14}, Lf9;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v14}, Lf9;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_d

    const/4 v14, 0x0

    :cond_d
    if-eqz v1, :cond_f

    .line 31
    invoke-virtual {v1}, Lu8;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lu8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_10

    const/16 v22, 0x0

    goto :goto_a

    :cond_10
    move-object/from16 v22, v1

    :goto_a
    if-eqz v15, :cond_12

    .line 32
    invoke-virtual {v15}, Lz8;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v15}, Lz8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Lhc;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lhc;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_13

    const/16 v21, 0x0

    goto :goto_d

    :cond_13
    move-object/from16 v21, v15

    :goto_d
    if-eqz v16, :cond_15

    .line 33
    invoke-virtual/range {v16 .. v16}, Lu8;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual/range {v16 .. v16}, Lu8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_14

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_16

    const/16 v26, 0x0

    goto :goto_10

    :cond_16
    move-object/from16 v26, v16

    :goto_10
    if-eqz v17, :cond_18

    .line 34
    invoke-virtual/range {v17 .. v17}, Lu8;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {v17 .. v17}, Lu8;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec;

    iget-object v0, v0, Lec;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    const/4 v9, 0x0

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v9, 0x1

    :goto_12
    if-eqz v9, :cond_19

    const/16 v27, 0x0

    goto :goto_13

    :cond_19
    move-object/from16 v27, v17

    .line 35
    :goto_13
    new-instance v0, Le9;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-direct/range {v18 .. v27}, Le9;-><init>(Lx8;Lf9;Lz8;Lu8;Lw8;Lu8;Lu8;Lu8;Lu8;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
