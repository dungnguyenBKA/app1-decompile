.class public Lu0;
.super Lr0;
.source "SourceFile"


# instance fields
.field protected i0:F

.field protected j0:I

.field protected k0:I

.field private l0:Lq0;

.field private m0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lr0;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lu0;->i0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lu0;->j0:I

    .line 4
    iput v0, p0, Lu0;->k0:I

    .line 5
    iget-object v0, p0, Lr0;->t:Lq0;

    iput-object v0, p0, Lu0;->l0:Lq0;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lu0;->m0:I

    .line 7
    iget-object v1, p0, Lr0;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Lu0;->l0:Lq0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lr0;->A:[Lq0;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lr0;->A:[Lq0;

    iget-object v3, p0, Lu0;->l0:Lq0;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lk0;)V
    .locals 8

    .line 1
    sget-object v0, Lr0$a;->c:Lr0$a;

    iget-object v1, p0, Lr0;->D:Lr0;

    .line 2
    check-cast v1, Ls0;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Lq0$b;->c:Lq0$b;

    invoke-virtual {v1, v2}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v2

    .line 4
    sget-object v3, Lq0$b;->e:Lq0$b;

    invoke-virtual {v1, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lr0;->D:Lr0;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v4, Lr0;->C:[Lr0$a;

    aget-object v4, v4, v6

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_0
    iget v7, p0, Lu0;->m0:I

    if-nez v7, :cond_3

    .line 7
    sget-object v2, Lq0$b;->d:Lq0$b;

    invoke-virtual {v1, v2}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v2

    .line 8
    sget-object v3, Lq0$b;->f:Lq0$b;

    invoke-virtual {v1, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v3

    .line 9
    iget-object v1, p0, Lr0;->D:Lr0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lr0;->C:[Lr0$a;

    aget-object v1, v1, v5

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 10
    :cond_3
    iget v0, p0, Lu0;->j0:I

    const/4 v1, 0x6

    const/4 v5, -0x1

    const/4 v7, 0x5

    if-eq v0, v5, :cond_4

    .line 11
    iget-object v0, p0, Lu0;->l0:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v2}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v2

    .line 13
    iget v5, p0, Lu0;->j0:I

    invoke-virtual {p1, v0, v2, v5, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {p1, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v6, v7}, Lk0;->f(Lm0;Lm0;II)V

    goto :goto_2

    .line 15
    :cond_4
    iget v0, p0, Lu0;->k0:I

    if-eq v0, v5, :cond_5

    .line 16
    iget-object v0, p0, Lu0;->l0:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    .line 18
    iget v5, p0, Lu0;->k0:I

    neg-int v5, v5

    invoke-virtual {p1, v0, v3, v5, v1}, Lk0;->d(Lm0;Lm0;II)Lh0;

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {p1, v2}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v6, v7}, Lk0;->f(Lm0;Lm0;II)V

    .line 20
    invoke-virtual {p1, v3, v0, v6, v7}, Lk0;->f(Lm0;Lm0;II)V

    goto :goto_2

    .line 21
    :cond_5
    iget v0, p0, Lu0;->i0:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lu0;->l0:Lq0;

    invoke-virtual {p1, v0}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v2}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v2

    .line 24
    invoke-virtual {p1, v3}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v3

    .line 25
    iget v4, p0, Lu0;->i0:F

    .line 26
    invoke-virtual {p1}, Lk0;->m()Lh0;

    move-result-object v5

    .line 27
    iget-object v6, v5, Lh0;->c:Lg0;

    invoke-virtual {v6, v0, v1}, Lg0;->l(Lm0;F)V

    .line 28
    iget-object v0, v5, Lh0;->c:Lg0;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Lg0;->l(Lm0;F)V

    .line 29
    iget-object v0, v5, Lh0;->c:Lg0;

    invoke-virtual {v0, v3, v4}, Lg0;->l(Lm0;F)V

    .line 30
    invoke-virtual {p1, v5}, Lk0;->c(Lh0;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .locals 7

    .line 1
    sget-object p1, Lr0$a;->b:Lr0$a;

    iget-object v0, p0, Lr0;->D:Lr0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lu0;->m0:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 3
    iget-object v1, p0, Lr0;->t:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v6, v0, Lr0;->t:Lq0;

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lx0;->f(ILx0;I)V

    .line 4
    iget-object v1, p0, Lr0;->v:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v6, v0, Lr0;->t:Lq0;

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lx0;->f(ILx0;I)V

    .line 5
    iget v1, p0, Lu0;->j0:I

    if-eq v1, v3, :cond_1

    .line 6
    iget-object p1, p0, Lr0;->s:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v1, v0, Lr0;->s:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v2, p0, Lu0;->j0:I

    invoke-virtual {p1, v5, v1, v2}, Lx0;->f(ILx0;I)V

    .line 7
    iget-object p1, p0, Lr0;->u:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v0, v0, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v1, p0, Lu0;->j0:I

    invoke-virtual {p1, v5, v0, v1}, Lx0;->f(ILx0;I)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget v1, p0, Lu0;->k0:I

    if-eq v1, v3, :cond_2

    .line 9
    iget-object p1, p0, Lr0;->s:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v1, v0, Lr0;->u:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v2, p0, Lu0;->k0:I

    neg-int v2, v2

    invoke-virtual {p1, v5, v1, v2}, Lx0;->f(ILx0;I)V

    .line 10
    iget-object p1, p0, Lr0;->u:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v0, v0, Lr0;->u:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v1, p0, Lu0;->k0:I

    neg-int v1, v1

    invoke-virtual {p1, v5, v0, v1}, Lx0;->f(ILx0;I)V

    goto/16 :goto_0

    .line 11
    :cond_2
    iget v1, p0, Lu0;->i0:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lr0;->p()Lr0$a;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 12
    iget p1, v0, Lr0;->E:I

    int-to-float p1, p1

    iget v1, p0, Lu0;->i0:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 13
    iget-object v1, p0, Lr0;->s:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v2, v0, Lr0;->s:Lq0;

    invoke-virtual {v2}, Lq0;->d()Lx0;

    move-result-object v2

    invoke-virtual {v1, v5, v2, p1}, Lx0;->f(ILx0;I)V

    .line 14
    iget-object v1, p0, Lr0;->u:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v0, v0, Lr0;->s:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    invoke-virtual {v1, v5, v0, p1}, Lx0;->f(ILx0;I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object v1, p0, Lr0;->s:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v6, v0, Lr0;->s:Lq0;

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lx0;->f(ILx0;I)V

    .line 16
    iget-object v1, p0, Lr0;->u:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v6, v0, Lr0;->s:Lq0;

    invoke-virtual {v6}, Lq0;->d()Lx0;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lx0;->f(ILx0;I)V

    .line 17
    iget v1, p0, Lu0;->j0:I

    if-eq v1, v3, :cond_4

    .line 18
    iget-object p1, p0, Lr0;->t:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v1, v0, Lr0;->t:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v2, p0, Lu0;->j0:I

    invoke-virtual {p1, v5, v1, v2}, Lx0;->f(ILx0;I)V

    .line 19
    iget-object p1, p0, Lr0;->v:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v0, v0, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v1, p0, Lu0;->j0:I

    invoke-virtual {p1, v5, v0, v1}, Lx0;->f(ILx0;I)V

    goto :goto_0

    .line 20
    :cond_4
    iget v1, p0, Lu0;->k0:I

    if-eq v1, v3, :cond_5

    .line 21
    iget-object p1, p0, Lr0;->t:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v1, v0, Lr0;->v:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget v2, p0, Lu0;->k0:I

    neg-int v2, v2

    invoke-virtual {p1, v5, v1, v2}, Lx0;->f(ILx0;I)V

    .line 22
    iget-object p1, p0, Lr0;->v:Lq0;

    invoke-virtual {p1}, Lq0;->d()Lx0;

    move-result-object p1

    iget-object v0, v0, Lr0;->v:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    iget v1, p0, Lu0;->k0:I

    neg-int v1, v1

    invoke-virtual {p1, v5, v0, v1}, Lx0;->f(ILx0;I)V

    goto :goto_0

    .line 23
    :cond_5
    iget v1, p0, Lu0;->i0:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lr0;->u()Lr0$a;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 24
    iget p1, v0, Lr0;->F:I

    int-to-float p1, p1

    iget v1, p0, Lu0;->i0:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 25
    iget-object v1, p0, Lr0;->t:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v2, v0, Lr0;->t:Lq0;

    invoke-virtual {v2}, Lq0;->d()Lx0;

    move-result-object v2

    invoke-virtual {v1, v5, v2, p1}, Lx0;->f(ILx0;I)V

    .line 26
    iget-object v1, p0, Lr0;->v:Lq0;

    invoke-virtual {v1}, Lq0;->d()Lx0;

    move-result-object v1

    iget-object v0, v0, Lr0;->t:Lq0;

    invoke-virtual {v0}, Lq0;->d()Lx0;

    move-result-object v0

    invoke-virtual {v1, v5, v0, p1}, Lx0;->f(ILx0;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public g(Lq0$b;)Lq0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_1
    iget v0, p0, Lu0;->m0:I

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lu0;->l0:Lq0;

    return-object p1

    .line 4
    :pswitch_2
    iget v0, p0, Lu0;->m0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Lu0;->l0:Lq0;

    return-object p1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public n0(Lk0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr0;->D:Lr0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu0;->l0:Lq0;

    invoke-virtual {p1, v0}, Lk0;->p(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget v0, p0, Lu0;->m0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iput p1, p0, Lr0;->I:I

    .line 5
    iput v2, p0, Lr0;->J:I

    .line 6
    iget-object p1, p0, Lr0;->D:Lr0;

    .line 7
    invoke-virtual {p1}, Lr0;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lr0;->N(I)V

    .line 8
    invoke-virtual {p0, v2}, Lr0;->h0(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p0, Lr0;->I:I

    .line 10
    iput p1, p0, Lr0;->J:I

    .line 11
    iget-object p1, p0, Lr0;->D:Lr0;

    .line 12
    invoke-virtual {p1}, Lr0;->w()I

    move-result p1

    invoke-virtual {p0, p1}, Lr0;->h0(I)V

    .line 13
    invoke-virtual {p0, v2}, Lr0;->N(I)V

    :goto_0
    return-void
.end method

.method public o0(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Lu0;->i0:F

    .line 2
    iput p1, p0, Lu0;->j0:I

    .line 3
    iput v0, p0, Lu0;->k0:I

    :cond_0
    return-void
.end method

.method public p0(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Lu0;->i0:F

    .line 2
    iput v0, p0, Lu0;->j0:I

    .line 3
    iput p1, p0, Lu0;->k0:I

    :cond_0
    return-void
.end method

.method public q0(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lu0;->i0:F

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lu0;->j0:I

    .line 3
    iput p1, p0, Lu0;->k0:I

    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lu0;->m0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lu0;->m0:I

    .line 3
    iget-object p1, p0, Lr0;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Lu0;->m0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lr0;->s:Lq0;

    iput-object p1, p0, Lu0;->l0:Lq0;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lr0;->t:Lq0;

    iput-object p1, p0, Lu0;->l0:Lq0;

    .line 7
    :goto_0
    iget-object p1, p0, Lr0;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Lu0;->l0:Lq0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lr0;->A:[Lq0;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Lr0;->A:[Lq0;

    iget-object v2, p0, Lu0;->l0:Lq0;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
