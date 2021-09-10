.class Landroidx/recyclerview/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/d0$a;,
        Landroidx/recyclerview/widget/d0$b;
    }
.end annotation


# instance fields
.field final a:Le0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "Landroidx/recyclerview/widget/d0$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le0;

    invoke-direct {v0}, Le0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    .line 3
    new-instance v0, Lb0;

    const/16 v1, 0xa

    .line 4
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 5
    iput-object v0, p0, Landroidx/recyclerview/widget/d0;->b:Lb0;

    return-void
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v0, p1}, Le0;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v1, p1}, Le0;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/d0$a;

    if-eqz v1, :cond_4

    .line 3
    iget v2, v1, Landroidx/recyclerview/widget/d0$a;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    .line 4
    iput v0, v1, Landroidx/recyclerview/widget/d0$a;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 5
    iget-object p2, v1, Landroidx/recyclerview/widget/d0$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 6
    iget-object p2, v1, Landroidx/recyclerview/widget/d0$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v0, p1}, Le0;->j(I)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Landroidx/recyclerview/widget/d0$a;->b(Landroidx/recyclerview/widget/d0$a;)V

    :cond_2
    return-object p2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/d0$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroidx/recyclerview/widget/d0$a;->a()Landroidx/recyclerview/widget/d0$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v1, p1, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/d0$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroidx/recyclerview/widget/d0$a;->a()Landroidx/recyclerview/widget/d0$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v1, p1, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/d0$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 7
    iget p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/d0$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroidx/recyclerview/widget/d0$a;->a()Landroidx/recyclerview/widget/d0$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v1, p1, v0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/d0$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 7
    iget p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Landroidx/recyclerview/widget/d0$a;->a:I

    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/d0$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Landroidx/recyclerview/widget/d0$a;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/d0;->e(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;

    move-result-object p1

    return-object p1
.end method

.method g(Landroidx/recyclerview/widget/RecyclerView$b0;)Landroidx/recyclerview/widget/RecyclerView$l$c;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/d0;->e(Landroidx/recyclerview/widget/RecyclerView$b0;I)Landroidx/recyclerview/widget/RecyclerView$l$c;

    move-result-object p1

    return-object p1
.end method

.method h(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/d0$a;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/d0$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroidx/recyclerview/widget/d0$a;->a:I

    return-void
.end method

.method i(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->b:Lb0;

    invoke-virtual {v0}, Lb0;->m()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->b:Lb0;

    invoke-virtual {v1, v0}, Lb0;->n(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->b:Lb0;

    invoke-virtual {v1, v0}, Lb0;->l(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/d0;->a:Le0;

    invoke-virtual {v0, p1}, Le0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/d0$a;

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1}, Landroidx/recyclerview/widget/d0$a;->b(Landroidx/recyclerview/widget/d0$a;)V

    :cond_2
    return-void
.end method
