.class public Lp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7;
.implements Ls7$b;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Z

.field private final c:Lcom/airbnb/lottie/g;

.field private final d:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:La7;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lv9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, La7;

    invoke-direct {v0}, La7;-><init>()V

    iput-object v0, p0, Lp7;->f:La7;

    .line 4
    invoke-virtual {p3}, Lv9;->c()Z

    move-result v0

    iput-boolean v0, p0, Lp7;->b:Z

    .line 5
    iput-object p1, p0, Lp7;->c:Lcom/airbnb/lottie/g;

    .line 6
    invoke-virtual {p3}, Lv9;->b()La9;

    move-result-object p1

    invoke-virtual {p1}, La9;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lp7;->d:Ls7;

    .line 7
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 8
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lp7;->e:Z

    .line 2
    iget-object v0, p0, Lp7;->c:Lcom/airbnb/lottie/g;

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

    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 3
    instance-of v1, v0, Lr7;

    if-eqz v1, :cond_0

    check-cast v0, Lr7;

    .line 4
    invoke-virtual {v0}, Lr7;->i()Lx9$a;

    move-result-object v1

    sget-object v2, Lx9$a;->b:Lx9$a;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lp7;->f:La7;

    invoke-virtual {v1, v0}, La7;->a(Lr7;)V

    .line 6
    invoke-virtual {v0, p0}, Lr7;->c(Ls7$b;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp7;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, Lp7;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lp7;->e:Z

    .line 6
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lp7;->d:Ls7;

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 8
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 9
    iget-object v0, p0, Lp7;->f:La7;

    iget-object v2, p0, Lp7;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, La7;->b(Landroid/graphics/Path;)V

    .line 10
    iput-boolean v1, p0, Lp7;->e:Z

    .line 11
    iget-object v0, p0, Lp7;->a:Landroid/graphics/Path;

    return-object v0
.end method
