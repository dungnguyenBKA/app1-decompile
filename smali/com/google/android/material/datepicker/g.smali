.class Lcom/google/android/material/datepicker/g;
.super Ln2;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/material/datepicker/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/e;

    invoke-direct {p0}, Ln2;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;Ln3;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/e;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/datepicker/e;->q1(Lcom/google/android/material/datepicker/e;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/e;

    const v0, 0x7f0e00bd

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/e;

    const v0, 0x7f0e00bb

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p2, p1}, Ln3;->c0(Ljava/lang/CharSequence;)V

    return-void
.end method
