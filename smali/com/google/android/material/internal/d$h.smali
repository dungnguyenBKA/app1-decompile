.class Lcom/google/android/material/internal/d$h;
.super Landroidx/recyclerview/widget/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic f:Lcom/google/android/material/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/d;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/d$h;->f:Lcom/google/android/material/internal/d;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;Ln3;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/y;->e(Landroid/view/View;Ln3;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/d$h;->f:Lcom/google/android/material/internal/d;

    iget-object p1, p1, Lcom/google/android/material/internal/d;->f:Lcom/google/android/material/internal/d$c;

    .line 3
    iget-object v0, p1, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v3, p1, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v3, v3, Lcom/google/android/material/internal/d;->f:Lcom/google/android/material/internal/d$c;

    invoke-virtual {v3}, Lcom/google/android/material/internal/d$c;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p1, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v3, v3, Lcom/google/android/material/internal/d;->f:Lcom/google/android/material/internal/d$c;

    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/d$c;->d(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0, v1, v1}, Ln3$b;->a(IIZ)Ln3$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3;->T(Ljava/lang/Object;)V

    return-void
.end method
