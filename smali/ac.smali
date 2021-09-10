.class public Lac;
.super Lwb;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private d:F

.field private e:Z

.field private f:J

.field private g:F

.field private h:I

.field private i:F

.field private j:F

.field private k:Lcom/airbnb/lottie/e;

.field protected l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lwb;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lac;->d:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lac;->e:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lac;->f:J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lac;->g:F

    .line 6
    iput v0, p0, Lac;->h:I

    const/high16 v1, -0x31000000

    .line 7
    iput v1, p0, Lac;->i:F

    const/high16 v1, 0x4f000000

    .line 8
    iput v1, p0, Lac;->j:F

    .line 9
    iput-boolean v0, p0, Lac;->l:Z

    return-void
.end method

.method private l()Z
    .locals 2

    .line 1
    iget v0, p0, Lac;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwb;->a()V

    .line 2
    invoke-virtual {p0}, Lac;->q()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lac;->p()V

    .line 2
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-eqz v0, :cond_b

    .line 3
    iget-boolean v1, p0, Lac;->l:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    iget-wide v1, p0, Lac;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    :goto_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->h()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lac;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    long-to-float v0, v3

    div-float/2addr v0, v1

    .line 6
    iget v1, p0, Lac;->g:F

    invoke-direct {p0}, Lac;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-float v0, v0

    :cond_2
    add-float/2addr v1, v0

    iput v1, p0, Lac;->g:F

    .line 7
    invoke-virtual {p0}, Lac;->j()F

    move-result v0

    invoke-virtual {p0}, Lac;->i()F

    move-result v2

    .line 8
    sget v3, Lcc;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v3

    .line 9
    iget v1, p0, Lac;->g:F

    invoke-virtual {p0}, Lac;->j()F

    move-result v2

    invoke-virtual {p0}, Lac;->i()F

    move-result v5

    invoke-static {v1, v2, v5}, Lcc;->b(FFF)F

    move-result v1

    iput v1, p0, Lac;->g:F

    .line 10
    iput-wide p1, p0, Lac;->f:J

    .line 11
    invoke-virtual {p0}, Lwb;->e()V

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v0, p0, Lac;->h:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 13
    iget p1, p0, Lac;->d:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lac;->j()F

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lac;->i()F

    move-result p1

    :goto_2
    iput p1, p0, Lac;->g:F

    .line 14
    invoke-virtual {p0}, Lac;->q()V

    .line 15
    invoke-direct {p0}, Lac;->l()Z

    move-result p1

    invoke-virtual {p0, p1}, Lwb;->b(Z)V

    goto :goto_5

    .line 16
    :cond_5
    invoke-virtual {p0}, Lwb;->c()V

    .line 17
    iget v0, p0, Lac;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lac;->h:I

    .line 18
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 19
    iget-boolean v0, p0, Lac;->e:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lac;->e:Z

    .line 20
    iget v0, p0, Lac;->d:F

    neg-float v0, v0

    .line 21
    iput v0, p0, Lac;->d:F

    goto :goto_4

    .line 22
    :cond_6
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lac;->i()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lac;->j()F

    move-result v0

    :goto_3
    iput v0, p0, Lac;->g:F

    .line 23
    :goto_4
    iput-wide p1, p0, Lac;->f:J

    .line 24
    :cond_8
    :goto_5
    iget-object p1, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez p1, :cond_9

    goto :goto_6

    .line 25
    :cond_9
    iget p1, p0, Lac;->g:F

    iget p2, p0, Lac;->i:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_a

    iget p2, p0, Lac;->j:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_a

    :goto_6
    const-string p1, "LottieValueAnimator#doFrame"

    .line 26
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void

    .line 27
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lac;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v4

    iget v0, p0, Lac;->j:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lac;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Frame must be [%f,%f]. It is %f"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_7
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    const/high16 v0, -0x31000000

    .line 2
    iput v0, p0, Lac;->i:F

    const/high16 v0, 0x4f000000

    .line 3
    iput v0, p0, Lac;->j:F

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lac;->q()V

    .line 2
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lwb;->b(Z)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lac;->i()F

    move-result v0

    iget v1, p0, Lac;->g:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lac;->i()F

    move-result v1

    invoke-virtual {p0}, Lac;->j()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lac;->g:F

    invoke-virtual {p0}, Lac;->j()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lac;->i()F

    move-result v1

    invoke-virtual {p0}, Lac;->j()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lac;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->d()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public h()F
    .locals 3

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lac;->g:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->f()F

    move-result v0

    iget-object v2, p0, Lac;->k:Lcom/airbnb/lottie/e;

    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->n()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public i()F
    .locals 3

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lac;->j:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->f()F

    move-result v1

    :cond_1
    return v1
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lac;->l:Z

    return v0
.end method

.method public j()F
    .locals 3

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Lac;->i:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()F

    move-result v1

    :cond_1
    return v1
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lac;->d:F

    return v0
.end method

.method public m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lac;->q()V

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lac;->l:Z

    .line 2
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lwb;->d(Z)V

    .line 3
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lac;->i()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lac;->j()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lac;->t(F)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lac;->f:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lac;->h:I

    .line 6
    invoke-virtual {p0}, Lac;->p()V

    return-void
.end method

.method protected p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lac;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lac;->l:Z

    return-void
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lac;->l:Z

    .line 2
    invoke-virtual {p0}, Lac;->p()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lac;->f:J

    .line 4
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lac;->g:F

    .line 6
    invoke-virtual {p0}, Lac;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lac;->i()F

    move-result v0

    iput v0, p0, Lac;->g:F

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lac;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget v0, p0, Lac;->g:F

    .line 10
    invoke-virtual {p0}, Lac;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lac;->j()F

    move-result v0

    iput v0, p0, Lac;->g:F

    :cond_1
    :goto_0
    return-void
.end method

.method public s(Lcom/airbnb/lottie/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lac;->i:F

    .line 4
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->n()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lac;->j:F

    .line 5
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->f()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 6
    invoke-virtual {p0, v0, p1}, Lac;->u(FF)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->n()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->f()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lac;->u(FF)V

    .line 8
    :goto_1
    iget p1, p0, Lac;->g:F

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lac;->g:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 10
    invoke-virtual {p0, p1}, Lac;->t(F)V

    .line 11
    invoke-virtual {p0}, Lwb;->e()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-boolean p1, p0, Lac;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lac;->e:Z

    .line 4
    iget p1, p0, Lac;->d:F

    neg-float p1, p1

    .line 5
    iput p1, p0, Lac;->d:F

    :cond_0
    return-void
.end method

.method public t(F)V
    .locals 2

    .line 1
    iget v0, p0, Lac;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lac;->j()F

    move-result v0

    invoke-virtual {p0}, Lac;->i()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcc;->b(FFF)F

    move-result p1

    iput p1, p0, Lac;->g:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lac;->f:J

    .line 4
    invoke-virtual {p0}, Lwb;->e()V

    return-void
.end method

.method public u(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 1
    iget-object v0, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()F

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Lac;->k:Lcom/airbnb/lottie/e;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->f()F

    move-result v1

    .line 3
    :goto_1
    invoke-static {p1, v0, v1}, Lcc;->b(FFF)F

    move-result v2

    iput v2, p0, Lac;->i:F

    .line 4
    invoke-static {p2, v0, v1}, Lcc;->b(FFF)F

    move-result v0

    iput v0, p0, Lac;->j:F

    .line 5
    iget v0, p0, Lac;->g:F

    invoke-static {v0, p1, p2}, Lcc;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lac;->t(F)V

    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v(F)V
    .locals 0

    .line 1
    iput p1, p0, Lac;->d:F

    return-void
.end method
