.class public final Lqr;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lqr;->b:I

    iput-object p2, p0, Lqr;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqr;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lqr;->b:I

    const-string v1, "v"

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1
    iget-object v0, p0, Lqr;->d:Ljava/lang/Object;

    check-cast v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lqr;->c:Ljava/lang/Object;

    check-cast v0, Lsr;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lqr;->c:Ljava/lang/Object;

    check-cast v0, Lsr;

    invoke-static {p1, v1}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Lgg0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    iget-object v0, p0, Lqr;->d:Ljava/lang/Object;

    check-cast v0, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v2, p0, Lqr;->c:Ljava/lang/Object;

    check-cast v2, Lsr;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x0

    .line 8
    iget-object v2, p0, Lqr;->c:Ljava/lang/Object;

    check-cast v2, Lsr;

    invoke-static {p1, v1}, Lgg0;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Lsr;->I(Landroid/view/View;I)V

    :goto_1
    return-void
.end method
