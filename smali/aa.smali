.class public Laa;
.super Lz9;
.source "SourceFile"


# instance fields
.field private final A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/Paint;

.field private x:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz9;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lca;Ljava/util/List;Lcom/airbnb/lottie/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g;",
            "Lca;",
            "Ljava/util/List<",
            "Lca;",
            ">;",
            "Lcom/airbnb/lottie/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lz9;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laa;->y:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Laa;->z:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Laa;->A:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Laa;->B:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p2}, Lca;->s()Lu8;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lu8;->a()Ls7;

    move-result-object p2

    iput-object p2, p0, Laa;->x:Ls7;

    .line 8
    invoke-virtual {p0, p2}, Lz9;->i(Ls7;)V

    .line 9
    iget-object p2, p0, Laa;->x:Ls7;

    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Laa;->x:Ls7;

    .line 11
    :goto_0
    new-instance p2, Lb0;

    .line 12
    invoke-virtual {p4}, Lcom/airbnb/lottie/e;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Lb0;-><init>(I)V

    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    if-ltz v1, :cond_a

    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca;

    .line 15
    invoke-virtual {v5}, Lca;->d()Lca$a;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eq v6, v2, :cond_5

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    const-string v6, "Unknown layer type "

    .line 16
    invoke-static {v6}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lca;->d()Lca$a;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzb;->b(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_2

    .line 17
    :cond_1
    new-instance v6, Lga;

    invoke-direct {v6, p1, v5}, Lga;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    goto :goto_2

    .line 18
    :cond_2
    new-instance v6, Lea;

    invoke-direct {v6, p1, v5}, Lea;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    goto :goto_2

    .line 19
    :cond_3
    new-instance v6, Lda;

    invoke-direct {v6, p1, v5}, Lda;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    goto :goto_2

    .line 20
    :cond_4
    new-instance v6, Lba;

    invoke-direct {v6, p1, v5}, Lba;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    goto :goto_2

    .line 21
    :cond_5
    new-instance v6, Lfa;

    invoke-direct {v6, p1, v5}, Lfa;-><init>(Lcom/airbnb/lottie/g;Lca;)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v6, Laa;

    .line 23
    invoke-virtual {v5}, Lca;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p4, v8}, Lcom/airbnb/lottie/e;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, p1, v5, v8, p4}, Laa;-><init>(Lcom/airbnb/lottie/g;Lca;Ljava/util/List;Lcom/airbnb/lottie/e;)V

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    iget-object v8, v6, Lz9;->o:Lca;

    .line 25
    invoke-virtual {v8}, Lca;->b()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9, v6}, Lb0;->k(JLjava/lang/Object;)V

    if-eqz v3, :cond_8

    .line 26
    invoke-virtual {v3, v6}, Lz9;->q(Lz9;)V

    move-object v3, v0

    goto :goto_3

    .line 27
    :cond_8
    iget-object v8, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v8, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {v5}, Lca;->f()Lca$b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v2, :cond_9

    if-eq v4, v7, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v6

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 29
    :cond_a
    :goto_4
    invoke-virtual {p2}, Lb0;->m()I

    move-result p1

    if-ge v4, p1, :cond_d

    .line 30
    invoke-virtual {p2, v4}, Lb0;->j(I)J

    move-result-wide p3

    .line 31
    invoke-virtual {p2, p3, p4}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz9;

    if-nez p1, :cond_b

    goto :goto_5

    .line 32
    :cond_b
    iget-object p3, p1, Lz9;->o:Lca;

    .line 33
    invoke-virtual {p3}, Lca;->h()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz9;

    if-eqz p3, :cond_c

    .line 34
    invoke-virtual {p1, p3}, Lz9;->r(Lz9;)V

    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Laa;->y:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, Laa;->z:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz9;

    iget-object v1, p0, Laa;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lz9;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, p3}, Lz9;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 5
    iget-object v0, p0, Laa;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz9;->v:Lg8;

    invoke-virtual {v0, p1, p2}, Lg8;->c(Ljava/lang/Object;Lgc;)Z

    .line 2
    sget-object v0, Lcom/airbnb/lottie/l;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Laa;->x:Ls7;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lh8;

    .line 6
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Laa;->x:Ls7;

    .line 8
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 9
    iget-object p1, p0, Laa;->x:Ls7;

    invoke-virtual {p0, p1}, Lz9;->i(Ls7;)V

    :cond_1
    :goto_0
    return-void
.end method

.method l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Laa;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lz9;->o:Lca;

    invoke-virtual {v1}, Lca;->j()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lz9;->o:Lca;

    invoke-virtual {v2}, Lca;->i()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Laa;->A:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3
    iget-object v0, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 6
    iget-object v2, p0, Laa;->A:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Laa;->A:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz9;

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lz9;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p1, "CompositionLayer#draw"

    .line 11
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method protected p(Lo8;ILjava/util/List;Lo8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo8;",
            "I",
            "Ljava/util/List<",
            "Lo8;",
            ">;",
            "Lo8;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9;

    invoke-virtual {v1, p1, p2, p3, p4}, Lz9;->c(Lo8;ILjava/util/List;Lo8;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lz9;->s(F)V

    .line 2
    iget-object v0, p0, Laa;->x:Ls7;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lz9;->n:Lcom/airbnb/lottie/g;

    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->l()Lcom/airbnb/lottie/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->e()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    .line 4
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->a()Lcom/airbnb/lottie/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()F

    move-result v0

    .line 5
    iget-object v1, p0, Laa;->x:Ls7;

    invoke-virtual {v1}, Ls7;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lz9;->o:Lca;

    invoke-virtual {v2}, Lca;->a()Lcom/airbnb/lottie/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->h()F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v2, v0

    div-float p1, v2, p1

    .line 6
    :cond_0
    iget-object v0, p0, Laa;->x:Ls7;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->p()F

    move-result v0

    sub-float/2addr p1, v0

    .line 8
    :cond_1
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->t()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lz9;->o:Lca;

    invoke-virtual {v0}, Lca;->t()F

    move-result v0

    div-float/2addr p1, v0

    .line 10
    :cond_2
    iget-object v0, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 11
    iget-object v1, p0, Laa;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9;

    invoke-virtual {v1, p1}, Lz9;->s(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
