.class public abstract Ls7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls7$e;,
        Ls7$f;,
        Ls7$c;,
        Ls7$d;,
        Ls7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls7$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ls7$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7$d<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected d:F

.field protected e:Lgc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgc<",
            "TA;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private g:F

.field private h:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lec<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ls7;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls7;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ls7;->d:F

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ls7;->f:Ljava/lang/Object;

    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    iput v2, p0, Ls7;->g:F

    .line 7
    iput v2, p0, Ls7;->h:F

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance p1, Ls7$c;

    invoke-direct {p1, v0}, Ls7$c;-><init>(Ls7$a;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 11
    new-instance v0, Ls7$f;

    invoke-direct {v0, p1}, Ls7$f;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ls7$e;

    invoke-direct {v0, p1}, Ls7$e;-><init>(Ljava/util/List;)V

    :goto_0
    move-object p1, v0

    .line 13
    :goto_1
    iput-object p1, p0, Ls7;->c:Ls7$d;

    return-void
.end method


# virtual methods
.method public a(Ls7$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls7;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()Lec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lec<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls7;->c:Ls7$d;

    invoke-interface {v0}, Ls7$d;->b()Lec;

    move-result-object v0

    const-string v1, "BaseKeyframeAnimation#getCurrentKeyframe"

    .line 2
    invoke-static {v1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-object v0
.end method

.method c()F
    .locals 2

    .line 1
    iget v0, p0, Ls7;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls7;->c:Ls7$d;

    invoke-interface {v0}, Ls7$d;->d()F

    move-result v0

    iput v0, p0, Ls7;->h:F

    .line 3
    :cond_0
    iget v0, p0, Ls7;->h:F

    return v0
.end method

.method protected d()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls7;->b()Lec;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lec;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lec;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ls7;->e()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method e()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls7;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls7;->b()Lec;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lec;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget v1, p0, Ls7;->d:F

    invoke-virtual {v0}, Lec;->e()F

    move-result v2

    sub-float/2addr v1, v2

    .line 5
    invoke-virtual {v0}, Lec;->b()F

    move-result v2

    invoke-virtual {v0}, Lec;->e()F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Ls7;->d:F

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls7;->d()F

    move-result v0

    .line 2
    iget-object v1, p0, Ls7;->e:Lgc;

    if-nez v1, :cond_0

    iget-object v1, p0, Ls7;->c:Ls7$d;

    invoke-interface {v1, v0}, Ls7$d;->a(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Ls7;->f:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ls7;->b()Lec;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1, v0}, Ls7;->h(Lec;F)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, Ls7;->f:Ljava/lang/Object;

    return-object v0
.end method

.method abstract h(Lec;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ls7;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ls7;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls7$b;

    invoke-interface {v1}, Ls7$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ls7;->b:Z

    return-void
.end method

.method public k(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls7;->c:Ls7$d;

    invoke-interface {v0}, Ls7$d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ls7;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ls7;->c:Ls7$d;

    invoke-interface {v0}, Ls7$d;->e()F

    move-result v0

    iput v0, p0, Ls7;->g:F

    .line 4
    :cond_1
    iget v0, p0, Ls7;->g:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_3

    cmpl-float p1, v0, v1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Ls7;->c:Ls7$d;

    invoke-interface {p1}, Ls7$d;->e()F

    move-result p1

    iput p1, p0, Ls7;->g:F

    .line 6
    :cond_2
    iget p1, p0, Ls7;->g:F

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ls7;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Ls7;->c()F

    move-result p1

    .line 9
    :cond_4
    :goto_0
    iget v0, p0, Ls7;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    return-void

    .line 10
    :cond_5
    iput p1, p0, Ls7;->d:F

    .line 11
    iget-object v0, p0, Ls7;->c:Ls7$d;

    invoke-interface {v0, p1}, Ls7$d;->c(F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Ls7;->i()V

    :cond_6
    return-void
.end method

.method public l(Lgc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc<",
            "TA;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls7;->e:Lgc;

    .line 2
    iput-object p1, p0, Ls7;->e:Lgc;

    return-void
.end method
