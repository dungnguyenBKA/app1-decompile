.class Ldm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldm;


# direct methods
.method constructor <init>(Ldm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldm$a;->b:Ldm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldm$a;->b:Ldm;

    invoke-static {v0}, Ldm;->a(Ldm;)Ldm$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ldm$a;->b:Ldm;

    invoke-static {v0}, Ldm;->b(Ldm;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ldm$a;->b:Ldm;

    invoke-static {v1}, Ldm;->a(Ldm;)Ldm$d;

    move-result-object v1

    iget-object v2, p0, Ldm$a;->b:Ldm;

    invoke-static {v2}, Ldm;->b(Ldm;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v0, v3, p1}, Ldm$d;->l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
