.class Lcom/google/android/material/datepicker/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lcom/google/android/material/datepicker/o;

.field final synthetic c:Lcom/google/android/material/datepicker/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/e;

    iput-object p2, p0, Lcom/google/android/material/datepicker/j;->b:Lcom/google/android/material/datepicker/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/e;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->w1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/e;

    invoke-static {v0}, Lcom/google/android/material/datepicker/e;->l1(Lcom/google/android/material/datepicker/e;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/e;

    iget-object v1, p0, Lcom/google/android/material/datepicker/j;->b:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/o;->A(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/e;->y1(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
