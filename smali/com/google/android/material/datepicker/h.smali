.class Lcom/google/android/material/datepicker/h;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/o;

.field final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field final synthetic c:Lcom/google/android/material/datepicker/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/e;

    iput-object p2, p0, Lcom/google/android/material/datepicker/h;->a:Lcom/google/android/material/datepicker/o;

    iput-object p3, p0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-gez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/e;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->w1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x1()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/e;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->w1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->A1()I

    move-result p1

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/h;->c:Lcom/google/android/material/datepicker/e;

    iget-object p3, p0, Lcom/google/android/material/datepicker/h;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/o;->A(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/e;->r1(Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    .line 4
    iget-object p2, p0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lcom/google/android/material/datepicker/h;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/o;->B(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
