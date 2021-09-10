.class public Lc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7;
.implements Ll7;
.implements Ls7$b;
.implements Lp8;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/RectF;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb7;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/airbnb/lottie/g;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll7;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lg8;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lz9;Ljava/lang/String;ZLjava/util/List;Le9;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g;",
            "Lz9;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Le9;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ly6;

    invoke-direct {v0}, Ly6;-><init>()V

    iput-object v0, p0, Lc7;->a:Landroid/graphics/Paint;

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc7;->b:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc7;->d:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc7;->e:Landroid/graphics/RectF;

    .line 19
    iput-object p3, p0, Lc7;->f:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lc7;->i:Lcom/airbnb/lottie/g;

    .line 21
    iput-boolean p4, p0, Lc7;->g:Z

    .line 22
    iput-object p5, p0, Lc7;->h:Ljava/util/List;

    if-eqz p6, :cond_0

    .line 23
    new-instance p1, Lg8;

    invoke-direct {p1, p6}, Lg8;-><init>(Le9;)V

    .line 24
    iput-object p1, p0, Lc7;->k:Lg8;

    .line 25
    invoke-virtual {p1, p2}, Lg8;->a(Lz9;)V

    .line 26
    iget-object p1, p0, Lc7;->k:Lg8;

    invoke-virtual {p1, p0}, Lg8;->b(Ls7$b;)V

    .line 27
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    .line 29
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb7;

    .line 30
    instance-of p4, p3, Li7;

    if-eqz p4, :cond_1

    .line 31
    check-cast p3, Li7;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li7;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p5, p4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    invoke-interface {p3, p4}, Li7;->e(Ljava/util/ListIterator;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lu9;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Lu9;->c()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p3}, Lu9;->d()Z

    move-result v4

    invoke-virtual {p3}, Lu9;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li9;

    invoke-interface {v6, p1, p2}, Li9;->a(Lcom/airbnb/lottie/g;Lz9;)Lb7;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p3}, Lu9;->b()Ljava/util/List;

    move-result-object p3

    .line 8
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 9
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9;

    .line 10
    instance-of v2, v0, Le9;

    if-eqz v2, :cond_2

    .line 11
    check-cast v0, Le9;

    move-object v6, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    move-object v6, p3

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lc7;-><init>(Lcom/airbnb/lottie/g;Lz9;Ljava/lang/String;ZLjava/util/List;Le9;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc7;->i:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Ljava/util/List<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 4
    iget-object v0, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 5
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lb7;->b(Ljava/util/List;Ljava/util/List;)V

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lo8;ILjava/util/List;Lo8;)V
    .locals 3
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

    .line 1
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0, p2}, Lo8;->f(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    const-string v1, "__container"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {p4, v0}, Lo8;->a(Ljava/lang/String;)Lo8;

    move-result-object p4

    .line 7
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, p2}, Lo8;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p4, p0}, Lo8;->h(Lp8;)Lo8;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0, p2}, Lo8;->g(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0, p2}, Lo8;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 15
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb7;

    .line 16
    instance-of v2, v1, Lp8;

    if-eqz v2, :cond_2

    .line 17
    check-cast v1, Lp8;

    .line 18
    invoke-interface {v1, p1, v0, p3, p4}, Lp8;->c(Lo8;ILjava/util/List;Lo8;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object p2, p0, Lc7;->k:Lg8;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4
    :cond_0
    iget-object p2, p0, Lc7;->e:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object p2, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    .line 6
    iget-object v0, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 7
    instance-of v1, v0, Ld7;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Ld7;

    iget-object v1, p0, Lc7;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, Ld7;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 9
    iget-object v0, p0, Lc7;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll7;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc7;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb7;

    .line 5
    instance-of v2, v1, Ll7;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lc7;->j:Ljava/util/List;

    check-cast v1, Ll7;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lc7;->j:Ljava/util/List;

    return-object v0
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc7;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lc7;->k:Lg8;

    if-eqz p2, :cond_2

    .line 4
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 5
    iget-object p2, p0, Lc7;->k:Lg8;

    invoke-virtual {p2}, Lg8;->h()Ls7;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lc7;->k:Lg8;

    invoke-virtual {p2}, Lg8;->h()Ls7;

    move-result-object p2

    invoke-virtual {p2}, Ls7;->g()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float p2, p2, p3

    float-to-int p3, p2

    .line 6
    :cond_2
    iget-object p2, p0, Lc7;->i:Lcom/airbnb/lottie/g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    .line 8
    iget-object v0, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ld7;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Ld7;

    iget-object v1, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-interface {v0, p1, v1, p3}, Ld7;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
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
    iget-object v0, p0, Lc7;->k:Lg8;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lg8;->c(Ljava/lang/Object;Lgc;)Z

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc7;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lc7;->k:Lg8;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc7;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-boolean v0, p0, Lc7;->g:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lc7;->d:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 8
    iget-object v1, p0, Lc7;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb7;

    .line 9
    instance-of v2, v1, Ll7;

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lc7;->d:Landroid/graphics/Path;

    check-cast v1, Ll7;

    invoke-interface {v1}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lc7;->d:Landroid/graphics/Path;

    return-object v0
.end method

.method h()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lc7;->k:Lg8;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg8;->f()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Lc7;->c:Landroid/graphics/Matrix;

    return-object v0
.end method
