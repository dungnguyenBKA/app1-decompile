.class public Lpb0;
.super Lnb0;
.source "SourceFile"


# instance fields
.field private c:Lcom/google/ads/ADRequestList;

.field private d:Lxb0;

.field private e:Ltb0;

.field private f:I

.field private g:Lub0$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnb0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lpb0;->f:I

    .line 3
    new-instance v1, Lpb0$a;

    invoke-direct {v1, p0}, Lpb0$a;-><init>(Lpb0;)V

    iput-object v1, p0, Lpb0;->g:Lub0$a;

    .line 4
    iput-boolean p3, p0, Lnb0;->a:Z

    const-string p3, ""

    .line 5
    iput-object p3, p0, Lnb0;->b:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object p3

    instance-of p3, p3, Ltb0;

    if-eqz p3, :cond_2

    .line 8
    iput v0, p0, Lpb0;->f:I

    .line 9
    invoke-virtual {p2}, Lcom/google/ads/ADRequestList;->getADListener()Lsb0;

    move-result-object p3

    check-cast p3, Ltb0;

    iput-object p3, p0, Lpb0;->e:Ltb0;

    .line 10
    iput-object p2, p0, Lpb0;->c:Lcom/google/ads/ADRequestList;

    .line 11
    invoke-static {}, Lic0;->c()Lic0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lic0;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    new-instance p2, Lkb0;

    const-string p3, "Free RAM Low, can\'t load ads."

    invoke-direct {p2, p3}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lpb0;->e:Ltb0;

    if-eqz p3, :cond_1

    .line 14
    invoke-interface {p3, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lpb0;->h()Llb0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lpb0;->i(Landroid/app/Activity;Llb0;)V

    :cond_1
    :goto_0
    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NativeCardAD:requestList.getADListener() type error, please check."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NativeCardAD:requestList.getADListener() == null, please check."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NativeCardAD:ADRequestList == null, please check."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lpb0;)Lxb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb0;->d:Lxb0;

    return-object p0
.end method

.method static synthetic d(Lpb0;)Llb0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lpb0;->h()Llb0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lpb0;Landroid/app/Activity;Llb0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lpb0;->i(Landroid/app/Activity;Llb0;)V

    return-void
.end method

.method static synthetic f(Lpb0;)Ltb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lpb0;->e:Ltb0;

    return-object p0
.end method

.method private h()Llb0;
    .locals 2

    .line 1
    iget-object v0, p0, Lpb0;->c:Lcom/google/ads/ADRequestList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lpb0;->f:I

    iget-object v1, p0, Lpb0;->c:Lcom/google/ads/ADRequestList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lpb0;->c:Lcom/google/ads/ADRequestList;

    iget v1, p0, Lpb0;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb0;

    .line 3
    iget v1, p0, Lpb0;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lpb0;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private i(Landroid/app/Activity;Llb0;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p0, p1}, Lnb0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Llb0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Lpb0;->d:Lxb0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lub0;->a(Landroid/app/Activity;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Llb0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxb0;

    iput-object v0, p0, Lpb0;->d:Lxb0;

    .line 6
    iget-object v1, p0, Lpb0;->g:Lub0$a;

    invoke-virtual {v0, p1, p2, v1}, Lub0;->d(Landroid/app/Activity;Llb0;Lub0$a;)V

    .line 7
    iget-object p2, p0, Lpb0;->d:Lxb0;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2, p1}, Lub0;->i(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    new-instance p2, Lkb0;

    const-string v0, "ad type set error, please check."

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lpb0;->e:Ltb0;

    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    :goto_1
    new-instance p2, Lkb0;

    const-string v0, "load all request, but no ads return"

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lpb0;->e:Ltb0;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0, p1, p2}, Lsb0;->c(Landroid/content/Context;Lkb0;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public g(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0;->d:Lxb0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lub0;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lpb0;->e:Ltb0;

    :cond_0
    return-void
.end method
