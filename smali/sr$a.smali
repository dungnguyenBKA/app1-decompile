.class public final Lsr$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsr;->p(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lsr;

.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView$o;

.field final synthetic e:Landroidx/recyclerview/widget/GridLayoutManager$b;


# direct methods
.method constructor <init>(Lsr;Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/GridLayoutManager$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            "Landroidx/recyclerview/widget/GridLayoutManager$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsr$a;->c:Lsr;

    iput-object p2, p0, Lsr$a;->d:Landroidx/recyclerview/widget/RecyclerView$o;

    iput-object p3, p0, Lsr$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lsr$a;->c:Lsr;

    invoke-virtual {v0, p1}, Lsr;->d(I)I

    move-result v0

    const v1, 0x10000111

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lsr$a;->c:Lsr;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const v1, 0x10000333

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lsr$a;->c:Lsr;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object v1, p0, Lsr$a;->c:Lsr;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lsr$a;->c:Lsr;

    invoke-virtual {v1, v0}, Lsr;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lsr$a;->d:Landroidx/recyclerview/widget/RecyclerView$o;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a2()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsr$a;->e:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->c(I)I

    move-result p1

    :goto_0
    return p1
.end method
