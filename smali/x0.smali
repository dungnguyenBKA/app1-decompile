.class public Lx0;
.super Lz0;
.source "SourceFile"


# instance fields
.field c:Lq0;

.field d:Lx0;

.field e:F

.field f:Lx0;

.field g:F

.field h:I

.field private i:Lx0;

.field private j:Ly0;

.field private k:I

.field private l:Ly0;

.field private m:I


# direct methods
.method public constructor <init>(Lq0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lz0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx0;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lx0;->j:Ly0;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lx0;->k:I

    .line 5
    iput-object v0, p0, Lx0;->l:Ly0;

    .line 6
    iput v1, p0, Lx0;->m:I

    .line 7
    iput-object p1, p0, Lx0;->c:Lq0;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 9

    .line 1
    iget v0, p0, Lz0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lx0;->h:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lx0;->j:Ly0;

    if-eqz v2, :cond_3

    .line 4
    iget v3, v2, Lz0;->b:I

    if-eq v3, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v3, p0, Lx0;->k:I

    int-to-float v3, v3

    iget v2, v2, Ly0;->c:F

    mul-float v3, v3, v2

    iput v3, p0, Lx0;->e:F

    .line 6
    :cond_3
    iget-object v2, p0, Lx0;->l:Ly0;

    if-eqz v2, :cond_5

    .line 7
    iget v3, v2, Lz0;->b:I

    if-eq v3, v1, :cond_4

    return-void

    .line 8
    :cond_4
    iget v2, v2, Ly0;->c:F

    :cond_5
    if-ne v0, v1, :cond_8

    .line 9
    iget-object v2, p0, Lx0;->d:Lx0;

    if-eqz v2, :cond_6

    iget v3, v2, Lz0;->b:I

    if-ne v3, v1, :cond_8

    :cond_6
    if-nez v2, :cond_7

    .line 10
    iput-object p0, p0, Lx0;->f:Lx0;

    .line 11
    iget v0, p0, Lx0;->e:F

    iput v0, p0, Lx0;->g:F

    goto :goto_0

    .line 12
    :cond_7
    iget-object v0, v2, Lx0;->f:Lx0;

    iput-object v0, p0, Lx0;->f:Lx0;

    .line 13
    iget v0, v2, Lx0;->g:F

    iget v1, p0, Lx0;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lx0;->g:F

    .line 14
    :goto_0
    invoke-virtual {p0}, Lz0;->a()V

    goto/16 :goto_7

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 15
    iget-object v2, p0, Lx0;->d:Lx0;

    if-eqz v2, :cond_10

    iget v3, v2, Lz0;->b:I

    if-ne v3, v1, :cond_10

    iget-object v3, p0, Lx0;->i:Lx0;

    if-eqz v3, :cond_10

    iget-object v4, v3, Lx0;->d:Lx0;

    if-eqz v4, :cond_10

    iget v5, v4, Lz0;->b:I

    if-ne v5, v1, :cond_10

    .line 16
    iget-object v0, v2, Lx0;->f:Lx0;

    iput-object v0, p0, Lx0;->f:Lx0;

    .line 17
    iget-object v0, v4, Lx0;->f:Lx0;

    iput-object v0, v3, Lx0;->f:Lx0;

    .line 18
    iget-object v0, p0, Lx0;->c:Lq0;

    iget-object v3, v0, Lq0;->c:Lq0$b;

    sget-object v5, Lq0$b;->e:Lq0$b;

    const/4 v6, 0x0

    if-eq v3, v5, :cond_a

    sget-object v7, Lq0$b;->f:Lq0$b;

    if-ne v3, v7, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_1
    if-eqz v1, :cond_b

    .line 19
    iget v2, v2, Lx0;->g:F

    iget v4, v4, Lx0;->g:F

    sub-float/2addr v2, v4

    goto :goto_2

    .line 20
    :cond_b
    iget v4, v4, Lx0;->g:F

    iget v2, v2, Lx0;->g:F

    sub-float v2, v4, v2

    .line 21
    :goto_2
    sget-object v4, Lq0$b;->c:Lq0$b;

    if-eq v3, v4, :cond_d

    if-ne v3, v5, :cond_c

    goto :goto_3

    .line 22
    :cond_c
    iget-object v0, v0, Lq0;->b:Lr0;

    invoke-virtual {v0}, Lr0;->o()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 23
    iget-object v0, p0, Lx0;->c:Lq0;

    iget-object v0, v0, Lq0;->b:Lr0;

    iget v0, v0, Lr0;->W:F

    goto :goto_4

    .line 24
    :cond_d
    :goto_3
    iget-object v0, v0, Lq0;->b:Lr0;

    invoke-virtual {v0}, Lr0;->w()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 25
    iget-object v0, p0, Lx0;->c:Lq0;

    iget-object v0, v0, Lq0;->b:Lr0;

    iget v0, v0, Lr0;->V:F

    .line 26
    :goto_4
    iget-object v3, p0, Lx0;->c:Lq0;

    invoke-virtual {v3}, Lq0;->c()I

    move-result v3

    .line 27
    iget-object v4, p0, Lx0;->i:Lx0;

    iget-object v4, v4, Lx0;->c:Lq0;

    invoke-virtual {v4}, Lq0;->c()I

    move-result v4

    .line 28
    iget-object v5, p0, Lx0;->c:Lq0;

    .line 29
    iget-object v5, v5, Lq0;->d:Lq0;

    .line 30
    iget-object v7, p0, Lx0;->i:Lx0;

    iget-object v8, v7, Lx0;->c:Lq0;

    .line 31
    iget-object v8, v8, Lq0;->d:Lq0;

    if-ne v5, v8, :cond_e

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    goto :goto_5

    :cond_e
    move v6, v3

    :goto_5
    int-to-float v3, v6

    sub-float/2addr v2, v3

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    .line 32
    iget-object v1, v7, Lx0;->d:Lx0;

    iget v1, v1, Lx0;->g:F

    add-float/2addr v1, v4

    mul-float v4, v2, v0

    add-float/2addr v4, v1

    iput v4, v7, Lx0;->g:F

    .line 33
    iget-object v1, p0, Lx0;->d:Lx0;

    iget v1, v1, Lx0;->g:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v0

    mul-float v5, v5, v2

    sub-float/2addr v1, v5

    iput v1, p0, Lx0;->g:F

    goto :goto_6

    .line 34
    :cond_f
    iget-object v1, p0, Lx0;->d:Lx0;

    iget v1, v1, Lx0;->g:F

    add-float/2addr v1, v3

    mul-float v3, v2, v0

    add-float/2addr v3, v1

    iput v3, p0, Lx0;->g:F

    .line 35
    iget-object v1, v7, Lx0;->d:Lx0;

    iget v1, v1, Lx0;->g:F

    sub-float/2addr v1, v4

    sub-float/2addr v5, v0

    mul-float v5, v5, v2

    sub-float/2addr v1, v5

    iput v1, v7, Lx0;->g:F

    .line 36
    :goto_6
    invoke-virtual {p0}, Lz0;->a()V

    .line 37
    iget-object v0, p0, Lx0;->i:Lx0;

    invoke-virtual {v0}, Lz0;->a()V

    goto :goto_7

    :cond_10
    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    .line 38
    iget-object v2, p0, Lx0;->d:Lx0;

    if-eqz v2, :cond_11

    iget v3, v2, Lz0;->b:I

    if-ne v3, v1, :cond_11

    iget-object v3, p0, Lx0;->i:Lx0;

    if-eqz v3, :cond_11

    iget-object v4, v3, Lx0;->d:Lx0;

    if-eqz v4, :cond_11

    iget v5, v4, Lz0;->b:I

    if-ne v5, v1, :cond_11

    .line 39
    iget-object v0, v2, Lx0;->f:Lx0;

    iput-object v0, p0, Lx0;->f:Lx0;

    .line 40
    iget-object v0, v4, Lx0;->f:Lx0;

    iput-object v0, v3, Lx0;->f:Lx0;

    .line 41
    iget v0, v2, Lx0;->g:F

    iget v1, p0, Lx0;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lx0;->g:F

    .line 42
    iget v0, v4, Lx0;->g:F

    iget v1, v3, Lx0;->e:F

    add-float/2addr v0, v1

    iput v0, v3, Lx0;->g:F

    .line 43
    invoke-virtual {p0}, Lz0;->a()V

    .line 44
    iget-object v0, p0, Lx0;->i:Lx0;

    invoke-virtual {v0}, Lz0;->a()V

    goto :goto_7

    :cond_11
    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 45
    iget-object v0, p0, Lx0;->c:Lq0;

    iget-object v0, v0, Lq0;->b:Lr0;

    invoke-virtual {v0}, Lr0;->H()V

    :cond_12
    :goto_7
    return-void
.end method

.method e(Lk0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx0;->c:Lq0;

    .line 2
    iget-object v0, v0, Lq0;->i:Lm0;

    .line 3
    iget-object v1, p0, Lx0;->f:Lx0;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 4
    iget v1, p0, Lx0;->g:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lk0;->e(Lm0;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, Lx0;->c:Lq0;

    invoke-virtual {p1, v1}, Lk0;->l(Ljava/lang/Object;)Lm0;

    move-result-object v1

    .line 6
    iget v3, p0, Lx0;->g:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lk0;->d(Lm0;Lm0;II)Lh0;

    :goto_0
    return-void
.end method

.method public f(ILx0;I)V
    .locals 0

    .line 1
    iput p1, p0, Lx0;->h:I

    .line 2
    iput-object p2, p0, Lx0;->d:Lx0;

    int-to-float p1, p3

    .line 3
    iput p1, p0, Lx0;->e:F

    .line 4
    iget-object p1, p2, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lx0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0;->d:Lx0;

    int-to-float p2, p2

    .line 2
    iput p2, p0, Lx0;->e:F

    .line 3
    iget-object p1, p1, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lx0;ILy0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0;->d:Lx0;

    .line 2
    iget-object p1, p1, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    iput-object p3, p0, Lx0;->j:Ly0;

    .line 4
    iput p2, p0, Lx0;->k:I

    .line 5
    iget-object p1, p3, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lx0;->g:F

    return v0
.end method

.method public j()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lz0;->b:I

    .line 2
    iget-object v1, p0, Lz0;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lx0;->d:Lx0;

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lx0;->e:F

    .line 5
    iput-object v1, p0, Lx0;->j:Ly0;

    const/4 v3, 0x1

    .line 6
    iput v3, p0, Lx0;->k:I

    .line 7
    iput-object v1, p0, Lx0;->l:Ly0;

    .line 8
    iput v3, p0, Lx0;->m:I

    .line 9
    iput-object v1, p0, Lx0;->f:Lx0;

    .line 10
    iput v2, p0, Lx0;->g:F

    .line 11
    iput-object v1, p0, Lx0;->i:Lx0;

    .line 12
    iput v0, p0, Lx0;->h:I

    return-void
.end method

.method public k(Lx0;F)V
    .locals 2

    .line 1
    iget v0, p0, Lz0;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lx0;->f:Lx0;

    if-eq v1, p1, :cond_2

    iget v1, p0, Lx0;->g:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_2

    .line 2
    :cond_0
    iput-object p1, p0, Lx0;->f:Lx0;

    .line 3
    iput p2, p0, Lx0;->g:F

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lz0;->b()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lz0;->a()V

    :cond_2
    return-void
.end method

.method l(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public m(Lx0;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0;->i:Lx0;

    return-void
.end method

.method public n(Lx0;ILy0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0;->i:Lx0;

    .line 2
    iput-object p3, p0, Lx0;->l:Ly0;

    .line 3
    iput p2, p0, Lx0;->m:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lz0;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lx0;->f:Lx0;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 3
    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lx0;->c:Lq0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx0;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx0;->h:I

    invoke-virtual {p0, v1}, Lx0;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lx0;->c:Lq0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx0;->f:Lx0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx0;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx0;->h:I

    .line 5
    invoke-virtual {p0, v1}, Lx0;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "{ "

    .line 6
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx0;->c:Lq0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx0;->h:I

    invoke-virtual {p0, v1}, Lx0;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
