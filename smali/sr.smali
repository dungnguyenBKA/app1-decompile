.class public abstract Lsr;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "TVH;>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lur;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private final i:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput p1, p0, Lsr;->k:I

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lsr;->c:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lsr;->d:Z

    .line 4
    iput-boolean p1, p0, Lsr;->e:Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lsr;->f:I

    .line 6
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lsr;->i:Ljava/util/LinkedHashSet;

    .line 7
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lsr;->j:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method protected A(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 2
    const-class v2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 3
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 4
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const-string v5, "type.actualTypeArguments"

    invoke-static {v4, v5}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    .line 6
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_0

    .line 7
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    check-cast v6, Ljava/lang/Class;

    goto :goto_2

    .line 9
    :cond_0
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_1

    .line 10
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-string v7, "temp.rawType"

    invoke-static {v6, v7}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12
    check-cast v6, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/TypeNotPresentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/MalformedParameterizedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, v6

    goto :goto_4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/reflect/MalformedParameterizedTypeException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/TypeNotPresentException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/reflect/GenericSignatureFormatError;->printStackTrace()V

    :cond_2
    :goto_3
    move-object v2, v1

    .line 16
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 17
    new-instance v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_7

    .line 18
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    const-string v4, "null cannot be cast to non-null type VH"

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Class;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v6, "z.getDeclaredConstructor\u2026aClass, View::class.java)"

    invoke-static {v2, v6}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v5

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_5

    :cond_5
    new-instance v0, Lbg0;

    invoke-direct {v0, v4}, Lbg0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v0, v5, [Ljava/lang/Class;

    .line 22
    const-class v6, Landroid/view/View;

    aput-object v6, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "z.getDeclaredConstructor(View::class.java)"

    invoke-static {v0, v2}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_5
    move-object v1, v0

    goto :goto_6

    :cond_7
    new-instance v0, Lbg0;

    invoke-direct {v0, v4}, Lbg0;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_6
    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_8

    .line 29
    :cond_8
    new-instance v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    :goto_8
    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsr;->c:Ljava/util/List;

    return-object v0
.end method

.method protected C(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public D(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsr;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected E(I)Z
    .locals 1

    const v0, 0x10000555

    if-eq p1, v0, :cond_1

    const v0, 0x10000111

    if-eq p1, v0, :cond_1

    const v0, 0x10000333

    if-eq p1, v0, :cond_1

    const v0, 0x10000222

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 p2, p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Lsr;->D(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsr;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_0
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_0
        0x10000555 -> :sswitch_0
    .end sparse-switch
.end method

.method protected G(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lsr;->k:I

    .line 2
    invoke-static {p1, p2}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Landroidx/core/app/b;->M(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsr;->A(Landroid/view/View;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsr;->c:Ljava/util/List;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lsr;->c:Ljava/util/List;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lsr;->f:I

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    :goto_1
    return-void
.end method

.method protected I(Landroid/view/View;I)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lsr;->g:Lur;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lur;->a(Lsr;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public J(Lur;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsr;->g:Lur;

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lsr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public c(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lsr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lsr;->C(I)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    if-gez p1, :cond_1

    const p1, 0x10000333

    goto :goto_0

    :cond_1
    const p1, 0x10000222

    :goto_0
    return p1
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lsr;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "recyclerView.context"

    invoke-static {v0, v1}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->e2()Landroidx/recyclerview/widget/GridLayoutManager$b;

    move-result-object v1

    .line 7
    new-instance v2, Lsr$a;

    invoke-direct {v2, p0, p1, v1}, Lsr$a;-><init>(Lsr;Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->i2(Landroidx/recyclerview/widget/GridLayoutManager$b;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lsr;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payloads"

    invoke-static {p3, v1}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lsr;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    add-int/lit8 p2, p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Lsr;->D(I)Ljava/lang/Object;

    .line 7
    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_0
        0x10000222 -> :sswitch_0
        0x10000333 -> :sswitch_0
        0x10000555 -> :sswitch_0
    .end sparse-switch
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lsr;->G(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    goto :goto_0

    :sswitch_0
    const-string p1, "mEmptyLayout"

    .line 3
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    const-string p1, "mFooterLayout"

    .line 4
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v0

    .line 5
    :sswitch_2
    invoke-static {}, Lgg0;->i()V

    throw v0

    :sswitch_3
    const-string p1, "mHeaderLayout"

    .line 6
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v0

    :goto_0
    const-string p2, "viewHolder"

    .line 7
    invoke-static {p1, p2}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lsr;->g:Lur;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lqr;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lqr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_0
    invoke-static {p1, p2}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x10000111 -> :sswitch_3
        0x10000222 -> :sswitch_2
        0x10000333 -> :sswitch_1
        0x10000555 -> :sswitch_0
    .end sparse-switch
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lsr;->h:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getItemViewType()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lsr;->E(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1, v0}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->d(Z)V

    :cond_0
    return-void
.end method

.method protected abstract z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;TT;)V"
        }
    .end annotation
.end method
