.class public Lfa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda0;


# instance fields
.field private final a:Lda0;


# direct methods
.method public constructor <init>(Lda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa0;->a:Lda0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lorg/json/JSONObject;Lda0$a;Z)V
    .locals 9

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lv90;->a()Lv90;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lv90;->e()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu90;

    invoke-virtual {v0}, Lu90;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_4

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 6
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4
    if-lez v5, :cond_8

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    cmpl-float v7, v7, v2

    if-lez v7, :cond_8

    move v5, v6

    goto :goto_4

    .line 8
    :cond_8
    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v0, p0, Lfa0;->a:Lda0;

    move-object v1, p3

    check-cast v1, Lna0;

    invoke-virtual {v1, p4, v0, p2}, Lna0;->c(Landroid/view/View;Lda0;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_a
    return-void
.end method

.method public b(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Lha0;->b(IIII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
