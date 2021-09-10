.class public Lt6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Z

.field private e:Lcn/dreamtobe/kpswitch/a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lt6;->a:I

    .line 3
    iput-object p1, p0, Lt6;->b:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx6;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lt6;->c:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 6
    invoke-static {p1}, Lu6;->e(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lt6;->d:Z

    return-void
.end method

.method private a(Landroid/view/View;)Lcn/dreamtobe/kpswitch/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lt6;->e:Lcn/dreamtobe/kpswitch/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v0, p1, Lcn/dreamtobe/kpswitch/a;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcn/dreamtobe/kpswitch/a;

    iput-object p1, p0, Lt6;->e:Lcn/dreamtobe/kpswitch/a;

    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 5
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lt6;->a(Landroid/view/View;)Lcn/dreamtobe/kpswitch/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iput-object v1, p0, Lt6;->e:Lcn/dreamtobe/kpswitch/a;

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(II)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-boolean p1, p0, Lt6;->d:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lt6;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object p2, p0, Lt6;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    :cond_0
    if-gez p2, :cond_1

    return-void

    .line 6
    :cond_1
    iget p1, p0, Lt6;->a:I

    if-gez p1, :cond_2

    .line 7
    iput p2, p0, Lt6;->a:I

    return-void

    :cond_2
    sub-int/2addr p1, p2

    if-nez p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lt6;->c:I

    const-string v2, "KPSRootLayoutHandler"

    if-ne v0, v1, :cond_4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "offset just equal statusBar height %d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_4
    iput p2, p0, Lt6;->a:I

    .line 11
    iget-object p2, p0, Lt6;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lt6;->a(Landroid/view/View;)Lcn/dreamtobe/kpswitch/a;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p1, "can\'t find the valid panel conflict layout, give up!"

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 13
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lt6;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lw6;->d(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_6

    const-string p1, "system bottom-menu-bar(such as HuaWei Mate7) causes layout changed"

    .line 14
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-lez p1, :cond_7

    .line 15
    invoke-interface {p2}, Lcn/dreamtobe/kpswitch/a;->c()V

    goto :goto_0

    .line 16
    :cond_7
    invoke-interface {p2}, Lcn/dreamtobe/kpswitch/a;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    invoke-interface {p2}, Lcn/dreamtobe/kpswitch/a;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    invoke-interface {p2}, Lcn/dreamtobe/kpswitch/a;->e()V

    :cond_8
    :goto_0
    return-void
.end method
