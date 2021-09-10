.class public Lmb0;
.super Lnb0;
.source "SourceFile"


# instance fields
.field private c:Lcom/google/ads/ADRequestList;

.field private d:Lvb0;

.field private e:Lvb0;

.field private f:Lqb0;

.field private g:I

.field private h:Landroid/view/View;

.field private i:Lub0$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnb0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmb0;->g:I

    .line 3
    new-instance v1, Lmb0$a;

    invoke-direct {v1, p0}, Lmb0$a;-><init>(Lmb0;)V

    iput-object v1, p0, Lmb0;->i:Lub0$a;

    .line 4
    iput-boolean v0, p0, Lnb0;->a:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lnb0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object v1

    instance-of v1, v1, Lqb0;

    if-eqz v1, :cond_2

    .line 8
    iput v0, p0, Lmb0;->g:I

    .line 9
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object v0

    check-cast v0, Lqb0;

    iput-object v0, p0, Lmb0;->f:Lqb0;

    .line 10
    iput-object p2, p0, Lmb0;->c:Lcom/google/ads/ADRequestList;

    .line 11
    invoke-static {}, Lic0;->c()Lic0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lic0;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    new-instance p2, Lkb0;

    const-string v0, "Free RAM Low, can\'t load ads."

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lmb0;->f:Lqb0;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lmb0;->k()Llb0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmb0;->l(Landroid/app/Activity;Llb0;)V

    :cond_1
    :goto_0
    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BannerAD:requestList.getADListener() type error, please check."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BannerAD:requestList.getADListener() == null, please check."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lmb0;)Lvb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmb0;->e:Lvb0;

    return-object p0
.end method

.method static synthetic d(Lmb0;Landroid/app/Activity;Llb0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmb0;->l(Landroid/app/Activity;Llb0;)V

    return-void
.end method

.method static synthetic e(Lmb0;)Lqb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmb0;->f:Lqb0;

    return-object p0
.end method

.method static synthetic f(Lmb0;)Lvb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmb0;->d:Lvb0;

    return-object p0
.end method

.method static synthetic g(Lmb0;Lvb0;)Lvb0;
    .locals 0

    .line 1
    iput-object p1, p0, Lmb0;->d:Lvb0;

    return-object p1
.end method

.method static synthetic h(Lmb0;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmb0;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lmb0;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lmb0;->h:Landroid/view/View;

    return-object p1
.end method

.method private l(Landroid/app/Activity;Llb0;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Lnb0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Llb0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Llb0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvb0;

    iput-object v0, p0, Lmb0;->e:Lvb0;

    .line 4
    iget-object v1, p0, Lmb0;->i:Lub0$a;

    invoke-virtual {v0, p1, p2, v1}, Lub0;->d(Landroid/app/Activity;Llb0;Lub0$a;)V

    .line 5
    iget-object p2, p0, Lmb0;->e:Lvb0;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lub0;->i(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    new-instance p2, Lkb0;

    const-string v0, "ad type set error, please check."

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lmb0;->f:Lqb0;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    :cond_1
    :goto_0
    return-void

    .line 11
    :cond_2
    :goto_1
    new-instance p2, Lkb0;

    const-string v0, "load all request, but no ads return"

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lmb0;->f:Lqb0;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public j(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->d:Lvb0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lub0;->a(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lmb0;->e:Lvb0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lub0;->a(Landroid/app/Activity;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmb0;->f:Lqb0;

    return-void
.end method

.method public k()Llb0;
    .locals 2

    .line 1
    iget-object v0, p0, Lmb0;->c:Lcom/google/ads/ADRequestList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lmb0;->g:I

    iget-object v1, p0, Lmb0;->c:Lcom/google/ads/ADRequestList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmb0;->c:Lcom/google/ads/ADRequestList;

    iget v1, p0, Lmb0;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb0;

    .line 3
    iget v1, p0, Lmb0;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmb0;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->d:Lvb0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lvb0;->j()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->d:Lvb0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lvb0;->k()V

    :cond_0
    return-void
.end method
