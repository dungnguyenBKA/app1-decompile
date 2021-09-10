.class public Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/airbnb/lottie/p;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm8;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr8;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0<",
            "Ln8;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Lca;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lca;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Rect;

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/airbnb/lottie/p;

    invoke-direct {v0}, Lcom/airbnb/lottie/p;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->a:Lcom/airbnb/lottie/p;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/e;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/airbnb/lottie/e;->o:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lzb;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/e;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()Lf0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf0<",
            "Ln8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->g:Lf0;

    return-object v0
.end method

.method public d()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/e;->e()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/e;->m:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public e()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->l:F

    iget v1, p0, Lcom/airbnb/lottie/e;->k:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->l:F

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->m:F

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->d:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lca;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->o:I

    return v0
.end method

.method public l()Lcom/airbnb/lottie/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->a:Lcom/airbnb/lottie/p;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lca;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->k:F

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/e;->n:Z

    return v0
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/e;->o:I

    return-void
.end method

.method public q(Landroid/graphics/Rect;FFFLjava/util/List;Lb0;Ljava/util/Map;Ljava/util/Map;Lf0;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lca;",
            ">;",
            "Lb0<",
            "Lca;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lca;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/h;",
            ">;",
            "Lf0<",
            "Ln8;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm8;",
            ">;",
            "Ljava/util/List<",
            "Lr8;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/e;->j:Landroid/graphics/Rect;

    .line 2
    iput p2, p0, Lcom/airbnb/lottie/e;->k:F

    .line 3
    iput p3, p0, Lcom/airbnb/lottie/e;->l:F

    .line 4
    iput p4, p0, Lcom/airbnb/lottie/e;->m:F

    .line 5
    iput-object p5, p0, Lcom/airbnb/lottie/e;->i:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lcom/airbnb/lottie/e;->h:Lb0;

    .line 7
    iput-object p7, p0, Lcom/airbnb/lottie/e;->c:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lcom/airbnb/lottie/e;->d:Ljava/util/Map;

    .line 9
    iput-object p9, p0, Lcom/airbnb/lottie/e;->g:Lf0;

    .line 10
    iput-object p10, p0, Lcom/airbnb/lottie/e;->e:Ljava/util/Map;

    .line 11
    iput-object p11, p0, Lcom/airbnb/lottie/e;->f:Ljava/util/List;

    return-void
.end method

.method public r(J)Lca;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->h:Lb0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lb0;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lca;

    return-object p1
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/e;->n:Z

    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/e;->a:Lcom/airbnb/lottie/p;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/p;->b(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lca;

    const-string v3, "\t"

    .line 3
    invoke-virtual {v2, v3}, Lca;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
