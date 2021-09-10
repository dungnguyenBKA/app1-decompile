.class public Lqx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Landroid/animation/TimeInterpolator;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lqx;->a:J

    const-wide/16 v0, 0x12c

    .line 3
    iput-wide v0, p0, Lqx;->b:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lqx;->c:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lqx;->d:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lqx;->e:I

    .line 7
    iput-wide p1, p0, Lqx;->a:J

    .line 8
    iput-wide p3, p0, Lqx;->b:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lqx;->a:J

    const-wide/16 v0, 0x12c

    .line 11
    iput-wide v0, p0, Lqx;->b:J

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lqx;->c:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lqx;->d:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lqx;->e:I

    .line 15
    iput-wide p1, p0, Lqx;->a:J

    .line 16
    iput-wide p3, p0, Lqx;->b:J

    .line 17
    iput-object p5, p0, Lqx;->c:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static b(Landroid/animation/ValueAnimator;)Lqx;
    .locals 7

    .line 1
    new-instance v6, Lqx;

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    .line 3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 4
    instance-of v5, v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    if-nez v5, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v5, v0, Landroid/view/animation/AccelerateInterpolator;

    if-eqz v5, :cond_1

    .line 6
    sget-object v0, Ljx;->c:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 7
    :cond_1
    instance-of v5, v0, Landroid/view/animation/DecelerateInterpolator;

    if-eqz v5, :cond_3

    .line 8
    sget-object v0, Ljx;->d:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object v0, Ljx;->b:Landroid/animation/TimeInterpolator;

    :cond_3
    :goto_1
    move-object v5, v0

    move-object v0, v6

    .line 10
    invoke-direct/range {v0 .. v5}, Lqx;-><init>(JJLandroid/animation/TimeInterpolator;)V

    .line 11
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    iput v0, v6, Lqx;->d:I

    .line 12
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    iput p0, v6, Lqx;->e:I

    return-object v6
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->a:J

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3
    iget-wide v0, p0, Lqx;->b:J

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 5
    invoke-virtual {p0}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 8
    iget v0, p0, Lqx;->d:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    iget v0, p0, Lqx;->e:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lqx;->b:J

    return-wide v0
.end method

.method public e()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lqx;->c:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljx;->b:Landroid/animation/TimeInterpolator;

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lqx;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lqx;

    .line 3
    iget-wide v2, p0, Lqx;->a:J

    iget-wide v4, p1, Lqx;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lqx;->b:J

    iget-wide v4, p1, Lqx;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget v0, p0, Lqx;->d:I

    iget v2, p1, Lqx;->d:I

    if-eq v0, v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v0, p0, Lqx;->e:I

    iget v2, p1, Lqx;->e:I

    if-eq v0, v2, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-virtual {p0}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lqx;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lqx;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    invoke-virtual {p0}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lqx;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lqx;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    const-class v1, Lqx;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delay: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-wide v1, p0, Lqx;->a:J

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v1, p0, Lqx;->b:J

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " interpolator: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " repeatCount: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget v1, p0, Lqx;->d:I

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatMode: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lqx;->e:I

    const-string v2, "}\n"

    .line 19
    invoke-static {v0, v1, v2}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
