.class Lcom/google/android/material/datepicker/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/datepicker/t;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/t;

    iput p2, p0, Lcom/google/android/material/datepicker/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/s;->b:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/t;

    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->z(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/e;->u1()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->b(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/t;

    invoke-static {v0}, Lcom/google/android/material/datepicker/t;->z(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/e;->y1(Lcom/google/android/material/datepicker/Month;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/t;

    invoke-static {p1}, Lcom/google/android/material/datepicker/t;->z(Lcom/google/android/material/datepicker/t;)Lcom/google/android/material/datepicker/e;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/e$e;->b:Lcom/google/android/material/datepicker/e$e;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/e;->z1(Lcom/google/android/material/datepicker/e$e;)V

    return-void
.end method
