.class Lcom/google/android/material/datepicker/k;
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
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/e;

    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->b:Lcom/google/android/material/datepicker/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/e;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/e;->w1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->A1()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->c:Lcom/google/android/material/datepicker/e;

    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->b:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/o;->A(I)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/e;->y1(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void
.end method
